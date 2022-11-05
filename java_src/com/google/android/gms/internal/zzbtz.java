package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.firebase.storage.a;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public class zzbtz {
    static boolean zzcoI = false;
    private final Handler mHandler;
    private final Executor zzbFM;

    public zzbtz(Executor executor) {
        this.zzbFM = executor;
        if (this.zzbFM == null) {
            this.mHandler = new Handler(Looper.getMainLooper());
        } else {
            this.mHandler = null;
        }
    }

    public void zzy(Runnable runnable) {
        com.google.android.gms.common.internal.zzac.zzw(runnable);
        if (this.mHandler != null) {
            this.mHandler.post(runnable);
        } else if (this.zzbFM != null) {
            this.zzbFM.execute(runnable);
        } else {
            a.a().a(runnable);
        }
    }
}
