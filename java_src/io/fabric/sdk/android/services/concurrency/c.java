package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.AsyncTask;
import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* compiled from: PriorityAsyncTask.java */
/* loaded from: classes3.dex */
public abstract class c<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> implements io.fabric.sdk.android.services.concurrency.a<i>, f, i {

    /* renamed from: a  reason: collision with root package name */
    private final g f5696a = new g();

    public final void a(ExecutorService executorService, Params... paramsArr) {
        super.a(new a(executorService, this), paramsArr);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return Priority.a(this, obj);
    }

    @Override // io.fabric.sdk.android.services.concurrency.a
    /* renamed from: a */
    public void addDependency(i iVar) {
        if (b() != AsyncTask.Status.PENDING) {
            throw new IllegalStateException("Must not add Dependency after task is running");
        }
        ((io.fabric.sdk.android.services.concurrency.a) ((f) e())).addDependency(iVar);
    }

    @Override // io.fabric.sdk.android.services.concurrency.a
    public Collection<i> getDependencies() {
        return ((io.fabric.sdk.android.services.concurrency.a) ((f) e())).getDependencies();
    }

    @Override // io.fabric.sdk.android.services.concurrency.a
    public boolean areDependenciesMet() {
        return ((io.fabric.sdk.android.services.concurrency.a) ((f) e())).areDependenciesMet();
    }

    public Priority getPriority() {
        return ((f) e()).getPriority();
    }

    @Override // io.fabric.sdk.android.services.concurrency.i
    public void setFinished(boolean z) {
        ((i) ((f) e())).setFinished(z);
    }

    @Override // io.fabric.sdk.android.services.concurrency.i
    public boolean isFinished() {
        return ((i) ((f) e())).isFinished();
    }

    @Override // io.fabric.sdk.android.services.concurrency.i
    public void setError(Throwable th) {
        ((i) ((f) e())).setError(th);
    }

    /* JADX WARN: Incorrect return type in method signature: <T::Lio/fabric/sdk/android/services/concurrency/a<Lio/fabric/sdk/android/services/concurrency/i;>;:Lio/fabric/sdk/android/services/concurrency/f;:Lio/fabric/sdk/android/services/concurrency/i;>()TT; */
    public io.fabric.sdk.android.services.concurrency.a e() {
        return this.f5696a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PriorityAsyncTask.java */
    /* loaded from: classes3.dex */
    public static class a<Result> implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private final Executor f5697a;
        private final c b;

        public a(Executor executor, c cVar) {
            this.f5697a = executor;
            this.b = cVar;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f5697a.execute(new e<Result>(runnable, null) { // from class: io.fabric.sdk.android.services.concurrency.c.a.1
                /* JADX WARN: Incorrect return type in method signature: <T::Lio/fabric/sdk/android/services/concurrency/a<Lio/fabric/sdk/android/services/concurrency/i;>;:Lio/fabric/sdk/android/services/concurrency/f;:Lio/fabric/sdk/android/services/concurrency/i;>()TT; */
                @Override // io.fabric.sdk.android.services.concurrency.e
                public io.fabric.sdk.android.services.concurrency.a a() {
                    return a.this.b;
                }
            });
        }
    }
}
