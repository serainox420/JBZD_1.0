package bolts;
/* compiled from: TaskCompletionSource.java */
/* loaded from: classes.dex */
public class j<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final i<TResult> f947a = new i<>();

    public i<TResult> a() {
        return this.f947a;
    }

    public boolean b() {
        return this.f947a.i();
    }

    public boolean a(TResult tresult) {
        return this.f947a.b((i<TResult>) tresult);
    }

    public boolean a(Exception exc) {
        return this.f947a.b(exc);
    }

    public void c() {
        if (!b()) {
            throw new IllegalStateException("Cannot cancel a completed task.");
        }
    }

    public void b(TResult tresult) {
        if (!a((j<TResult>) tresult)) {
            throw new IllegalStateException("Cannot set the result of a completed task.");
        }
    }

    public void b(Exception exc) {
        if (!a(exc)) {
            throw new IllegalStateException("Cannot set the error on a completed task.");
        }
    }
}
