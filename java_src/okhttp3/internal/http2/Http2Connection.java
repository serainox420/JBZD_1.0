package okhttp3.internal.http2;

import com.google.android.gms.games.request.GameRequest;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.Protocol;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;
import okio.ByteString;
import okio.c;
import okio.d;
import okio.e;
import okio.k;
/* loaded from: classes3.dex */
public final class Http2Connection implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    static final ExecutorService executor;
    long bytesLeftInWriteWindow;
    final boolean client;
    final String hostname;
    int lastGoodStreamId;
    final Listener listener;
    private int nextPingId;
    int nextStreamId;
    private Map<Integer, Ping> pings;
    private final ExecutorService pushExecutor;
    final PushObserver pushObserver;
    final ReaderRunnable readerRunnable;
    boolean shutdown;
    final Socket socket;
    final Http2Writer writer;
    final Map<Integer, Http2Stream> streams = new LinkedHashMap();
    long unacknowledgedBytesRead = 0;
    Settings okHttpSettings = new Settings();
    final Settings peerSettings = new Settings();
    boolean receivedInitialPeerSettings = false;
    final Set<Integer> currentPushRequests = new LinkedHashSet();

    static {
        $assertionsDisabled = !Http2Connection.class.desiredAssertionStatus();
        executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp Http2Connection", true));
    }

    Http2Connection(Builder builder) {
        int i = 2;
        this.pushObserver = builder.pushObserver;
        this.client = builder.client;
        this.listener = builder.listener;
        this.nextStreamId = builder.client ? 1 : 2;
        if (builder.client) {
            this.nextStreamId += 2;
        }
        this.nextPingId = builder.client ? 1 : i;
        if (builder.client) {
            this.okHttpSettings.set(7, OKHTTP_CLIENT_WINDOW_SIZE);
        }
        this.hostname = builder.hostname;
        this.pushExecutor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(Util.format("OkHttp %s Push Observer", this.hostname), true));
        this.peerSettings.set(7, GameRequest.TYPE_ALL);
        this.peerSettings.set(5, 16384);
        this.bytesLeftInWriteWindow = this.peerSettings.getInitialWindowSize();
        this.socket = builder.socket;
        this.writer = new Http2Writer(builder.sink, this.client);
        this.readerRunnable = new ReaderRunnable(new Http2Reader(builder.source, this.client));
    }

    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    public synchronized int openStreamCount() {
        return this.streams.size();
    }

    synchronized Http2Stream getStream(int i) {
        return this.streams.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Http2Stream removeStream(int i) {
        Http2Stream remove;
        remove = this.streams.remove(Integer.valueOf(i));
        notifyAll();
        return remove;
    }

    public synchronized int maxConcurrentStreams() {
        return this.peerSettings.getMaxConcurrentStreams(Integer.MAX_VALUE);
    }

    public Http2Stream pushStream(int i, List<Header> list, boolean z) throws IOException {
        if (this.client) {
            throw new IllegalStateException("Client cannot push requests.");
        }
        return newStream(i, list, z);
    }

    public Http2Stream newStream(List<Header> list, boolean z) throws IOException {
        return newStream(0, list, z);
    }

    private Http2Stream newStream(int i, List<Header> list, boolean z) throws IOException {
        int i2;
        Http2Stream http2Stream;
        boolean z2 = false;
        boolean z3 = !z;
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    throw new ConnectionShutdownException();
                }
                i2 = this.nextStreamId;
                this.nextStreamId += 2;
                http2Stream = new Http2Stream(i2, this, z3, false, list);
                if (!z || this.bytesLeftInWriteWindow == 0 || http2Stream.bytesLeftInWriteWindow == 0) {
                    z2 = true;
                }
                if (http2Stream.isOpen()) {
                    this.streams.put(Integer.valueOf(i2), http2Stream);
                }
            }
            if (i == 0) {
                this.writer.synStream(z3, i2, i, list);
            } else if (this.client) {
                throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
            } else {
                this.writer.pushPromise(i, i2, list);
            }
        }
        if (z2) {
            this.writer.flush();
        }
        return http2Stream;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeSynReply(int i, boolean z, List<Header> list) throws IOException {
        this.writer.synReply(z, i, list);
    }

    public void writeData(int i, boolean z, c cVar, long j) throws IOException {
        int min;
        if (j == 0) {
            this.writer.data(z, i, cVar, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (this.bytesLeftInWriteWindow <= 0) {
                    try {
                        if (!this.streams.containsKey(Integer.valueOf(i))) {
                            throw new IOException("stream closed");
                        }
                        wait();
                    } catch (InterruptedException e) {
                        throw new InterruptedIOException();
                    }
                }
                min = Math.min((int) Math.min(j, this.bytesLeftInWriteWindow), this.writer.maxDataLength());
                this.bytesLeftInWriteWindow -= min;
            }
            j -= min;
            this.writer.data(z && j == 0, i, cVar, min);
        }
    }

    void addBytesToWriteWindow(long j) {
        this.bytesLeftInWriteWindow += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeSynResetLater(final int i, final ErrorCode errorCode) {
        executor.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.1
            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                try {
                    Http2Connection.this.writeSynReset(i, errorCode);
                } catch (IOException e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeSynReset(int i, ErrorCode errorCode) throws IOException {
        this.writer.rstStream(i, errorCode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeWindowUpdateLater(final int i, final long j) {
        executor.execute(new NamedRunnable("OkHttp Window Update %s stream %d", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.2
            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                try {
                    Http2Connection.this.writer.windowUpdate(i, j);
                } catch (IOException e) {
                }
            }
        });
    }

    public Ping ping() throws IOException {
        int i;
        Ping ping = new Ping();
        synchronized (this) {
            if (this.shutdown) {
                throw new ConnectionShutdownException();
            }
            i = this.nextPingId;
            this.nextPingId += 2;
            if (this.pings == null) {
                this.pings = new LinkedHashMap();
            }
            this.pings.put(Integer.valueOf(i), ping);
        }
        writePing(false, i, 1330343787, ping);
        return ping;
    }

    void writePingLater(final boolean z, final int i, final int i2, final Ping ping) {
        executor.execute(new NamedRunnable("OkHttp %s ping %08x%08x", new Object[]{this.hostname, Integer.valueOf(i), Integer.valueOf(i2)}) { // from class: okhttp3.internal.http2.Http2Connection.3
            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                try {
                    Http2Connection.this.writePing(z, i, i2, ping);
                } catch (IOException e) {
                }
            }
        });
    }

    void writePing(boolean z, int i, int i2, Ping ping) throws IOException {
        synchronized (this.writer) {
            if (ping != null) {
                ping.send();
            }
            this.writer.ping(z, i, i2);
        }
    }

    synchronized Ping removePing(int i) {
        return this.pings != null ? this.pings.remove(Integer.valueOf(i)) : null;
    }

    public void flush() throws IOException {
        this.writer.flush();
    }

    public void shutdown(ErrorCode errorCode) throws IOException {
        synchronized (this.writer) {
            synchronized (this) {
                if (!this.shutdown) {
                    this.shutdown = true;
                    this.writer.goAway(this.lastGoodStreamId, errorCode, Util.EMPTY_BYTE_ARRAY);
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    void close(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        IOException iOException;
        Http2Stream[] http2StreamArr;
        Ping[] pingArr;
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            try {
                shutdown(errorCode);
                iOException = null;
            } catch (IOException e) {
                iOException = e;
            }
            synchronized (this) {
                if (!this.streams.isEmpty()) {
                    this.streams.clear();
                    http2StreamArr = (Http2Stream[]) this.streams.values().toArray(new Http2Stream[this.streams.size()]);
                } else {
                    http2StreamArr = null;
                }
                if (this.pings != null) {
                    this.pings = null;
                    pingArr = (Ping[]) this.pings.values().toArray(new Ping[this.pings.size()]);
                } else {
                    pingArr = null;
                }
            }
            if (http2StreamArr != null) {
                IOException iOException2 = iOException;
                for (Http2Stream http2Stream : http2StreamArr) {
                    try {
                        http2Stream.close(errorCode2);
                    } catch (IOException e2) {
                        if (iOException2 != null) {
                            iOException2 = e2;
                        }
                    }
                }
                iOException = iOException2;
            }
            if (pingArr != null) {
                for (Ping ping : pingArr) {
                    ping.cancel();
                }
            }
            try {
                this.writer.close();
                e = iOException;
            } catch (IOException e3) {
                e = e3;
                if (iOException != null) {
                    e = iOException;
                }
            }
            try {
                this.socket.close();
            } catch (IOException e4) {
                e = e4;
            }
            if (e == null) {
                return;
            }
            throw e;
        }
        throw new AssertionError();
    }

    public void start() throws IOException {
        start(true);
    }

    void start(boolean z) throws IOException {
        if (z) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            int initialWindowSize = this.okHttpSettings.getInitialWindowSize();
            if (initialWindowSize != 65535) {
                this.writer.windowUpdate(0, initialWindowSize - GameRequest.TYPE_ALL);
            }
        }
        new Thread(this.readerRunnable).start();
    }

    public void setSettings(Settings settings) throws IOException {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    throw new ConnectionShutdownException();
                }
                this.okHttpSettings.merge(settings);
                this.writer.settings(settings);
            }
        }
    }

    public synchronized boolean isShutdown() {
        return this.shutdown;
    }

    /* loaded from: classes3.dex */
    public static class Builder {
        boolean client;
        String hostname;
        Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        PushObserver pushObserver = PushObserver.CANCEL;
        d sink;
        Socket socket;
        e source;

        public Builder(boolean z) {
            this.client = z;
        }

        public Builder socket(Socket socket) throws IOException {
            return socket(socket, ((InetSocketAddress) socket.getRemoteSocketAddress()).getHostName(), k.a(k.b(socket)), k.a(k.a(socket)));
        }

        public Builder socket(Socket socket, String str, e eVar, d dVar) {
            this.socket = socket;
            this.hostname = str;
            this.source = eVar;
            this.sink = dVar;
            return this;
        }

        public Builder listener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public Builder pushObserver(PushObserver pushObserver) {
            this.pushObserver = pushObserver;
            return this;
        }

        public Http2Connection build() throws IOException {
            return new Http2Connection(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class ReaderRunnable extends NamedRunnable implements Http2Reader.Handler {
        final Http2Reader reader;

        ReaderRunnable(Http2Reader http2Reader) {
            super("OkHttp %s", Http2Connection.this.hostname);
            this.reader = http2Reader;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r0v10, types: [java.io.Closeable, okhttp3.internal.http2.Http2Reader] */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v8, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r2v0, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r2v2, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r2v3 */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r2v5 */
        /* JADX WARN: Type inference failed for: r2v6, types: [okhttp3.internal.http2.Http2Connection] */
        /* JADX WARN: Type inference failed for: r3v0, types: [okhttp3.internal.http2.Http2Connection] */
        @Override // okhttp3.internal.NamedRunnable
        protected void execute() {
            ErrorCode errorCode;
            ?? r0 = ErrorCode.INTERNAL_ERROR;
            ?? r2 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    this.reader.readConnectionPreface(this);
                    do {
                    } while (this.reader.nextFrame(false, this));
                    r0 = ErrorCode.NO_ERROR;
                    ErrorCode errorCode2 = ErrorCode.CANCEL;
                    try {
                        r2 = Http2Connection.this;
                        r2.close(r0, errorCode2);
                    } catch (IOException e) {
                    }
                    r0 = this.reader;
                    Util.closeQuietly((Closeable) r0);
                } catch (Throwable th) {
                    errorCode = r0;
                    th = th;
                    try {
                        Http2Connection.this.close(errorCode, r2);
                    } catch (IOException e2) {
                    }
                    Util.closeQuietly(this.reader);
                    throw th;
                }
            } catch (IOException e3) {
                errorCode = ErrorCode.PROTOCOL_ERROR;
                try {
                    try {
                        Http2Connection.this.close(errorCode, ErrorCode.PROTOCOL_ERROR);
                    } catch (IOException e4) {
                    }
                    Util.closeQuietly(this.reader);
                } catch (Throwable th2) {
                    th = th2;
                    Http2Connection.this.close(errorCode, r2);
                    Util.closeQuietly(this.reader);
                    throw th;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean z, int i, e eVar, int i2) throws IOException {
            if (Http2Connection.this.pushedStream(i)) {
                Http2Connection.this.pushDataLater(i, eVar, i2, z);
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i);
            if (stream == null) {
                Http2Connection.this.writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                eVar.h(i2);
                return;
            }
            stream.receiveData(eVar, i2);
            if (z) {
                stream.receiveFin();
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean z, int i, int i2, List<Header> list) {
            if (Http2Connection.this.pushedStream(i)) {
                Http2Connection.this.pushHeadersLater(i, list, z);
                return;
            }
            synchronized (Http2Connection.this) {
                if (!Http2Connection.this.shutdown) {
                    Http2Stream stream = Http2Connection.this.getStream(i);
                    if (stream == null) {
                        if (i > Http2Connection.this.lastGoodStreamId) {
                            if (i % 2 != Http2Connection.this.nextStreamId % 2) {
                                final Http2Stream http2Stream = new Http2Stream(i, Http2Connection.this, false, z, list);
                                Http2Connection.this.lastGoodStreamId = i;
                                Http2Connection.this.streams.put(Integer.valueOf(i), http2Stream);
                                Http2Connection.executor.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{Http2Connection.this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.1
                                    @Override // okhttp3.internal.NamedRunnable
                                    public void execute() {
                                        try {
                                            Http2Connection.this.listener.onStream(http2Stream);
                                        } catch (IOException e) {
                                            Platform.get().log(4, "Http2Connection.Listener failure for " + Http2Connection.this.hostname, e);
                                            try {
                                                http2Stream.close(ErrorCode.PROTOCOL_ERROR);
                                            } catch (IOException e2) {
                                            }
                                        }
                                    }
                                });
                            }
                        }
                    } else {
                        stream.receiveHeaders(list);
                        if (z) {
                            stream.receiveFin();
                        }
                    }
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int i, ErrorCode errorCode) {
            if (Http2Connection.this.pushedStream(i)) {
                Http2Connection.this.pushResetLater(i, errorCode);
                return;
            }
            Http2Stream removeStream = Http2Connection.this.removeStream(i);
            if (removeStream != null) {
                removeStream.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(boolean z, Settings settings) {
            Http2Stream[] http2StreamArr;
            long j;
            synchronized (Http2Connection.this) {
                int initialWindowSize = Http2Connection.this.peerSettings.getInitialWindowSize();
                if (z) {
                    Http2Connection.this.peerSettings.clear();
                }
                Http2Connection.this.peerSettings.merge(settings);
                applyAndAckSettings(settings);
                int initialWindowSize2 = Http2Connection.this.peerSettings.getInitialWindowSize();
                if (initialWindowSize2 == -1 || initialWindowSize2 == initialWindowSize) {
                    http2StreamArr = null;
                    j = 0;
                } else {
                    long j2 = initialWindowSize2 - initialWindowSize;
                    if (!Http2Connection.this.receivedInitialPeerSettings) {
                        Http2Connection.this.addBytesToWriteWindow(j2);
                        Http2Connection.this.receivedInitialPeerSettings = true;
                    }
                    if (Http2Connection.this.streams.isEmpty()) {
                        j = j2;
                        http2StreamArr = null;
                    } else {
                        j = j2;
                        http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                    }
                }
                Http2Connection.executor.execute(new NamedRunnable("OkHttp %s settings", Http2Connection.this.hostname) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.2
                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        Http2Connection.this.listener.onSettings(Http2Connection.this);
                    }
                });
            }
            if (http2StreamArr != null && j != 0) {
                for (Http2Stream http2Stream : http2StreamArr) {
                    synchronized (http2Stream) {
                        http2Stream.addBytesToWriteWindow(j);
                    }
                }
            }
        }

        private void applyAndAckSettings(final Settings settings) {
            Http2Connection.executor.execute(new NamedRunnable("OkHttp %s ACK Settings", new Object[]{Http2Connection.this.hostname}) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.3
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        Http2Connection.this.writer.applyAndAckSettings(settings);
                    } catch (IOException e) {
                    }
                }
            });
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z, int i, int i2) {
            if (z) {
                Ping removePing = Http2Connection.this.removePing(i);
                if (removePing != null) {
                    removePing.receive();
                    return;
                }
                return;
            }
            Http2Connection.this.writePingLater(true, i, i2, null);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i, ErrorCode errorCode, ByteString byteString) {
            Http2Stream[] http2StreamArr;
            if (byteString.size() > 0) {
            }
            synchronized (Http2Connection.this) {
                http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                Http2Connection.this.shutdown = true;
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                if (http2Stream.getId() > i && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    Http2Connection.this.removeStream(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (Http2Connection.this) {
                    Http2Connection.this.bytesLeftInWriteWindow += j;
                    Http2Connection.this.notifyAll();
                }
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j);
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i, int i2, int i3, boolean z) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i, int i2, List<Header> list) {
            Http2Connection.this.pushRequestLater(i2, list);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j) {
        }
    }

    boolean pushedStream(int i) {
        return i != 0 && (i & 1) == 0;
    }

    void pushRequestLater(final int i, final List<Header> list) {
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i))) {
                writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i));
            this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Request[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.4
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    if (Http2Connection.this.pushObserver.onRequest(i, list)) {
                        try {
                            Http2Connection.this.writer.rstStream(i, ErrorCode.CANCEL);
                            synchronized (Http2Connection.this) {
                                Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i));
                            }
                        } catch (IOException e) {
                        }
                    }
                }
            });
        }
    }

    void pushHeadersLater(final int i, final List<Header> list, final boolean z) {
        this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Headers[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.5
            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                boolean onHeaders = Http2Connection.this.pushObserver.onHeaders(i, list, z);
                if (onHeaders) {
                    try {
                        Http2Connection.this.writer.rstStream(i, ErrorCode.CANCEL);
                    } catch (IOException e) {
                        return;
                    }
                }
                if (onHeaders || z) {
                    synchronized (Http2Connection.this) {
                        Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i));
                    }
                }
            }
        });
    }

    void pushDataLater(final int i, e eVar, final int i2, final boolean z) throws IOException {
        final c cVar = new c();
        eVar.a(i2);
        eVar.read(cVar, i2);
        if (cVar.a() != i2) {
            throw new IOException(cVar.a() + " != " + i2);
        }
        this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Data[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.6
            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                try {
                    boolean onData = Http2Connection.this.pushObserver.onData(i, cVar, i2, z);
                    if (onData) {
                        Http2Connection.this.writer.rstStream(i, ErrorCode.CANCEL);
                    }
                    if (onData || z) {
                        synchronized (Http2Connection.this) {
                            Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i));
                        }
                    }
                } catch (IOException e) {
                }
            }
        });
    }

    void pushResetLater(final int i, final ErrorCode errorCode) {
        this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Reset[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.7
            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                Http2Connection.this.pushObserver.onReset(i, errorCode);
                synchronized (Http2Connection.this) {
                    Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i));
                }
            }
        });
    }

    /* loaded from: classes3.dex */
    public static abstract class Listener {
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection.Listener.1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(Http2Stream http2Stream) throws IOException {
                http2Stream.close(ErrorCode.REFUSED_STREAM);
            }
        };

        public abstract void onStream(Http2Stream http2Stream) throws IOException;

        public void onSettings(Http2Connection http2Connection) {
        }
    }
}
