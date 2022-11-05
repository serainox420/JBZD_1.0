package bolts;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: AndroidExecutors.java */
/* loaded from: classes.dex */
final class a {
    private final Executor d = new ExecutorC0048a();
    private static final a c = new a();
    private static final int e = Runtime.getRuntime().availableProcessors();

    /* renamed from: a  reason: collision with root package name */
    static final int f930a = e + 1;
    static final int b = (e * 2) + 1;

    private a() {
    }

    public static ExecutorService a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f930a, b, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    @SuppressLint({"NewApi"})
    public static void a(ThreadPoolExecutor threadPoolExecutor, boolean z) {
        if (Build.VERSION.SDK_INT >= 9) {
            threadPoolExecutor.allowCoreThreadTimeOut(z);
        }
    }

    public static Executor b() {
        return c.d;
    }

    /* compiled from: AndroidExecutors.java */
    /* renamed from: bolts.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class ExecutorC0048a implements Executor {
        private ExecutorC0048a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }
}
