package okio;

import java.io.IOException;
/* compiled from: ForwardingSource.java */
/* loaded from: classes3.dex */
public abstract class g implements r {
    private final r delegate;

    public g(r rVar) {
        if (rVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.delegate = rVar;
    }

    public final r delegate() {
        return this.delegate;
    }

    @Override // okio.r
    public long read(c cVar, long j) throws IOException {
        return this.delegate.read(cVar, j);
    }

    @Override // okio.r
    public s timeout() {
        return this.delegate.timeout();
    }

    @Override // okio.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
    }
}
