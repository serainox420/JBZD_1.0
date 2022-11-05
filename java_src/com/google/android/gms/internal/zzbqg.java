package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqe;
/* loaded from: classes2.dex */
public class zzbqg extends zzbqe {
    private final zzbsc zzcgZ;

    public zzbqg(zzbqf zzbqfVar, zzbph zzbphVar, zzbsc zzbscVar) {
        super(zzbqe.zza.Overwrite, zzbqfVar, zzbphVar);
        this.zzcgZ = zzbscVar;
    }

    public String toString() {
        return String.format("Overwrite { path=%s, source=%s, snapshot=%s }", zzWM(), zzZy(), this.zzcgZ);
    }

    public zzbsc zzZE() {
        return this.zzcgZ;
    }

    @Override // com.google.android.gms.internal.zzbqe
    public zzbqe zzc(zzbrq zzbrqVar) {
        return this.zzcag.isEmpty() ? new zzbqg(this.zzcgL, zzbph.zzYP(), this.zzcgZ.zzm(zzbrqVar)) : new zzbqg(this.zzcgL, this.zzcag.zzYT(), this.zzcgZ);
    }
}
