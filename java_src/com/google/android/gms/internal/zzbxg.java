package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbxg extends zzbxn<zzbxg> {
    public int zzcsS = 0;
    public long zzcur = 0;
    public long zzcus = 0;

    public zzbxg() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxg)) {
            return false;
        }
        zzbxg zzbxgVar = (zzbxg) obj;
        if (this.zzcsS != zzbxgVar.zzcsS || this.zzcur != zzbxgVar.zzcur || this.zzcus != zzbxgVar.zzcus) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbxgVar.zzcuI == null || zzbxgVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbxgVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + ((int) (this.zzcur ^ (this.zzcur >>> 32)))) * 31) + ((int) (this.zzcus ^ (this.zzcus >>> 32)))) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.zzcur != 0) {
            zzbxmVar.zzb(3, this.zzcur);
        }
        if (this.zzcus != 0) {
            zzbxmVar.zzb(4, this.zzcus);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaI */
    public zzbxg zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 8:
                    int zzaes = zzbxlVar.zzaes();
                    switch (zzaes) {
                        case 0:
                        case 1:
                        case 2:
                            this.zzcsS = zzaes;
                            continue;
                    }
                case 24:
                    this.zzcur = zzbxlVar.zzaer();
                    break;
                case 32:
                    this.zzcus = zzbxlVar.zzaer();
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public int zzu() {
        int zzu = super.zzu();
        if (this.zzcsS != 0) {
            zzu += zzbxm.zzL(1, this.zzcsS);
        }
        if (this.zzcur != 0) {
            zzu += zzbxm.zzf(3, this.zzcur);
        }
        return this.zzcus != 0 ? zzu + zzbxm.zzf(4, this.zzcus) : zzu;
    }
}
