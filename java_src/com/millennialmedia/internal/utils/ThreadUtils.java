package com.millennialmedia.internal.utils;

import android.os.Handler;
import android.os.Looper;
import com.millennialmedia.MMException;
import com.millennialmedia.MMLog;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class ThreadUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4182a = ThreadUtils.class.getSimpleName();
    private static Handler b;
    private static ExecutorService c;
    private static Handler d;

    /* loaded from: classes3.dex */
    public interface ScheduledRunnable extends Runnable {
        void cancel();
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.millennialmedia.internal.utils.ThreadUtils$1] */
    public static void initialize() throws MMException {
        boolean z;
        if (b != null) {
            MMLog.w(f4182a, "ThreadUtils already initialized");
            return;
        }
        b = new Handler(Looper.getMainLooper());
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread() { // from class: com.millennialmedia.internal.utils.ThreadUtils.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Looper.prepare();
                Handler unused = ThreadUtils.d = new Handler();
                countDownLatch.countDown();
                Looper.loop();
            }
        }.start();
        c = Executors.newCachedThreadPool();
        try {
            z = countDownLatch.await(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            MMLog.e(f4182a, "Failed to initialize latch", e);
            z = false;
        }
        if (!z) {
            throw new MMException("Failed to initialize ThreadUtils");
        }
    }

    public static void runOnUiThread(Runnable runnable) {
        if (isUiThread()) {
            runnable.run();
        } else {
            b.post(runnable);
        }
    }

    public static void runOffUiThread(Runnable runnable) {
        if (isUiThread()) {
            c.execute(runnable);
        } else {
            runnable.run();
        }
    }

    public static void runOnWorkerThread(Runnable runnable) {
        c.execute(runnable);
    }

    public static ScheduledRunnable runOnUiThreadDelayed(final Runnable runnable, long j) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable() { // from class: com.millennialmedia.internal.utils.ThreadUtils.2
            @Override // java.lang.Runnable
            public void run() {
                runnable.run();
            }

            @Override // com.millennialmedia.internal.utils.ThreadUtils.ScheduledRunnable
            public void cancel() {
                ThreadUtils.b.removeCallbacks(this);
            }
        };
        b.postDelayed(scheduledRunnable, j);
        return scheduledRunnable;
    }

    public static ScheduledRunnable runOnWorkerThreadDelayed(final Runnable runnable, long j) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable() { // from class: com.millennialmedia.internal.utils.ThreadUtils.3
            @Override // java.lang.Runnable
            public void run() {
                ThreadUtils.c.execute(runnable);
            }

            @Override // com.millennialmedia.internal.utils.ThreadUtils.ScheduledRunnable
            public void cancel() {
                ThreadUtils.d.removeCallbacks(this);
            }
        };
        d.postDelayed(scheduledRunnable, j);
        return scheduledRunnable;
    }

    public static boolean isUiThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
