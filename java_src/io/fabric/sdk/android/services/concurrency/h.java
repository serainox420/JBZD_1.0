package io.fabric.sdk.android.services.concurrency;

import android.annotation.TargetApi;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: PriorityThreadPoolExecutor.java */
/* loaded from: classes3.dex */
public class h extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    private static final int f5699a = Runtime.getRuntime().availableProcessors();
    private static final int b = f5699a + 1;
    private static final int c = (f5699a * 2) + 1;

    <T extends Runnable & io.fabric.sdk.android.services.concurrency.a & i & f> h(int i, int i2, long j, TimeUnit timeUnit, DependencyPriorityBlockingQueue<T> dependencyPriorityBlockingQueue, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, dependencyPriorityBlockingQueue, threadFactory);
        prestartAllCoreThreads();
    }

    public static <T extends Runnable & io.fabric.sdk.android.services.concurrency.a & i & f> h a(int i, int i2) {
        return new h(i, i2, 1L, TimeUnit.SECONDS, new DependencyPriorityBlockingQueue(), new a(10));
    }

    public static h a() {
        return a(b, c);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new e(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new e(callable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    @TargetApi(9)
    public void execute(Runnable runnable) {
        if (g.isProperDelegate(runnable)) {
            super.execute(runnable);
        } else {
            super.execute(newTaskFor(runnable, null));
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        i iVar = (i) runnable;
        iVar.setFinished(true);
        iVar.setError(th);
        getQueue().recycleBlockedQueue();
        super.afterExecute(runnable, th);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    /* renamed from: b */
    public DependencyPriorityBlockingQueue getQueue() {
        return (DependencyPriorityBlockingQueue) super.getQueue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: PriorityThreadPoolExecutor.java */
    /* loaded from: classes3.dex */
    public static final class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final int f5700a;

        public a(int i) {
            this.f5700a = i;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(this.f5700a);
            thread.setName("Queue");
            return thread;
        }
    }
}
