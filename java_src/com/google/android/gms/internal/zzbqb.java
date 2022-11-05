package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqe;
/* loaded from: classes2.dex */
public class zzbqb extends zzbqe {
    private final boolean zzcgH;
    private final zzbqq<Boolean> zzcgI;

    public zzbqb(zzbph zzbphVar, zzbqq<Boolean> zzbqqVar, boolean z) {
        super(zzbqe.zza.AckUserWrite, zzbqf.zzcgR, zzbphVar);
        this.zzcgI = zzbqqVar;
        this.zzcgH = z;
    }

    public String toString() {
        return String.format("AckUserWrite { path=%s, revert=%s, affectedTree=%s }", zzWM(), Boolean.valueOf(this.zzcgH), this.zzcgI);
    }

    public zzbqq<Boolean> zzZv() {
        return this.zzcgI;
    }

    public boolean zzZw() {
        return this.zzcgH;
    }

    @Override // com.google.android.gms.internal.zzbqe
    public zzbqe zzc(zzbrq zzbrqVar) {
        if (!this.zzcag.isEmpty()) {
            zzbte.zzb(this.zzcag.zzYS().equals(zzbrqVar), "operationForChild called for unrelated child.");
            return new zzbqb(this.zzcag.zzYT(), this.zzcgI, this.zzcgH);
        } else if (this.zzcgI.getValue() == null) {
            return new zzbqb(zzbph.zzYP(), this.zzcgI.zzI(new zzbph(zzbrqVar)), this.zzcgH);
        } else {
            zzbte.zzb(this.zzcgI.zzZO().isEmpty(), "affectedTree should not have overlapping affected paths.");
            return this;
        }
    }
}
