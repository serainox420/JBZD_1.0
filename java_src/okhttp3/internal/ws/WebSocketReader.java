package okhttp3.internal.ws;

import com.facebook.internal.Utility;
import com.flurry.android.Constants;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import okio.c;
import okio.e;
/* loaded from: classes3.dex */
final class WebSocketReader {
    boolean closed;
    long frameBytesRead;
    final FrameCallback frameCallback;
    long frameLength;
    final boolean isClient;
    boolean isControlFrame;
    boolean isFinalFrame;
    boolean isMasked;
    int opcode;
    final e source;
    final byte[] maskKey = new byte[4];
    final byte[] maskBuffer = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];

    /* loaded from: classes3.dex */
    public interface FrameCallback {
        void onReadClose(int i, String str);

        void onReadMessage(String str) throws IOException;

        void onReadMessage(ByteString byteString) throws IOException;

        void onReadPing(ByteString byteString);

        void onReadPong(ByteString byteString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebSocketReader(boolean z, e eVar, FrameCallback frameCallback) {
        if (eVar == null) {
            throw new NullPointerException("source == null");
        }
        if (frameCallback == null) {
            throw new NullPointerException("frameCallback == null");
        }
        this.isClient = z;
        this.source = eVar;
        this.frameCallback = frameCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processNextFrame() throws IOException {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }

    /* JADX WARN: Finally extract failed */
    private void readHeader() throws IOException {
        int h;
        boolean z = true;
        if (this.closed) {
            throw new IOException("closed");
        }
        long timeoutNanos = this.source.timeout().timeoutNanos();
        this.source.timeout().clearTimeout();
        try {
            int h2 = this.source.h() & Constants.UNKNOWN;
            this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            this.opcode = h2 & 15;
            this.isFinalFrame = (h2 & 128) != 0;
            this.isControlFrame = (h2 & 8) != 0;
            if (this.isControlFrame && !this.isFinalFrame) {
                throw new ProtocolException("Control frames must be final.");
            }
            boolean z2 = (h2 & 64) != 0;
            boolean z3 = (h2 & 32) != 0;
            boolean z4 = (h2 & 16) != 0;
            if (z2 || z3 || z4) {
                throw new ProtocolException("Reserved flags are unsupported.");
            }
            if ((this.source.h() & Constants.UNKNOWN & 128) == 0) {
                z = false;
            }
            this.isMasked = z;
            if (this.isMasked == this.isClient) {
                throw new ProtocolException(this.isClient ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
            }
            this.frameLength = h & 127;
            if (this.frameLength == 126) {
                this.frameLength = this.source.i() & 65535;
            } else if (this.frameLength == 127) {
                this.frameLength = this.source.k();
                if (this.frameLength < 0) {
                    throw new ProtocolException("Frame length 0x" + Long.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            this.frameBytesRead = 0L;
            if (this.isControlFrame && this.frameLength > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            }
            if (this.isMasked) {
                this.source.a(this.maskKey);
            }
        } catch (Throwable th) {
            this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            throw th;
        }
    }

    private void readControlFrame() throws IOException {
        c cVar = new c();
        if (this.frameBytesRead < this.frameLength) {
            if (this.isClient) {
                this.source.a(cVar, this.frameLength);
            } else {
                while (this.frameBytesRead < this.frameLength) {
                    int a2 = this.source.a(this.maskBuffer, 0, (int) Math.min(this.frameLength - this.frameBytesRead, this.maskBuffer.length));
                    if (a2 == -1) {
                        throw new EOFException();
                    }
                    WebSocketProtocol.toggleMask(this.maskBuffer, a2, this.maskKey, this.frameBytesRead);
                    cVar.c(this.maskBuffer, 0, a2);
                    this.frameBytesRead += a2;
                }
            }
        }
        switch (this.opcode) {
            case 8:
                short s = 1005;
                String str = "";
                long a3 = cVar.a();
                if (a3 == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (a3 != 0) {
                    s = cVar.i();
                    str = cVar.q();
                    String closeCodeExceptionMessage = WebSocketProtocol.closeCodeExceptionMessage(s);
                    if (closeCodeExceptionMessage != null) {
                        throw new ProtocolException(closeCodeExceptionMessage);
                    }
                }
                this.frameCallback.onReadClose(s, str);
                this.closed = true;
                return;
            case 9:
                this.frameCallback.onReadPing(cVar.p());
                return;
            case 10:
                this.frameCallback.onReadPong(cVar.p());
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Integer.toHexString(this.opcode));
        }
    }

    private void readMessageFrame() throws IOException {
        int i = this.opcode;
        if (i != 1 && i != 2) {
            throw new ProtocolException("Unknown opcode: " + Integer.toHexString(i));
        }
        c cVar = new c();
        readMessage(cVar);
        if (i == 1) {
            this.frameCallback.onReadMessage(cVar.q());
        } else {
            this.frameCallback.onReadMessage(cVar.p());
        }
    }

    void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (this.isControlFrame) {
                readControlFrame();
            } else {
                return;
            }
        }
    }

    private void readMessage(c cVar) throws IOException {
        long read;
        while (!this.closed) {
            if (this.frameBytesRead == this.frameLength) {
                if (!this.isFinalFrame) {
                    readUntilNonControlFrame();
                    if (this.opcode != 0) {
                        throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(this.opcode));
                    }
                    if (this.isFinalFrame && this.frameLength == 0) {
                        return;
                    }
                } else {
                    return;
                }
            }
            long j = this.frameLength - this.frameBytesRead;
            if (this.isMasked) {
                read = this.source.a(this.maskBuffer, 0, (int) Math.min(j, this.maskBuffer.length));
                if (read == -1) {
                    throw new EOFException();
                }
                WebSocketProtocol.toggleMask(this.maskBuffer, read, this.maskKey, this.frameBytesRead);
                cVar.c(this.maskBuffer, 0, (int) read);
            } else {
                read = this.source.read(cVar, j);
                if (read == -1) {
                    throw new EOFException();
                }
            }
            this.frameBytesRead += read;
        }
        throw new IOException("closed");
    }
}
