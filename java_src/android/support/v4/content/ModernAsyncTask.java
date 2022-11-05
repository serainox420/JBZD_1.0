package android.support.v4.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
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
/* loaded from: classes.dex */
abstract class ModernAsyncTask<Params, Progress, Result> {
    private static b d;

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadFactory f288a = new ThreadFactory() { // from class: android.support.v4.content.ModernAsyncTask.1

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f289a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f289a.getAndIncrement());
        }
    };
    private static final BlockingQueue<Runnable> b = new LinkedBlockingQueue(10);
    public static final Executor c = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, b, f288a);
    private static volatile Executor e = c;
    private volatile Status h = Status.PENDING;
    private final AtomicBoolean i = new AtomicBoolean();
    private final AtomicBoolean j = new AtomicBoolean();
    private final c<Params, Result> f = new c<Params, Result>() { // from class: android.support.v4.content.ModernAsyncTask.2
        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            ModernAsyncTask.this.j.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) ModernAsyncTask.this.a((Object[]) this.b);
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    };
    private final FutureTask<Result> g = new FutureTask<Result>(this.f) { // from class: android.support.v4.content.ModernAsyncTask.3
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                ModernAsyncTask.this.c(get());
            } catch (InterruptedException e2) {
                Log.w("AsyncTask", e2);
            } catch (CancellationException e3) {
                ModernAsyncTask.this.c(null);
            } catch (ExecutionException e4) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e4.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    };

    /* loaded from: classes.dex */
    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Result a(Params... paramsArr);

    private static Handler a() {
        b bVar;
        synchronized (ModernAsyncTask.class) {
            if (d == null) {
                d = new b();
            }
            bVar = d;
        }
        return bVar;
    }

    void c(Result result) {
        if (!this.j.get()) {
            d(result);
        }
    }

    Result d(Result result) {
        a().obtainMessage(1, new a(this, result)).sendToTarget();
        return result;
    }

    protected void b() {
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
        return this.i.get();
    }

    public final boolean a(boolean z) {
        this.i.set(true);
        return this.g.cancel(z);
    }

    public final ModernAsyncTask<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.h != Status.PENDING) {
            switch (this.h) {
                case RUNNING:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case FINISHED:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.h = Status.RUNNING;
        b();
        this.f.b = paramsArr;
        executor.execute(this.g);
        return this;
    }

    void e(Result result) {
        if (d()) {
            b((ModernAsyncTask<Params, Progress, Result>) result);
        } else {
            a((ModernAsyncTask<Params, Progress, Result>) result);
        }
        this.h = Status.FINISHED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends Handler {
        public b() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar = (a) message.obj;
            switch (message.what) {
                case 1:
                    aVar.f294a.e(aVar.b[0]);
                    return;
                case 2:
                    aVar.f294a.b((Object[]) aVar.b);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    private static abstract class c<Params, Result> implements Callable<Result> {
        Params[] b;

        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a<Data> {

        /* renamed from: a  reason: collision with root package name */
        final ModernAsyncTask f294a;
        final Data[] b;

        a(ModernAsyncTask modernAsyncTask, Data... dataArr) {
            this.f294a = modernAsyncTask;
            this.b = dataArr;
        }
    }
}
