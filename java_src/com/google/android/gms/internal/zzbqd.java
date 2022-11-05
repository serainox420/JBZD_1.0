package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqe;
/* loaded from: classes2.dex */
public class zzbqd extends zzbqe {
    private final zzboy zzcgJ;

    public zzbqd(zzbqf zzbqfVar, zzbph zzbphVar, zzboy zzboyVar) {
        super(zzbqe.zza.Merge, zzbqfVar, zzbphVar);
        this.zzcgJ = zzboyVar;
    }

    public String toString() {
        return String.format("Merge { path=%s, source=%s, children=%s }", zzWM(), zzZy(), this.zzcgJ);
    }

    public zzboy zzZx() {
        return this.zzcgJ;
    }

    @Override // com.google.android.gms.internal.zzbqe
    public zzbqe zzc(zzbrq zzbrqVar) {
        if (!this.zzcag.isEmpty()) {
            if (!this.zzcag.zzYS().equals(zzbrqVar)) {
                return null;
            }
            return new zzbqd(this.zzcgL, this.zzcag.zzYT(), this.zzcgJ);
        }
        zzboy zzg = this.zzcgJ.zzg(new zzbph(zzbrqVar));
        if (zzg.isEmpty()) {
            return null;
        }
        return zzg.zzYp() != null ? new zzbqg(this.zzcgL, zzbph.zzYP(), zzg.zzYp()) : new zzbqd(this.zzcgL, zzbph.zzYP(), zzg);
    }
}
