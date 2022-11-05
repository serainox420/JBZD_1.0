package okio;

import com.flurry.android.Constants;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealBufferedSource.java */
/* loaded from: classes3.dex */
public final class m implements e {

    /* renamed from: a  reason: collision with root package name */
    public final c f5871a = new c();
    public final r b;
    boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(r rVar) {
        if (rVar == null) {
            throw new NullPointerException("source == null");
        }
        this.b = rVar;
    }

    @Override // okio.e
    public c b() {
        return this.f5871a;
    }

    @Override // okio.r
    public long read(c cVar, long j) throws IOException {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        if (this.f5871a.b == 0 && this.b.read(this.f5871a, 8192L) == -1) {
            return -1L;
        }
        return this.f5871a.read(cVar, Math.min(j, this.f5871a.b));
    }

    @Override // okio.e
    public boolean e() throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        return this.f5871a.e() && this.b.read(this.f5871a, 8192L) == -1;
    }

    @Override // okio.e
    public void a(long j) throws IOException {
        if (!b(j)) {
            throw new EOFException();
        }
    }

    @Override // okio.e
    public boolean b(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        while (this.f5871a.b < j) {
            if (this.b.read(this.f5871a, 8192L) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.e
    public byte h() throws IOException {
        a(1L);
        return this.f5871a.h();
    }

    @Override // okio.e
    public ByteString d(long j) throws IOException {
        a(j);
        return this.f5871a.d(j);
    }

    @Override // okio.e
    public byte[] s() throws IOException {
        this.f5871a.a(this.b);
        return this.f5871a.s();
    }

    @Override // okio.e
    public byte[] g(long j) throws IOException {
        a(j);
        return this.f5871a.g(j);
    }

    @Override // okio.e
    public void a(byte[] bArr) throws IOException {
        try {
            a(bArr.length);
            this.f5871a.a(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (this.f5871a.b > 0) {
                int a2 = this.f5871a.a(bArr, i, (int) this.f5871a.b);
                if (a2 == -1) {
                    throw new AssertionError();
                }
                i += a2;
            }
            throw e;
        }
    }

    @Override // okio.e
    public int a(byte[] bArr, int i, int i2) throws IOException {
        t.a(bArr.length, i, i2);
        if (this.f5871a.b == 0 && this.b.read(this.f5871a, 8192L) == -1) {
            return -1;
        }
        return this.f5871a.a(bArr, i, (int) Math.min(i2, this.f5871a.b));
    }

    @Override // okio.e
    public void a(c cVar, long j) throws IOException {
        try {
            a(j);
            this.f5871a.a(cVar, j);
        } catch (EOFException e) {
            cVar.a((r) this.f5871a);
            throw e;
        }
    }

    @Override // okio.e
    public long a(q qVar) throws IOException {
        if (qVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j = 0;
        while (this.b.read(this.f5871a, 8192L) != -1) {
            long g = this.f5871a.g();
            if (g > 0) {
                j += g;
                qVar.write(this.f5871a, g);
            }
        }
        if (this.f5871a.a() > 0) {
            long a2 = j + this.f5871a.a();
            qVar.write(this.f5871a, this.f5871a.a());
            return a2;
        }
        return j;
    }

    @Override // okio.e
    public String a(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.f5871a.a(this.b);
        return this.f5871a.a(charset);
    }

    @Override // okio.e
    public String r() throws IOException {
        long a2 = a((byte) 10);
        if (a2 == -1) {
            c cVar = new c();
            this.f5871a.a(cVar, 0L, Math.min(32L, this.f5871a.a()));
            throw new EOFException("\\n not found: size=" + this.f5871a.a() + " content=" + cVar.p().hex() + "…");
        }
        return this.f5871a.f(a2);
    }

    @Override // okio.e
    public short i() throws IOException {
        a(2L);
        return this.f5871a.i();
    }

    @Override // okio.e
    public short l() throws IOException {
        a(2L);
        return this.f5871a.l();
    }

    @Override // okio.e
    public int j() throws IOException {
        a(4L);
        return this.f5871a.j();
    }

    @Override // okio.e
    public int m() throws IOException {
        a(4L);
        return this.f5871a.m();
    }

    @Override // okio.e
    public long k() throws IOException {
        a(8L);
        return this.f5871a.k();
    }

    @Override // okio.e
    public long n() throws IOException {
        a(1L);
        for (int i = 0; b(i + 1); i++) {
            byte c = this.f5871a.c(i);
            if ((c < 48 || c > 57) && (i != 0 || c != 45)) {
                if (i == 0) {
                    throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(c)));
                }
                return this.f5871a.n();
            }
        }
        return this.f5871a.n();
    }

    @Override // okio.e
    public long o() throws IOException {
        a(1L);
        for (int i = 0; b(i + 1); i++) {
            byte c = this.f5871a.c(i);
            if ((c < 48 || c > 57) && ((c < 97 || c > 102) && (c < 65 || c > 70))) {
                if (i == 0) {
                    throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(c)));
                }
                return this.f5871a.o();
            }
        }
        return this.f5871a.o();
    }

    @Override // okio.e
    public void h(long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            if (this.f5871a.b == 0 && this.b.read(this.f5871a, 8192L) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, this.f5871a.a());
            this.f5871a.h(min);
            j -= min;
        }
    }

    @Override // okio.e
    public long a(byte b) throws IOException {
        return a(b, 0L);
    }

    public long a(byte b, long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long a2 = this.f5871a.a(b, j);
            if (a2 == -1) {
                long j2 = this.f5871a.b;
                if (this.b.read(this.f5871a, 8192L) == -1) {
                    return -1L;
                }
                j = Math.max(j, j2);
            } else {
                return a2;
            }
        }
    }

    @Override // okio.e
    public boolean a(long j, ByteString byteString) throws IOException {
        return a(j, byteString, 0, byteString.size());
    }

    public boolean a(long j, ByteString byteString, int i, int i2) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || i < 0 || i2 < 0 || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = i3 + j;
            if (!b(1 + j2) || this.f5871a.c(j2) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.e
    public InputStream f() {
        return new InputStream() { // from class: okio.m.1
            @Override // java.io.InputStream
            public int read() throws IOException {
                if (m.this.c) {
                    throw new IOException("closed");
                }
                if (m.this.f5871a.b != 0 || m.this.b.read(m.this.f5871a, 8192L) != -1) {
                    return m.this.f5871a.h() & Constants.UNKNOWN;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                if (m.this.c) {
                    throw new IOException("closed");
                }
                t.a(bArr.length, i, i2);
                if (m.this.f5871a.b != 0 || m.this.b.read(m.this.f5871a, 8192L) != -1) {
                    return m.this.f5871a.a(bArr, i, i2);
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int available() throws IOException {
                if (m.this.c) {
                    throw new IOException("closed");
                }
                return (int) Math.min(m.this.f5871a.b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                m.this.close();
            }

            public String toString() {
                return m.this + ".inputStream()";
            }
        };
    }

    @Override // okio.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.c) {
            this.c = true;
            this.b.close();
            this.f5871a.t();
        }
    }

    @Override // okio.r
    public s timeout() {
        return this.b.timeout();
    }

    public String toString() {
        return "buffer(" + this.b + ")";
    }
}
