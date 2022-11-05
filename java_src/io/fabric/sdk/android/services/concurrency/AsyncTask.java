package io.fabric.sdk.android.services.concurrency;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.LinkedList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public abstract class AsyncTask<Params, Progress, Result> {

    /* renamed from: a  reason: collision with root package name */
    private static final int f5682a = Runtime.getRuntime().availableProcessors();
    private static final int d = f5682a + 1;
    private static final int e = (f5682a * 2) + 1;
    private static final ThreadFactory f = new ThreadFactory() { // from class: io.fabric.sdk.android.services.concurrency.AsyncTask.1

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f5683a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AsyncTask #" + this.f5683a.getAndIncrement());
        }
    };
    private static final BlockingQueue<Runnable> g = new LinkedBlockingQueue(128);
    public static final Executor b = new ThreadPoolExecutor(d, e, 1, TimeUnit.SECONDS, g, f);
    public static final Executor c = new c();
    private static final b h = new b();
    private static volatile Executor i = c;
    private volatile Status l = Status.PENDING;
    private final AtomicBoolean m = new AtomicBoolean();
    private final AtomicBoolean n = new AtomicBoolean();
    private final d<Params, Result> j = new d<Params, Result>() { // from class: io.fabric.sdk.android.services.concurrency.AsyncTask.2
        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            AsyncTask.this.n.set(true);
            Process.setThreadPriority(10);
            return (Result) AsyncTask.this.d(AsyncTask.this.a((Object[]) this.b));
        }
    };
    private final FutureTask<Result> k = new FutureTask<Result>(this.j) { // from class: io.fabric.sdk.android.services.concurrency.AsyncTask.3
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                AsyncTask.this.c(get());
            } catch (InterruptedException e2) {
                Log.w("AsyncTask", e2);
            } catch (CancellationException e3) {
                AsyncTask.this.c(null);
            } catch (ExecutionException e4) {
                throw new RuntimeException("An error occured while executing doInBackground()", e4.getCause());
            }
        }
    };

    /* loaded from: classes3.dex */
    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Result a(Params... paramsArr);

    /* loaded from: classes3.dex */
    private static class c implements Executor {

        /* renamed from: a  reason: collision with root package name */
        final LinkedList<Runnable> f5689a;
        Runnable b;

        private c() {
            this.f5689a = new LinkedList<>();
        }

        @Override // java.util.concurrent.Executor
        public synchronized void execute(final Runnable runnable) {
            this.f5689a.offer(new Runnable() { // from class: io.fabric.sdk.android.services.concurrency.AsyncTask.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        c.this.a();
                    }
                }
            });
            if (this.b == null) {
                a();
            }
        }

        protected synchronized void a() {
            Runnable poll = this.f5689a.poll();
            this.b = poll;
            if (poll != null) {
                AsyncTask.b.execute(this.b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Result result) {
        if (!this.n.get()) {
            d(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Result d(Result result) {
        h.obtainMessage(1, new a(this, result)).sendToTarget();
        return result;
    }

    public final Status b() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
    }

    protected void a(Result result) {
    }

    protected void b(Progress... progressArr) {
    }

    protected void b(Result result) {
        c();
    }

    protected void c() {
    }

    public final boolean d() {
        return this.m.get();
    }

    public final boolean a(boolean z) {
        this.m.set(true);
        return this.k.cancel(z);
    }

    public final AsyncTask<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.l != Status.PENDING) {
            switch (this.l) {
                case RUNNING:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case FINISHED:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.l = Status.RUNNING;
        a();
        this.j.b = paramsArr;
        executor.execute(this.k);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Result result) {
        if (d()) {
            b((AsyncTask<Params, Progress, Result>) result);
        } else {
            a((AsyncTask<Params, Progress, Result>) result);
        }
        this.l = Status.FINISHED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b extends Handler {
        public b() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar = (a) message.obj;
            switch (message.what) {
                case 1:
                    aVar.f5688a.e(aVar.b[0]);
                    return;
                case 2:
                    aVar.f5688a.b((Object[]) aVar.b);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes3.dex */
    private static abstract class d<Params, Result> implements Callable<Result> {
        Params[] b;

        private d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a<Data> {

        /* renamed from: a  reason: collision with root package name */
        final AsyncTask f5688a;
        final Data[] b;

        a(AsyncTask asyncTask, Data... dataArr) {
            this.f5688a = asyncTask;
            this.b = dataArr;
        }
    }
}
