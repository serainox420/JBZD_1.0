package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrr;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzbpp {
    private zzbsc zzcfD = null;
    private Map<zzbrq, zzbpp> zzcfE = null;

    /* loaded from: classes2.dex */
    public interface zza {
        void zza(zzbrq zzbrqVar, zzbpp zzbppVar);
    }

    /* loaded from: classes2.dex */
    public interface zzb {
        void zzf(zzbph zzbphVar, zzbsc zzbscVar);
    }

    public void zza(final zzbph zzbphVar, final zzb zzbVar) {
        if (this.zzcfD != null) {
            zzbVar.zzf(zzbphVar, this.zzcfD);
        } else {
            zza(new zza(this) { // from class: com.google.android.gms.internal.zzbpp.2
                @Override // com.google.android.gms.internal.zzbpp.zza
                public void zza(zzbrq zzbrqVar, zzbpp zzbppVar) {
                    zzbppVar.zza(zzbphVar.zza(zzbrqVar), zzbVar);
                }
            });
        }
    }

    public void zza(zza zzaVar) {
        if (this.zzcfE != null) {
            for (Map.Entry<zzbrq, zzbpp> entry : this.zzcfE.entrySet()) {
                zzaVar.zza(entry.getKey(), entry.getValue());
            }
        }
    }

    public void zzh(zzbph zzbphVar, zzbsc zzbscVar) {
        if (zzbphVar.isEmpty()) {
            this.zzcfD = zzbscVar;
            this.zzcfE = null;
        } else if (this.zzcfD != null) {
            this.zzcfD = this.zzcfD.zzl(zzbphVar, zzbscVar);
        } else {
            if (this.zzcfE == null) {
                this.zzcfE = new HashMap();
            }
            zzbrq zzYS = zzbphVar.zzYS();
            if (!this.zzcfE.containsKey(zzYS)) {
                this.zzcfE.put(zzYS, new zzbpp());
            }
            this.zzcfE.get(zzYS).zzh(zzbphVar.zzYT(), zzbscVar);
        }
    }

    public boolean zzr(final zzbph zzbphVar) {
        if (zzbphVar.isEmpty()) {
            this.zzcfD = null;
            this.zzcfE = null;
            return true;
        } else if (this.zzcfD != null) {
            if (this.zzcfD.zzaaN()) {
                return false;
            }
            this.zzcfD = null;
            ((zzbrr) this.zzcfD).zza(new zzbrr.zza() { // from class: com.google.android.gms.internal.zzbpp.1
                @Override // com.google.android.gms.internal.zzbrr.zza
                public void zzb(zzbrq zzbrqVar, zzbsc zzbscVar) {
                    zzbpp.this.zzh(zzbphVar.zza(zzbrqVar), zzbscVar);
                }
            });
            return zzr(zzbphVar);
        } else if (this.zzcfE == null) {
            return true;
        } else {
            zzbrq zzYS = zzbphVar.zzYS();
            zzbph zzYT = zzbphVar.zzYT();
            if (this.zzcfE.containsKey(zzYS) && this.zzcfE.get(zzYS).zzr(zzYT)) {
                this.zzcfE.remove(zzYS);
            }
            if (!this.zzcfE.isEmpty()) {
                return false;
            }
            this.zzcfE = null;
            return true;
        }
    }
}
