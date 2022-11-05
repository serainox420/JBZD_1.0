package com.google.android.gms.internal;

import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
@zzme
/* loaded from: classes.dex */
public final class zzpn {
    private static final ThreadPoolExecutor zzXu = new ThreadPoolExecutor(10, 10, 1, TimeUnit.MINUTES, new LinkedBlockingQueue(), zzaW("Default"));
    private static final ThreadPoolExecutor zzXv = new ThreadPoolExecutor(5, 5, 1, TimeUnit.MINUTES, new LinkedBlockingQueue(), zzaW("Loader"));

    static {
        zzXu.allowCoreThreadTimeOut(true);
        zzXv.allowCoreThreadTimeOut(true);
    }

    public static zzqm<Void> zza(int i, final Runnable runnable) {
        return i == 1 ? zza(zzXv, new Callable<Void>() { // from class: com.google.android.gms.internal.zzpn.1
            @Override // java.util.concurrent.Callable
            /* renamed from: zzbk */
            public Void call() {
                runnable.run();
                return null;
            }
        }) : zza(zzXu, new Callable<Void>() { // from class: com.google.android.gms.internal.zzpn.2
            @Override // java.util.concurrent.Callable
            /* renamed from: zzbk */
            public Void call() {
                runnable.run();
                return null;
            }
        });
    }

    public static zzqm<Void> zza(Runnable runnable) {
        return zza(0, runnable);
    }

    public static <T> zzqm<T> zza(Callable<T> callable) {
        return zza(zzXu, callable);
    }

    public static <T> zzqm<T> zza(ExecutorService executorService, final Callable<T> callable) {
        final zzqj zzqjVar = new zzqj();
        try {
            final Future<?> submit = executorService.submit(new Runnable() { // from class: com.google.android.gms.internal.zzpn.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Process.setThreadPriority(10);
                        zzqj.this.zzh(callable.call());
                    } catch (Exception e) {
                        com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "AdThreadPool.submit");
                        zzqj.this.zze(e);
                    }
                }
            });
            zzqjVar.zzd(new Runnable() { // from class: com.google.android.gms.internal.zzpn.4
                @Override // java.lang.Runnable
                public void run() {
                    if (zzqj.this.isCancelled()) {
                        submit.cancel(true);
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            zzpk.zzc("Thread execution is rejected.", e);
            zzqjVar.cancel(true);
        }
        return zzqjVar;
    }

    private static ThreadFactory zzaW(final String str) {
        return new ThreadFactory() { // from class: com.google.android.gms.internal.zzpn.5
            private final AtomicInteger zzXA = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                String str2 = str;
                return new Thread(runnable, new StringBuilder(String.valueOf(str2).length() + 23).append("AdWorker(").append(str2).append(") #").append(this.zzXA.getAndIncrement()).toString());
            }
        };
    }
}
