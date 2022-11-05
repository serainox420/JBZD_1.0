package io.fabric.sdk.android.services.common;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: ExecutorUtils.java */
/* loaded from: classes3.dex */
public final class m {
    public static ExecutorService a(String str) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(c(str));
        a(str, newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }

    public static ScheduledExecutorService b(String str) {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(c(str));
        a(str, newSingleThreadScheduledExecutor);
        return newSingleThreadScheduledExecutor;
    }

    public static final ThreadFactory c(final String str) {
        final AtomicLong atomicLong = new AtomicLong(1L);
        return new ThreadFactory() { // from class: io.fabric.sdk.android.services.common.m.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(final Runnable runnable) {
                Thread newThread = Executors.defaultThreadFactory().newThread(new h() { // from class: io.fabric.sdk.android.services.common.m.1.1
                    @Override // io.fabric.sdk.android.services.common.h
                    public void onRun() {
                        runnable.run();
                    }
                });
                newThread.setName(str + atomicLong.getAndIncrement());
                return newThread;
            }
        };
    }

    private static final void a(String str, ExecutorService executorService) {
        a(str, executorService, 2L, TimeUnit.SECONDS);
    }

    public static final void a(final String str, final ExecutorService executorService, final long j, final TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new h() { // from class: io.fabric.sdk.android.services.common.m.2
            @Override // io.fabric.sdk.android.services.common.h
            public void onRun() {
                try {
                    io.fabric.sdk.android.c.h().a("Fabric", "Executing shutdown hook for " + str);
                    executorService.shutdown();
                    if (!executorService.awaitTermination(j, timeUnit)) {
                        io.fabric.sdk.android.c.h().a("Fabric", str + " did not shut down in the allocated time. Requesting immediate shutdown.");
                        executorService.shutdownNow();
                    }
                } catch (InterruptedException e) {
                    io.fabric.sdk.android.c.h().a("Fabric", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", str));
                    executorService.shutdownNow();
                }
            }
        }, "Crashlytics Shutdown Hook for " + str));
    }
}
