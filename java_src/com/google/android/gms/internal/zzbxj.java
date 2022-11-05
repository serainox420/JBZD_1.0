package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbxj extends zzbxn<zzbxj> {
    public int zzcsS = 0;
    public int zzcuw = 0;

    public zzbxj() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxj)) {
            return false;
        }
        zzbxj zzbxjVar = (zzbxj) obj;
        if (this.zzcsS != zzbxjVar.zzcsS || this.zzcuw != zzbxjVar.zzcuw) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbxjVar.zzcuI == null || zzbxjVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbxjVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + this.zzcuw) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.zzcuw != 0) {
            zzbxmVar.zzJ(2, this.zzcuw);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaL */
    public zzbxj zzb(zzbxl zzbxlVar) throws IOException {
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
                            this.zzcsS = zzaes;
                            continue;
                    }
                case 16:
                    int zzaes2 = zzbxlVar.zzaes();
                    switch (zzaes2) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            this.zzcuw = zzaes2;
                            continue;
                    }
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
        return this.zzcuw != 0 ? zzu + zzbxm.zzL(2, this.zzcuw) : zzu;
    }
}
