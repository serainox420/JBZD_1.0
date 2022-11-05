package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbqu {
    private final zzbrx zzchI;
    private final boolean zzchJ;
    private final boolean zzchK;

    public zzbqu(zzbrx zzbrxVar, boolean z, boolean z2) {
        this.zzchI = zzbrxVar;
        this.zzchJ = z;
        this.zzchK = z2;
    }

    public boolean zzM(zzbph zzbphVar) {
        return zzbphVar.isEmpty() ? zzZQ() && !this.zzchK : zzf(zzbphVar.zzYS());
    }

    public zzbsc zzWI() {
        return this.zzchI.zzWI();
    }

    public boolean zzZQ() {
        return this.zzchJ;
    }

    public boolean zzZR() {
        return this.zzchK;
    }

    public zzbrx zzZS() {
        return this.zzchI;
    }

    public boolean zzf(zzbrq zzbrqVar) {
        return (zzZQ() && !this.zzchK) || this.zzchI.zzWI().zzk(zzbrqVar);
    }
}
