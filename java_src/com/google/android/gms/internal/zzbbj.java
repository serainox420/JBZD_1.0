package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzbbj extends ThreadPoolExecutor {
    private final Context mContext;

    public zzbbj(Context context, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory);
        this.mContext = context;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        if (th != null) {
            zzbbe.zza("Uncaught exception: ", th, this.mContext);
        }
    }
}
