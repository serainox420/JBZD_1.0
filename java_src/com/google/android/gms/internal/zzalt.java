package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzalt extends zzbxn<zzalt> {
    public long zzaOD;
    public long zzaOG;

    public zzalt() {
        zzBq();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzalt)) {
            return false;
        }
        zzalt zzaltVar = (zzalt) obj;
        if (this.zzaOG != zzaltVar.zzaOG || this.zzaOD != zzaltVar.zzaOD) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaltVar.zzcuI == null || zzaltVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaltVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzaOG ^ (this.zzaOG >>> 32)))) * 31) + ((int) (this.zzaOD ^ (this.zzaOD >>> 32)))) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzA */
    public zzalt zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 8:
                    this.zzaOG = zzbxlVar.zzaew();
                    break;
                case 16:
                    this.zzaOD = zzbxlVar.zzaew();
                    break;
                default:
                    if (super.zza(zzbxlVar, zzaeo)) {
                        break;
                    } else {
                        break;
                    }
            }
        }
        return this;
    }

    public zzalt zzBq() {
        this.zzaOG = -1L;
        this.zzaOD = -1L;
        this.zzcuI = null;
        this.zzcuR = -1;
        return this;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        zzbxmVar.zzd(1, this.zzaOG);
        zzbxmVar.zzd(2, this.zzaOD);
        super.zza(zzbxmVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public int zzu() {
        return super.zzu() + zzbxm.zzh(1, this.zzaOG) + zzbxm.zzh(2, this.zzaOD);
    }
}
