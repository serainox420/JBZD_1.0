package okhttp3.internal.http2;

import com.flurry.android.Constants;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.ByteString;
import okio.c;
import okio.e;
import okio.r;
import okio.s;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class Http2Reader implements Closeable {
    static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private final ContinuationSource continuation;
    final Hpack.Reader hpackReader;
    private final e source;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface Handler {
        void ackSettings();

        void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j);

        void data(boolean z, int i, e eVar, int i2) throws IOException;

        void goAway(int i, ErrorCode errorCode, ByteString byteString);

        void headers(boolean z, int i, int i2, List<Header> list);

        void ping(boolean z, int i, int i2);

        void priority(int i, int i2, int i3, boolean z);

        void pushPromise(int i, int i2, List<Header> list) throws IOException;

        void rstStream(int i, ErrorCode errorCode);

        void settings(boolean z, Settings settings);

        void windowUpdate(int i, long j);
    }

    public Http2Reader(e eVar, boolean z) {
        this.source = eVar;
        this.client = z;
        this.continuation = new ContinuationSource(this.source);
        this.hpackReader = new Hpack.Reader(4096, this.continuation);
    }

    public void readConnectionPreface(Handler handler) throws IOException {
        if (this.client) {
            if (!nextFrame(true, handler)) {
                throw Http2.ioException("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        ByteString d = this.source.d(Http2.CONNECTION_PREFACE.size());
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Util.format("<< CONNECTION %s", d.hex()));
        }
        if (!Http2.CONNECTION_PREFACE.equals(d)) {
            throw Http2.ioException("Expected a connection header but was %s", d.utf8());
        }
    }

    public boolean nextFrame(boolean z, Handler handler) throws IOException {
        try {
            this.source.a(9L);
            int readMedium = readMedium(this.source);
            if (readMedium < 0 || readMedium > 16384) {
                throw Http2.ioException("FRAME_SIZE_ERROR: %s", Integer.valueOf(readMedium));
            }
            byte h = (byte) (this.source.h() & Constants.UNKNOWN);
            if (z && h != 4) {
                throw Http2.ioException("Expected a SETTINGS frame but was %s", Byte.valueOf(h));
            }
            byte h2 = (byte) (this.source.h() & Constants.UNKNOWN);
            int j = this.source.j() & Integer.MAX_VALUE;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Http2.frameLog(true, j, readMedium, h, h2));
            }
            switch (h) {
                case 0:
                    readData(handler, readMedium, h2, j);
                    return true;
                case 1:
                    readHeaders(handler, readMedium, h2, j);
                    return true;
                case 2:
                    readPriority(handler, readMedium, h2, j);
                    return true;
                case 3:
                    readRstStream(handler, readMedium, h2, j);
                    return true;
                case 4:
                    readSettings(handler, readMedium, h2, j);
                    return true;
                case 5:
                    readPushPromise(handler, readMedium, h2, j);
                    return true;
                case 6:
                    readPing(handler, readMedium, h2, j);
                    return true;
                case 7:
                    readGoAway(handler, readMedium, h2, j);
                    return true;
                case 8:
                    readWindowUpdate(handler, readMedium, h2, j);
                    return true;
                default:
                    this.source.h(readMedium);
                    return true;
            }
        } catch (IOException e) {
            return false;
        }
    }

    private void readHeaders(Handler handler, int i, byte b, int i2) throws IOException {
        short s = 0;
        if (i2 == 0) {
            throw Http2.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z = (b & 1) != 0;
        if ((b & 8) != 0) {
            s = (short) (this.source.h() & Constants.UNKNOWN);
        }
        if ((b & 32) != 0) {
            readPriority(handler, i2);
            i -= 5;
        }
        handler.headers(z, i2, -1, readHeaderBlock(lengthWithoutPadding(i, b, s), s, b, i2));
    }

    private List<Header> readHeaderBlock(int i, short s, byte b, int i2) throws IOException {
        ContinuationSource continuationSource = this.continuation;
        this.continuation.left = i;
        continuationSource.length = i;
        this.continuation.padding = s;
        this.continuation.flags = b;
        this.continuation.streamId = i2;
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    private void readData(Handler handler, int i, byte b, int i2) throws IOException {
        boolean z = true;
        short s = 0;
        boolean z2 = (b & 1) != 0;
        if ((b & 32) == 0) {
            z = false;
        }
        if (z) {
            throw Http2.ioException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        if ((b & 8) != 0) {
            s = (short) (this.source.h() & Constants.UNKNOWN);
        }
        handler.data(z2, i2, this.source, lengthWithoutPadding(i, b, s));
        this.source.h(s);
    }

    private void readPriority(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 5) {
            throw Http2.ioException("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw Http2.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        readPriority(handler, i2);
    }

    private void readPriority(Handler handler, int i) throws IOException {
        int j = this.source.j();
        handler.priority(i, j & Integer.MAX_VALUE, (this.source.h() & Constants.UNKNOWN) + 1, (Integer.MIN_VALUE & j) != 0);
    }

    private void readRstStream(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 4) {
            throw Http2.ioException("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw Http2.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int j = this.source.j();
        ErrorCode fromHttp2 = ErrorCode.fromHttp2(j);
        if (fromHttp2 == null) {
            throw Http2.ioException("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(j));
        }
        handler.rstStream(i2, fromHttp2);
    }

    private void readSettings(Handler handler, int i, byte b, int i2) throws IOException {
        if (i2 != 0) {
            throw Http2.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b & 1) != 0) {
            if (i != 0) {
                throw Http2.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            handler.ackSettings();
        } else if (i % 6 != 0) {
            throw Http2.ioException("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
        } else {
            Settings settings = new Settings();
            for (int i3 = 0; i3 < i; i3 += 6) {
                short i4 = this.source.i();
                int j = this.source.j();
                switch (i4) {
                    case 2:
                        if (j != 0 && j != 1) {
                            throw Http2.ioException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        }
                        break;
                    case 3:
                        i4 = 4;
                        break;
                    case 4:
                        i4 = 7;
                        if (j < 0) {
                            throw Http2.ioException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        }
                        break;
                    case 5:
                        if (j < 16384 || j > 16777215) {
                            throw Http2.ioException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(j));
                        }
                        break;
                }
                settings.set(i4, j);
            }
            handler.settings(false, settings);
        }
    }

    private void readPushPromise(Handler handler, int i, byte b, int i2) throws IOException {
        short s = 0;
        if (i2 == 0) {
            throw Http2.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        if ((b & 8) != 0) {
            s = (short) (this.source.h() & Constants.UNKNOWN);
        }
        handler.pushPromise(i2, this.source.j() & Integer.MAX_VALUE, readHeaderBlock(lengthWithoutPadding(i - 4, b, s), s, b, i2));
    }

    private void readPing(Handler handler, int i, byte b, int i2) throws IOException {
        boolean z = true;
        if (i != 8) {
            throw Http2.ioException("TYPE_PING length != 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw Http2.ioException("TYPE_PING streamId != 0", new Object[0]);
        }
        int j = this.source.j();
        int j2 = this.source.j();
        if ((b & 1) == 0) {
            z = false;
        }
        handler.ping(z, j, j2);
    }

    private void readGoAway(Handler handler, int i, byte b, int i2) throws IOException {
        if (i < 8) {
            throw Http2.ioException("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw Http2.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int j = this.source.j();
        int j2 = this.source.j();
        int i3 = i - 8;
        ErrorCode fromHttp2 = ErrorCode.fromHttp2(j2);
        if (fromHttp2 == null) {
            throw Http2.ioException("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(j2));
        }
        ByteString byteString = ByteString.EMPTY;
        if (i3 > 0) {
            byteString = this.source.d(i3);
        }
        handler.goAway(j, fromHttp2, byteString);
    }

    private void readWindowUpdate(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 4) {
            throw Http2.ioException("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
        }
        long j = this.source.j() & 2147483647L;
        if (j == 0) {
            throw Http2.ioException("windowSizeIncrement was 0", Long.valueOf(j));
        }
        handler.windowUpdate(i2, j);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class ContinuationSource implements r {
        byte flags;
        int left;
        int length;
        short padding;
        private final e source;
        int streamId;

        public ContinuationSource(e eVar) {
            this.source = eVar;
        }

        @Override // okio.r
        public long read(c cVar, long j) throws IOException {
            while (this.left == 0) {
                this.source.h(this.padding);
                this.padding = (short) 0;
                if ((this.flags & 4) != 0) {
                    return -1L;
                }
                readContinuationHeader();
            }
            long read = this.source.read(cVar, Math.min(j, this.left));
            if (read != -1) {
                this.left = (int) (this.left - read);
                return read;
            }
            return -1L;
        }

        @Override // okio.r
        public s timeout() {
            return this.source.timeout();
        }

        @Override // okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        private void readContinuationHeader() throws IOException {
            int i = this.streamId;
            int readMedium = Http2Reader.readMedium(this.source);
            this.left = readMedium;
            this.length = readMedium;
            byte h = (byte) (this.source.h() & Constants.UNKNOWN);
            this.flags = (byte) (this.source.h() & Constants.UNKNOWN);
            if (Http2Reader.logger.isLoggable(Level.FINE)) {
                Http2Reader.logger.fine(Http2.frameLog(true, this.streamId, this.length, h, this.flags));
            }
            this.streamId = this.source.j() & Integer.MAX_VALUE;
            if (h != 9) {
                throw Http2.ioException("%s != TYPE_CONTINUATION", Byte.valueOf(h));
            }
            if (this.streamId == i) {
                return;
            }
            throw Http2.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
        }
    }

    static int readMedium(e eVar) throws IOException {
        return ((eVar.h() & Constants.UNKNOWN) << 16) | ((eVar.h() & Constants.UNKNOWN) << 8) | (eVar.h() & Constants.UNKNOWN);
    }

    static int lengthWithoutPadding(int i, byte b, short s) throws IOException {
        if ((b & 8) != 0) {
            i--;
        }
        if (s > i) {
            throw Http2.ioException("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
        }
        return (short) (i - s);
    }
}
