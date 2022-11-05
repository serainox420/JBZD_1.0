package bolts;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* compiled from: Task.java */
/* loaded from: classes.dex */
public class i<TResult> {
    private static volatile b d;
    private boolean f;
    private boolean g;
    private TResult h;
    private Exception i;
    private boolean j;
    private k k;

    /* renamed from: a  reason: collision with root package name */
    public static final ExecutorService f938a = d.a();
    private static final Executor c = d.b();
    public static final Executor b = bolts.a.b();
    private static i<?> m = new i<>((Object) null);
    private static i<Boolean> n = new i<>(true);
    private static i<Boolean> o = new i<>(false);
    private static i<?> p = new i<>(true);
    private final Object e = new Object();
    private List<h<TResult, Void>> l = new ArrayList();

    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(i<?> iVar, UnobservedTaskException unobservedTaskException);
    }

    public static b a() {
        return d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i() {
    }

    private i(TResult tresult) {
        b((i<TResult>) tresult);
    }

    private i(boolean z) {
        if (z) {
            i();
        } else {
            b((i<TResult>) null);
        }
    }

    public static <TResult> i<TResult>.a b() {
        i iVar = new i();
        iVar.getClass();
        return new a();
    }

    public boolean c() {
        boolean z;
        synchronized (this.e) {
            z = this.f;
        }
        return z;
    }

    public boolean d() {
        boolean z;
        synchronized (this.e) {
            z = this.g;
        }
        return z;
    }

    public boolean e() {
        boolean z;
        synchronized (this.e) {
            z = g() != null;
        }
        return z;
    }

    public TResult f() {
        TResult tresult;
        synchronized (this.e) {
            tresult = this.h;
        }
        return tresult;
    }

    public Exception g() {
        Exception exc;
        synchronized (this.e) {
            if (this.i != null) {
                this.j = true;
                if (this.k != null) {
                    this.k.a();
                    this.k = null;
                }
            }
            exc = this.i;
        }
        return exc;
    }

    public static <TResult> i<TResult> a(TResult tresult) {
        if (tresult == null) {
            return (i<TResult>) m;
        }
        if (tresult instanceof Boolean) {
            return ((Boolean) tresult).booleanValue() ? (i<TResult>) n : (i<TResult>) o;
        }
        j jVar = new j();
        jVar.b((j) tresult);
        return jVar.a();
    }

    public static <TResult> i<TResult> a(Exception exc) {
        j jVar = new j();
        jVar.b(exc);
        return jVar.a();
    }

    public static <TResult> i<TResult> h() {
        return (i<TResult>) p;
    }

    public static <TResult> i<TResult> a(Callable<TResult> callable, Executor executor) {
        return a(callable, executor, (e) null);
    }

    public static <TResult> i<TResult> a(final Callable<TResult> callable, Executor executor, final e eVar) {
        final j jVar = new j();
        try {
            executor.execute(new Runnable() { // from class: bolts.i.6
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this != null && e.this.a()) {
                        jVar.c();
                        return;
                    }
                    try {
                        jVar.b((j) callable.call());
                    } catch (CancellationException e) {
                        jVar.c();
                    } catch (Exception e2) {
                        jVar.b(e2);
                    }
                }
            });
        } catch (Exception e) {
            jVar.b((Exception) new ExecutorException(e));
        }
        return jVar.a();
    }

    public <TContinuationResult> i<TContinuationResult> a(final h<TResult, TContinuationResult> hVar, final Executor executor, final e eVar) {
        boolean c2;
        final j jVar = new j();
        synchronized (this.e) {
            c2 = c();
            if (!c2) {
                this.l.add(new h<TResult, Void>() { // from class: bolts.i.1
                    @Override // bolts.h
                    /* renamed from: a */
                    public Void mo109then(i<TResult> iVar) {
                        i.c(jVar, hVar, iVar, executor, eVar);
                        return null;
                    }
                });
            }
        }
        if (c2) {
            c(jVar, hVar, this, executor, eVar);
        }
        return jVar.a();
    }

    public <TContinuationResult> i<TContinuationResult> a(h<TResult, TContinuationResult> hVar) {
        return a(hVar, c, (e) null);
    }

    public <TContinuationResult> i<TContinuationResult> a(h<TResult, i<TContinuationResult>> hVar, Executor executor) {
        return b(hVar, executor, null);
    }

    public <TContinuationResult> i<TContinuationResult> b(final h<TResult, i<TContinuationResult>> hVar, final Executor executor, final e eVar) {
        boolean c2;
        final j jVar = new j();
        synchronized (this.e) {
            c2 = c();
            if (!c2) {
                this.l.add(new h<TResult, Void>() { // from class: bolts.i.2
                    @Override // bolts.h
                    /* renamed from: a */
                    public Void mo109then(i<TResult> iVar) {
                        i.d(jVar, hVar, iVar, executor, eVar);
                        return null;
                    }
                });
            }
        }
        if (c2) {
            d(jVar, hVar, this, executor, eVar);
        }
        return jVar.a();
    }

    public <TContinuationResult> i<TContinuationResult> b(h<TResult, i<TContinuationResult>> hVar) {
        return b(hVar, c, null);
    }

    public <TContinuationResult> i<TContinuationResult> c(final h<TResult, TContinuationResult> hVar, Executor executor, final e eVar) {
        return a(new h<TResult, i<TContinuationResult>>() { // from class: bolts.i.3
            @Override // bolts.h
            /* renamed from: a */
            public i<TContinuationResult> mo109then(i<TResult> iVar) {
                if (eVar != null && eVar.a()) {
                    return i.h();
                }
                if (iVar.e()) {
                    return i.a(iVar.g());
                }
                if (iVar.d()) {
                    return i.h();
                }
                return iVar.a((h) hVar);
            }
        }, executor);
    }

    public <TContinuationResult> i<TContinuationResult> c(h<TResult, TContinuationResult> hVar) {
        return c(hVar, c, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void c(final j<TContinuationResult> jVar, final h<TResult, TContinuationResult> hVar, final i<TResult> iVar, Executor executor, final e eVar) {
        try {
            executor.execute(new Runnable() { // from class: bolts.i.4
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this != null && e.this.a()) {
                        jVar.c();
                        return;
                    }
                    try {
                        jVar.b((j) hVar.mo109then(iVar));
                    } catch (CancellationException e) {
                        jVar.c();
                    } catch (Exception e2) {
                        jVar.b(e2);
                    }
                }
            });
        } catch (Exception e) {
            jVar.b(new ExecutorException(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void d(final j<TContinuationResult> jVar, final h<TResult, i<TContinuationResult>> hVar, final i<TResult> iVar, Executor executor, final e eVar) {
        try {
            executor.execute(new Runnable() { // from class: bolts.i.5
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0026 -> B:18:0x0011). Please submit an issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0036 -> B:18:0x0011). Please submit an issue!!! */
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this != null && e.this.a()) {
                        jVar.c();
                        return;
                    }
                    try {
                        i iVar2 = (i) hVar.mo109then(iVar);
                        if (iVar2 == null) {
                            jVar.b((j) null);
                        } else {
                            iVar2.a((h) new h<TContinuationResult, Void>() { // from class: bolts.i.5.1
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // bolts.h
                                /* renamed from: a */
                                public Void mo109then(i<TContinuationResult> iVar3) {
                                    if (e.this != null && e.this.a()) {
                                        jVar.c();
                                    } else if (iVar3.d()) {
                                        jVar.c();
                                    } else if (iVar3.e()) {
                                        jVar.b(iVar3.g());
                                    } else {
                                        jVar.b((j) iVar3.f());
                                    }
                                    return null;
                                }
                            });
                        }
                    } catch (CancellationException e) {
                        jVar.c();
                    } catch (Exception e2) {
                        jVar.b(e2);
                    }
                }
            });
        } catch (Exception e) {
            jVar.b(new ExecutorException(e));
        }
    }

    private void j() {
        synchronized (this.e) {
            for (h<TResult, Void> hVar : this.l) {
                try {
                    hVar.mo109then(this);
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
            this.l = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        boolean z = true;
        synchronized (this.e) {
            if (this.f) {
                z = false;
            } else {
                this.f = true;
                this.g = true;
                this.e.notifyAll();
                j();
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(TResult tresult) {
        boolean z = true;
        synchronized (this.e) {
            if (this.f) {
                z = false;
            } else {
                this.f = true;
                this.h = tresult;
                this.e.notifyAll();
                j();
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(Exception exc) {
        synchronized (this.e) {
            if (this.f) {
                return false;
            }
            this.f = true;
            this.i = exc;
            this.j = false;
            this.e.notifyAll();
            j();
            if (!this.j && a() != null) {
                this.k = new k(this);
            }
            return true;
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public class a extends j<TResult> {
        a() {
        }
    }
}
