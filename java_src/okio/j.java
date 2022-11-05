package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* compiled from: InflaterSource.java */
/* loaded from: classes3.dex */
public final class j implements r {

    /* renamed from: a  reason: collision with root package name */
    private final e f5865a;
    private final Inflater b;
    private int c;
    private boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f5865a = eVar;
        this.b = inflater;
    }

    @Override // okio.r
    public long read(c cVar, long j) throws IOException {
        boolean a2;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.d) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return 0L;
        }
        do {
            a2 = a();
            try {
                n e = cVar.e(1);
                int inflate = this.b.inflate(e.f5873a, e.c, 8192 - e.c);
                if (inflate > 0) {
                    e.c += inflate;
                    cVar.b += inflate;
                    return inflate;
                } else if (this.b.finished() || this.b.needsDictionary()) {
                    b();
                    if (e.b == e.c) {
                        cVar.f5861a = e.a();
                        o.a(e);
                    }
                    return -1L;
                }
            } catch (DataFormatException e2) {
                throw new IOException(e2);
            }
        } while (!a2);
        throw new EOFException("source exhausted prematurely");
    }

    public boolean a() throws IOException {
        if (!this.b.needsInput()) {
            return false;
        }
        b();
        if (this.b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f5865a.e()) {
            return true;
        }
        n nVar = this.f5865a.b().f5861a;
        this.c = nVar.c - nVar.b;
        this.b.setInput(nVar.f5873a, nVar.b, this.c);
        return false;
    }

    private void b() throws IOException {
        if (this.c != 0) {
            int remaining = this.c - this.b.getRemaining();
            this.c -= remaining;
            this.f5865a.h(remaining);
        }
    }

    @Override // okio.r
    public s timeout() {
        return this.f5865a.timeout();
    }

    @Override // okio.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.d) {
            this.b.end();
            this.d = true;
            this.f5865a.close();
        }
    }
}
