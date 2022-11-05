package okio;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealBufferedSink.java */
/* loaded from: classes3.dex */
public final class l implements d {

    /* renamed from: a  reason: collision with root package name */
    public final c f5870a = new c();
    public final q b;
    boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(q qVar) {
        if (qVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.b = qVar;
    }

    @Override // okio.d, okio.e
    public c b() {
        return this.f5870a;
    }

    @Override // okio.q
    public void write(c cVar, long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.write(cVar, j);
        w();
    }

    @Override // okio.d
    public d b(ByteString byteString) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.b(byteString);
        return w();
    }

    @Override // okio.d
    public d b(String str) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.b(str);
        return w();
    }

    @Override // okio.d
    public d c(byte[] bArr) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.c(bArr);
        return w();
    }

    @Override // okio.d
    public d c(byte[] bArr, int i, int i2) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.c(bArr, i, i2);
        return w();
    }

    @Override // okio.d
    public long a(r rVar) throws IOException {
        if (rVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long read = rVar.read(this.f5870a, 8192L);
            if (read != -1) {
                j += read;
                w();
            } else {
                return j;
            }
        }
    }

    @Override // okio.d
    public d i(int i) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.i(i);
        return w();
    }

    @Override // okio.d
    public d h(int i) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.h(i);
        return w();
    }

    @Override // okio.d
    public d g(int i) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.g(i);
        return w();
    }

    @Override // okio.d
    public d n(long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.n(j);
        return w();
    }

    @Override // okio.d
    public d m(long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.m(j);
        return w();
    }

    @Override // okio.d
    public d l(long j) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f5870a.l(j);
        return w();
    }

    @Override // okio.d
    public d w() throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        long g = this.f5870a.g();
        if (g > 0) {
            this.b.write(this.f5870a, g);
        }
        return this;
    }

    @Override // okio.d
    public d d() throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        long a2 = this.f5870a.a();
        if (a2 > 0) {
            this.b.write(this.f5870a, a2);
        }
        return this;
    }

    @Override // okio.d, okio.q, java.io.Flushable
    public void flush() throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        if (this.f5870a.b > 0) {
            this.b.write(this.f5870a, this.f5870a.b);
        }
        this.b.flush();
    }

    @Override // okio.q, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.c) {
            Throwable th = null;
            try {
                if (this.f5870a.b > 0) {
                    this.b.write(this.f5870a, this.f5870a.b);
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.b.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            this.c = true;
            if (th != null) {
                t.a(th);
            }
        }
    }

    @Override // okio.q
    public s timeout() {
        return this.b.timeout();
    }

    public String toString() {
        return "buffer(" + this.b + ")";
    }
}
