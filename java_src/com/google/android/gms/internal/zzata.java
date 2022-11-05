package com.google.android.gms.internal;

import android.os.Looper;
/* loaded from: classes2.dex */
public class zzata {
    public static Looper zzJl() {
        com.google.android.gms.common.internal.zzac.zza(Looper.myLooper() != null, "Can't create handler inside thread that has not called Looper.prepare()");
        return Looper.myLooper();
    }

    public static Looper zzc(Looper looper) {
        return looper != null ? looper : zzJl();
    }
}
