package com.flurry.sdk;

import com.flurry.sdk.mb;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class kl<T extends mb> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2966a = kl.class.getSimpleName();
    private final kd<Object, T> b = new kd<>();
    private final HashMap<T, Object> c = new HashMap<>();
    private final HashMap<T, Future<?>> d = new HashMap<>();
    private final ThreadPoolExecutor e;

    public kl(String str, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        this.e = new ThreadPoolExecutor(timeUnit, blockingQueue) { // from class: com.flurry.sdk.kl.1
            @Override // java.util.concurrent.ThreadPoolExecutor
            protected final void beforeExecute(Thread thread, Runnable runnable) {
                super.beforeExecute(thread, runnable);
                final mb a2 = kl.a(runnable);
                if (a2 != null) {
                    new ma() { // from class: com.flurry.sdk.kl.1.1
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                        }
                    }.run();
                }
            }

            @Override // java.util.concurrent.ThreadPoolExecutor
            protected final void afterExecute(Runnable runnable, Throwable th) {
                super.afterExecute(runnable, th);
                final mb a2 = kl.a(runnable);
                if (a2 != null) {
                    synchronized (kl.this.d) {
                        kl.this.d.remove(a2);
                    }
                    kl.this.b((kl) a2);
                    new ma() { // from class: com.flurry.sdk.kl.1.2
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                        }
                    }.run();
                }
            }

            @Override // java.util.concurrent.AbstractExecutorService
            protected final <V> RunnableFuture<V> newTaskFor(Callable<V> callable) {
                throw new UnsupportedOperationException("Callable not supported");
            }

            @Override // java.util.concurrent.AbstractExecutorService
            protected final <V> RunnableFuture<V> newTaskFor(Runnable runnable, V v) {
                kk kkVar = new kk(runnable, v);
                synchronized (kl.this.d) {
                    kl.this.d.put((mb) runnable, kkVar);
                }
                return kkVar;
            }
        };
        this.e.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy() { // from class: com.flurry.sdk.kl.2
            @Override // java.util.concurrent.ThreadPoolExecutor.DiscardPolicy, java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                super.rejectedExecution(runnable, threadPoolExecutor);
                final mb a2 = kl.a(runnable);
                if (a2 != null) {
                    synchronized (kl.this.d) {
                        kl.this.d.remove(a2);
                    }
                    kl.this.b((kl) a2);
                    new ma() { // from class: com.flurry.sdk.kl.2.1
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                        }
                    }.run();
                }
            }
        });
        this.e.setThreadFactory(new lr(str));
    }

    public final synchronized void a(Object obj, T t) {
        if (obj != null && t != null) {
            b(obj, t);
            this.e.submit(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized void a(Object obj) {
        if (obj != null) {
            HashSet<mb> hashSet = new HashSet();
            hashSet.addAll(this.b.a((kd<Object, T>) obj));
            for (mb mbVar : hashSet) {
                a((kl<T>) mbVar);
            }
        }
    }

    private synchronized void a(final T t) {
        Future<?> remove;
        if (t != null) {
            synchronized (this.d) {
                remove = this.d.remove(t);
            }
            b((kl<T>) t);
            if (remove != null) {
                remove.cancel(true);
            }
            new ma() { // from class: com.flurry.sdk.kl.3
                @Override // com.flurry.sdk.ma
                public final void a() {
                    t.g();
                }
            }.run();
        }
    }

    public final synchronized long b(Object obj) {
        return obj == null ? 0L : this.b.a((kd<Object, T>) obj).size();
    }

    private synchronized void b(Object obj, T t) {
        this.b.a((kd<Object, T>) obj, t);
        this.c.put(t, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(T t) {
        c(this.c.get(t), t);
    }

    private synchronized void c(Object obj, T t) {
        this.b.b(obj, t);
        this.c.remove(t);
    }

    static /* synthetic */ mb a(Runnable runnable) {
        if (runnable instanceof kk) {
            return (mb) ((kk) runnable).a();
        }
        if (runnable instanceof mb) {
            return (mb) runnable;
        }
        km.a(6, f2966a, "Unknown runnable class: " + runnable.getClass().getName());
        return null;
    }
}
