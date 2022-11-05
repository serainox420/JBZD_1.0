package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public class zzbnk implements Executor {
    private static zzbnk zzbZd = new zzbnk();
    private Handler mHandler = new Handler(Looper.getMainLooper());

    private zzbnk() {
    }

    public static zzbnk zzWu() {
        return zzbZd;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.mHandler.post(runnable);
    }
}
