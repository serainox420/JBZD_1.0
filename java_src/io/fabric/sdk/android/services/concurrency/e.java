package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* compiled from: PriorityFutureTask.java */
/* loaded from: classes3.dex */
public class e<V> extends FutureTask<V> implements a<i>, f, i {
    final Object b;

    public e(Callable<V> callable) {
        super(callable);
        this.b = a(callable);
    }

    public e(Runnable runnable, V v) {
        super(runnable, v);
        this.b = a(runnable);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return ((f) a()).compareTo(obj);
    }

    @Override // io.fabric.sdk.android.services.concurrency.a
    /* renamed from: a */
    public void addDependency(i iVar) {
        ((a) ((f) a())).addDependency(iVar);
    }

    @Override // io.fabric.sdk.android.services.concurrency.a
    public Collection<i> getDependencies() {
        return ((a) ((f) a())).getDependencies();
    }

    @Override // io.fabric.sdk.android.services.concurrency.a
    public boolean areDependenciesMet() {
        return ((a) ((f) a())).areDependenciesMet();
    }

    @Override // io.fabric.sdk.android.services.concurrency.f
    public Priority getPriority() {
        return ((f) a()).getPriority();
    }

    @Override // io.fabric.sdk.android.services.concurrency.i
    public void setFinished(boolean z) {
        ((i) ((f) a())).setFinished(z);
    }

    @Override // io.fabric.sdk.android.services.concurrency.i
    public boolean isFinished() {
        return ((i) ((f) a())).isFinished();
    }

    @Override // io.fabric.sdk.android.services.concurrency.i
    public void setError(Throwable th) {
        ((i) ((f) a())).setError(th);
    }

    /* JADX WARN: Incorrect return type in method signature: <T::Lio/fabric/sdk/android/services/concurrency/a<Lio/fabric/sdk/android/services/concurrency/i;>;:Lio/fabric/sdk/android/services/concurrency/f;:Lio/fabric/sdk/android/services/concurrency/i;>()TT; */
    public a a() {
        return (a) this.b;
    }

    /* JADX WARN: Incorrect return type in method signature: <T::Lio/fabric/sdk/android/services/concurrency/a<Lio/fabric/sdk/android/services/concurrency/i;>;:Lio/fabric/sdk/android/services/concurrency/f;:Lio/fabric/sdk/android/services/concurrency/i;>(Ljava/lang/Object;)TT; */
    protected a a(Object obj) {
        return g.isProperDelegate(obj) ? (a) obj : new g();
    }
}
