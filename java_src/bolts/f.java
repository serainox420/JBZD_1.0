package bolts;

import java.io.Closeable;
/* compiled from: CancellationTokenRegistration.java */
/* loaded from: classes.dex */
public class f implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f936a;
    private g b;
    private Runnable c;
    private boolean d;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f936a) {
            if (!this.d) {
                this.d = true;
                this.b.a(this);
                this.b = null;
                this.c = null;
            }
        }
    }
}
