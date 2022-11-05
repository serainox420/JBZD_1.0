package bolts;

import java.io.Closeable;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;
/* compiled from: CancellationTokenSource.java */
/* loaded from: classes.dex */
public class g implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f937a;
    private final List<f> b;
    private ScheduledFuture<?> c;
    private boolean d;
    private boolean e;

    public boolean a() {
        boolean z;
        synchronized (this.f937a) {
            b();
            z = this.d;
        }
        return z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f937a) {
            if (!this.e) {
                c();
                for (f fVar : this.b) {
                    fVar.close();
                }
                this.b.clear();
                this.e = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f fVar) {
        synchronized (this.f937a) {
            b();
            this.b.remove(fVar);
        }
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(a()));
    }

    private void b() {
        if (this.e) {
            throw new IllegalStateException("Object already closed");
        }
    }

    private void c() {
        if (this.c != null) {
            this.c.cancel(true);
            this.c = null;
        }
    }
}
