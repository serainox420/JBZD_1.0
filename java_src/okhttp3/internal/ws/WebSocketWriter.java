package okhttp3.internal.ws;

import com.facebook.internal.Utility;
import java.io.IOException;
import java.util.Random;
import okio.ByteString;
import okio.c;
import okio.d;
import okio.q;
import okio.s;
/* loaded from: classes3.dex */
final class WebSocketWriter {
    static final /* synthetic */ boolean $assertionsDisabled;
    boolean activeWriter;
    final c buffer = new c();
    final FrameSink frameSink = new FrameSink();
    final boolean isClient;
    final byte[] maskBuffer;
    final byte[] maskKey;
    final Random random;
    final d sink;
    boolean writerClosed;

    static {
        $assertionsDisabled = !WebSocketWriter.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebSocketWriter(boolean z, d dVar, Random random) {
        byte[] bArr = null;
        if (dVar == null) {
            throw new NullPointerException("sink == null");
        }
        if (random == null) {
            throw new NullPointerException("random == null");
        }
        this.isClient = z;
        this.sink = dVar;
        this.random = random;
        this.maskKey = z ? new byte[4] : null;
        this.maskBuffer = z ? new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE] : bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writePing(ByteString byteString) throws IOException {
        synchronized (this) {
            writeControlFrameSynchronized(9, byteString);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writePong(ByteString byteString) throws IOException {
        synchronized (this) {
            writeControlFrameSynchronized(10, byteString);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeClose(int i, ByteString byteString) throws IOException {
        ByteString byteString2 = ByteString.EMPTY;
        if (i != 0 || byteString != null) {
            if (i != 0) {
                WebSocketProtocol.validateCloseCode(i);
            }
            c cVar = new c();
            cVar.h(i);
            if (byteString != null) {
                cVar.b(byteString);
            }
            byteString2 = cVar.p();
        }
        synchronized (this) {
            writeControlFrameSynchronized(8, byteString2);
            this.writerClosed = true;
        }
    }

    private void writeControlFrameSynchronized(int i, ByteString byteString) throws IOException {
        if ($assertionsDisabled || Thread.holdsLock(this)) {
            if (this.writerClosed) {
                throw new IOException("closed");
            }
            int size = byteString.size();
            if (size > 125) {
                throw new IllegalArgumentException("Payload size must be less than or equal to 125");
            }
            this.sink.i(i | 128);
            if (this.isClient) {
                this.sink.i(size | 128);
                this.random.nextBytes(this.maskKey);
                this.sink.c(this.maskKey);
                byte[] byteArray = byteString.toByteArray();
                WebSocketProtocol.toggleMask(byteArray, byteArray.length, this.maskKey, 0L);
                this.sink.c(byteArray);
            } else {
                this.sink.i(size);
                this.sink.b(byteString);
            }
            this.sink.flush();
            return;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q newMessageSink(int i, long j) {
        if (this.activeWriter) {
            throw new IllegalStateException("Another message writer is active. Did you call close()?");
        }
        this.activeWriter = true;
        this.frameSink.formatOpcode = i;
        this.frameSink.contentLength = j;
        this.frameSink.isFirstFrame = true;
        this.frameSink.closed = false;
        return this.frameSink;
    }

    void writeMessageFrameSynchronized(int i, long j, boolean z, boolean z2) throws IOException {
        if ($assertionsDisabled || Thread.holdsLock(this)) {
            if (this.writerClosed) {
                throw new IOException("closed");
            }
            int i2 = z ? i : 0;
            if (z2) {
                i2 |= 128;
            }
            this.sink.i(i2);
            int i3 = this.isClient ? 128 : 0;
            if (j <= 125) {
                this.sink.i(i3 | ((int) j));
            } else if (j <= 65535) {
                this.sink.i(i3 | 126);
                this.sink.h((int) j);
            } else {
                this.sink.i(i3 | 127);
                this.sink.n(j);
            }
            if (this.isClient) {
                this.random.nextBytes(this.maskKey);
                this.sink.c(this.maskKey);
                long j2 = 0;
                while (j2 < j) {
                    int a2 = this.buffer.a(this.maskBuffer, 0, (int) Math.min(j, this.maskBuffer.length));
                    if (a2 == -1) {
                        throw new AssertionError();
                    }
                    WebSocketProtocol.toggleMask(this.maskBuffer, a2, this.maskKey, j2);
                    this.sink.c(this.maskBuffer, 0, a2);
                    j2 += a2;
                }
            } else {
                this.sink.write(this.buffer, j);
            }
            this.sink.d();
            return;
        }
        throw new AssertionError();
    }

    /* loaded from: classes3.dex */
    final class FrameSink implements q {
        boolean closed;
        long contentLength;
        int formatOpcode;
        boolean isFirstFrame;

        FrameSink() {
        }

        @Override // okio.q
        public void write(c cVar, long j) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            WebSocketWriter.this.buffer.write(cVar, j);
            boolean z = this.isFirstFrame && this.contentLength != -1 && WebSocketWriter.this.buffer.a() > this.contentLength - 8192;
            long g = WebSocketWriter.this.buffer.g();
            if (g > 0 && !z) {
                synchronized (WebSocketWriter.this) {
                    WebSocketWriter.this.writeMessageFrameSynchronized(this.formatOpcode, g, this.isFirstFrame, false);
                }
                this.isFirstFrame = false;
            }
        }

        @Override // okio.q, java.io.Flushable
        public void flush() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            synchronized (WebSocketWriter.this) {
                WebSocketWriter.this.writeMessageFrameSynchronized(this.formatOpcode, WebSocketWriter.this.buffer.a(), this.isFirstFrame, false);
            }
            this.isFirstFrame = false;
        }

        @Override // okio.q
        public s timeout() {
            return WebSocketWriter.this.sink.timeout();
        }

        @Override // okio.q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            synchronized (WebSocketWriter.this) {
                WebSocketWriter.this.writeMessageFrameSynchronized(this.formatOpcode, WebSocketWriter.this.buffer.a(), this.isFirstFrame, true);
            }
            this.closed = true;
            WebSocketWriter.this.activeWriter = false;
        }
    }
}
