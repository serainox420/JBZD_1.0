package okio;

import java.io.IOException;
/* compiled from: ForwardingSink.java */
/* loaded from: classes3.dex */
public abstract class f implements q {
    private final q delegate;

    public f(q qVar) {
        if (qVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.delegate = qVar;
    }

    public final q delegate() {
        return this.delegate;
    }

    @Override // okio.q
    public void write(c cVar, long j) throws IOException {
        this.delegate.write(cVar, j);
    }

    @Override // okio.q, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // okio.q
    public s timeout() {
        return this.delegate.timeout();
    }

    @Override // okio.q, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
    }
}
