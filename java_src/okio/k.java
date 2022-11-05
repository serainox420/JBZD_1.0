package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: Okio.java */
/* loaded from: classes3.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f5866a = Logger.getLogger(k.class.getName());

    private k() {
    }

    public static e a(r rVar) {
        return new m(rVar);
    }

    public static d a(q qVar) {
        return new l(qVar);
    }

    public static q a(OutputStream outputStream) {
        return a(outputStream, new s());
    }

    private static q a(final OutputStream outputStream, final s sVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (sVar != null) {
            return new q() { // from class: okio.k.1
                @Override // okio.q
                public void write(c cVar, long j) throws IOException {
                    t.a(cVar.b, 0L, j);
                    while (j > 0) {
                        s.this.throwIfReached();
                        n nVar = cVar.f5861a;
                        int min = (int) Math.min(j, nVar.c - nVar.b);
                        outputStream.write(nVar.f5873a, nVar.b, min);
                        nVar.b += min;
                        j -= min;
                        cVar.b -= min;
                        if (nVar.b == nVar.c) {
                            cVar.f5861a = nVar.a();
                            o.a(nVar);
                        }
                    }
                }

                @Override // okio.q, java.io.Flushable
                public void flush() throws IOException {
                    outputStream.flush();
                }

                @Override // okio.q, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    outputStream.close();
                }

                @Override // okio.q
                public s timeout() {
                    return s.this;
                }

                public String toString() {
                    return "sink(" + outputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static q a(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        a c = c(socket);
        return c.sink(a(socket.getOutputStream(), c));
    }

    public static r a(InputStream inputStream) {
        return a(inputStream, new s());
    }

    private static r a(final InputStream inputStream, final s sVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (sVar != null) {
            return new r() { // from class: okio.k.2
                @Override // okio.r
                public long read(c cVar, long j) throws IOException {
                    if (j < 0) {
                        throw new IllegalArgumentException("byteCount < 0: " + j);
                    }
                    if (j == 0) {
                        return 0L;
                    }
                    try {
                        s.this.throwIfReached();
                        n e = cVar.e(1);
                        int read = inputStream.read(e.f5873a, e.c, (int) Math.min(j, 8192 - e.c));
                        if (read == -1) {
                            return -1L;
                        }
                        e.c += read;
                        cVar.b += read;
                        return read;
                    } catch (AssertionError e2) {
                        if (!k.a(e2)) {
                            throw e2;
                        }
                        throw new IOException(e2);
                    }
                }

                @Override // okio.r, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    inputStream.close();
                }

                @Override // okio.r
                public s timeout() {
                    return s.this;
                }

                public String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static r a(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("file == null");
        }
        return a(new FileInputStream(file));
    }

    public static q b(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("file == null");
        }
        return a(new FileOutputStream(file));
    }

    public static q c(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("file == null");
        }
        return a(new FileOutputStream(file, true));
    }

    public static q a() {
        return new q() { // from class: okio.k.3
            @Override // okio.q
            public void write(c cVar, long j) throws IOException {
                cVar.h(j);
            }

            @Override // okio.q, java.io.Flushable
            public void flush() throws IOException {
            }

            @Override // okio.q
            public s timeout() {
                return s.NONE;
            }

            @Override // okio.q, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
            }
        };
    }

    public static r b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        a c = c(socket);
        return c.source(a(socket.getInputStream(), c));
    }

    private static a c(final Socket socket) {
        return new a() { // from class: okio.k.4
            @Override // okio.a
            protected IOException newTimeoutException(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // okio.a
            protected void timedOut() {
                try {
                    socket.close();
                } catch (AssertionError e) {
                    if (k.a(e)) {
                        k.f5866a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e);
                        return;
                    }
                    throw e;
                } catch (Exception e2) {
                    k.f5866a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
                }
            }
        };
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
