package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbxi extends zzbxn<zzbxi> {
    public zzbwt zzcuv;
    public int zzcsS = 0;
    public String zzcut = "";
    public long zzaKx = 0;
    public long zzcuu = 0;

    public zzbxi() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxi)) {
            return false;
        }
        zzbxi zzbxiVar = (zzbxi) obj;
        if (this.zzcsS != zzbxiVar.zzcsS) {
            return false;
        }
        if (this.zzcut == null) {
            if (zzbxiVar.zzcut != null) {
                return false;
            }
        } else if (!this.zzcut.equals(zzbxiVar.zzcut)) {
            return false;
        }
        if (this.zzaKx != zzbxiVar.zzaKx || this.zzcuu != zzbxiVar.zzcuu) {
            return false;
        }
        if (this.zzcuv == null) {
            if (zzbxiVar.zzcuv != null) {
                return false;
            }
        } else if (!this.zzcuv.equals(zzbxiVar.zzcuv)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbxiVar.zzcuI == null || zzbxiVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbxiVar.zzcuI);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.zzcuv == null ? 0 : this.zzcuv.hashCode()) + (((((((this.zzcut == null ? 0 : this.zzcut.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31)) * 31) + ((int) (this.zzaKx ^ (this.zzaKx >>> 32)))) * 31) + ((int) (this.zzcuu ^ (this.zzcuu >>> 32)))) * 31)) * 31;
        if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
            i = this.zzcuI.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.zzcut != null && !this.zzcut.equals("")) {
            zzbxmVar.zzq(2, this.zzcut);
        }
        if (this.zzaKx != 0) {
            zzbxmVar.zzb(3, this.zzaKx);
        }
        if (this.zzcuu != 0) {
            zzbxmVar.zzb(4, this.zzcuu);
        }
        if (this.zzcuv != null) {
            zzbxmVar.zza(5, this.zzcuv);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaK */
    public zzbxi zzb(zzbxl zzbxlVar) throws IOException {
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
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                            this.zzcsS = zzaes;
                            continue;
                    }
                case 18:
                    this.zzcut = zzbxlVar.readString();
                    break;
                case 24:
                    this.zzaKx = zzbxlVar.zzaer();
                    break;
                case 32:
                    this.zzcuu = zzbxlVar.zzaer();
                    break;
                case 42:
                    if (this.zzcuv == null) {
                        this.zzcuv = new zzbwt();
                    }
                    zzbxlVar.zza(this.zzcuv);
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
        if (this.zzcut != null && !this.zzcut.equals("")) {
            zzu += zzbxm.zzr(2, this.zzcut);
        }
        if (this.zzaKx != 0) {
            zzu += zzbxm.zzf(3, this.zzaKx);
        }
        if (this.zzcuu != 0) {
            zzu += zzbxm.zzf(4, this.zzcuu);
        }
        return this.zzcuv != null ? zzu + zzbxm.zzc(5, this.zzcuv) : zzu;
    }
}
