package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
class zzbcl {

    /* loaded from: classes2.dex */
    private static class zza {
        private static volatile ExecutorService zzbLh = null;

        private zza() {
        }

        public static ExecutorService zzch(Context context) {
            if (zzbLh == null) {
                synchronized (zza.class) {
                    if (zzbLh == null) {
                        zzbLh = new zzbbj(context, 1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.google.android.gms.internal.zzbcl.zza.1
                            @Override // java.util.concurrent.ThreadFactory
                            public Thread newThread(Runnable runnable) {
                                return new Thread(runnable, "google-tag-manager-background-thread");
                            }
                        });
                    }
                }
            }
            return zzbLh;
        }
    }

    /* loaded from: classes2.dex */
    private static class zzb {
        private static final ScheduledExecutorService zzbLi = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.google.android.gms.internal.zzbcl.zzb.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "google-tag-manager-scheduler-thread");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScheduledExecutorService zzSw() {
        return zzb.zzbLi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService zzcg(Context context) {
        return zza.zzch(context);
    }
}
