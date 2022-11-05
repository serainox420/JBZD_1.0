package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* compiled from: GzipSource.java */
/* loaded from: classes3.dex */
public final class i implements r {
    private final e b;
    private final Inflater c;
    private final j d;

    /* renamed from: a  reason: collision with root package name */
    private int f5864a = 0;
    private final CRC32 e = new CRC32();

    public i(r rVar) {
        if (rVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.c = new Inflater(true);
        this.b = k.a(rVar);
        this.d = new j(this.b, this.c);
    }

    @Override // okio.r
    public long read(c cVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        if (this.f5864a == 0) {
            a();
            this.f5864a = 1;
        }
        if (this.f5864a == 1) {
            long j2 = cVar.b;
            long read = this.d.read(cVar, j);
            if (read != -1) {
                a(cVar, j2, read);
                return read;
            }
            this.f5864a = 2;
        }
        if (this.f5864a == 2) {
            b();
            this.f5864a = 3;
            if (!this.b.e()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    private void a() throws IOException {
        this.b.a(10L);
        byte c = this.b.b().c(3L);
        boolean z = ((c >> 1) & 1) == 1;
        if (z) {
            a(this.b.b(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.b.i());
        this.b.h(8L);
        if (((c >> 2) & 1) == 1) {
            this.b.a(2L);
            if (z) {
                a(this.b.b(), 0L, 2L);
            }
            short l = this.b.b().l();
            this.b.a(l);
            if (z) {
                a(this.b.b(), 0L, l);
            }
            this.b.h(l);
        }
        if (((c >> 3) & 1) == 1) {
            long a2 = this.b.a((byte) 0);
            if (a2 == -1) {
                throw new EOFException();
            }
            if (z) {
                a(this.b.b(), 0L, 1 + a2);
            }
            this.b.h(1 + a2);
        }
        if (((c >> 4) & 1) == 1) {
            long a3 = this.b.a((byte) 0);
            if (a3 == -1) {
                throw new EOFException();
            }
            if (z) {
                a(this.b.b(), 0L, 1 + a3);
            }
            this.b.h(1 + a3);
        }
        if (z) {
            a("FHCRC", this.b.l(), (short) this.e.getValue());
            this.e.reset();
        }
    }

    private void b() throws IOException {
        a("CRC", this.b.m(), (int) this.e.getValue());
        a("ISIZE", this.b.m(), (int) this.c.getBytesWritten());
    }

    @Override // okio.r
    public s timeout() {
        return this.b.timeout();
    }

    @Override // okio.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.d.close();
    }

    private void a(c cVar, long j, long j2) {
        int i;
        n nVar = cVar.f5861a;
        while (j >= nVar.c - nVar.b) {
            j -= nVar.c - nVar.b;
            nVar = nVar.f;
        }
        while (j2 > 0) {
            int min = (int) Math.min(nVar.c - i, j2);
            this.e.update(nVar.f5873a, (int) (nVar.b + j), min);
            j2 -= min;
            nVar = nVar.f;
            j = 0;
        }
    }

    private void a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }
}
