package com.google.android.gms.internal;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public class zzbol {
    private final ScheduledExecutorService zzcat;
    private final zzbok zzcbD;
    private final zzbro zzcbE;
    private final boolean zzcbF;
    private final String zzcbG;
    private final String zzcbH;

    public zzbol(zzbro zzbroVar, zzbok zzbokVar, ScheduledExecutorService scheduledExecutorService, boolean z, String str, String str2) {
        this.zzcbE = zzbroVar;
        this.zzcbD = zzbokVar;
        this.zzcat = scheduledExecutorService;
        this.zzcbF = z;
        this.zzcbG = str;
        this.zzcbH = str2;
    }

    public zzbro zzXr() {
        return this.zzcbE;
    }

    public zzbok zzXs() {
        return this.zzcbD;
    }

    public ScheduledExecutorService zzXt() {
        return this.zzcat;
    }

    public boolean zzXu() {
        return this.zzcbF;
    }

    public String zzXv() {
        return this.zzcbG;
    }

    public String zzkn() {
        return this.zzcbH;
    }
}
