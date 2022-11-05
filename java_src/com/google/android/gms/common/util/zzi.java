package com.google.android.gms.common.util;

import android.os.SystemClock;
/* loaded from: classes2.dex */
public class zzi implements zze {
    private static zzi zzaHY = new zzi();

    private zzi() {
    }

    public static zze zzzc() {
        return zzaHY;
    }

    @Override // com.google.android.gms.common.util.zze
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.zze
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.zze
    public long nanoTime() {
        return System.nanoTime();
    }
}
