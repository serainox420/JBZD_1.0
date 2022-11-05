package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
public class zzbnu implements zzbpe {
    private final Handler handler = new Handler(Looper.getMainLooper());

    @Override // com.google.android.gms.internal.zzbpe
    public void restart() {
    }

    @Override // com.google.android.gms.internal.zzbpe
    public void shutdown() {
    }

    @Override // com.google.android.gms.internal.zzbpe
    public void zzq(Runnable runnable) {
        this.handler.post(runnable);
    }
}
