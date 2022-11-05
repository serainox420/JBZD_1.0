package io.fabric.sdk.android.services.concurrency;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: PriorityTask.java */
/* loaded from: classes3.dex */
public class g implements a<i>, f, i {
    private final List<i> dependencies = new ArrayList();
    private final AtomicBoolean hasRun = new AtomicBoolean(false);
    private final AtomicReference<Throwable> throwable = new AtomicReference<>(null);

    @Override // io.fabric.sdk.android.services.concurrency.a
    public synchronized Collection<i> getDependencies() {
        return Collections.unmodifiableCollection(this.dependencies);
    }

    @Override // io.fabric.sdk.android.services.concurrency.a
    public synchronized void addDependency(i iVar) {
        this.dependencies.add(iVar);
    }

    @Override // io.fabric.sdk.android.services.concurrency.a
    public boolean areDependenciesMet() {
        for (i iVar : getDependencies()) {
            if (!iVar.isFinished()) {
                return false;
            }
        }
        return true;
    }

    @Override // io.fabric.sdk.android.services.concurrency.i
    public synchronized void setFinished(boolean z) {
        this.hasRun.set(z);
    }

    @Override // io.fabric.sdk.android.services.concurrency.i
    public boolean isFinished() {
        return this.hasRun.get();
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    @Override // io.fabric.sdk.android.services.concurrency.i
    public void setError(Throwable th) {
        this.throwable.set(th);
    }

    public Throwable getError() {
        return this.throwable.get();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return Priority.a(this, obj);
    }

    public static boolean isProperDelegate(Object obj) {
        try {
            return (((a) obj) == null || ((i) obj) == null || ((f) obj) == null) ? false : true;
        } catch (ClassCastException e) {
            return false;
        }
    }
}
