package com.google.android.gms.internal;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
class zzbpu implements zzbpe {
    private final ThreadPoolExecutor zzcgm;

    public zzbpu(final ThreadFactory threadFactory, final zzbpt zzbptVar) {
        this.zzcgm = new ThreadPoolExecutor(1, 1, 3L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory(this) { // from class: com.google.android.gms.internal.zzbpu.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread newThread = threadFactory.newThread(runnable);
                zzbptVar.zza(newThread, "FirebaseDatabaseEventTarget");
                zzbptVar.zza(newThread, true);
                return newThread;
            }
        });
    }

    @Override // com.google.android.gms.internal.zzbpe
    public void restart() {
        this.zzcgm.setCorePoolSize(1);
    }

    @Override // com.google.android.gms.internal.zzbpe
    public void shutdown() {
        this.zzcgm.setCorePoolSize(0);
    }

    @Override // com.google.android.gms.internal.zzbpe
    public void zzq(Runnable runnable) {
        this.zzcgm.execute(runnable);
    }
}
