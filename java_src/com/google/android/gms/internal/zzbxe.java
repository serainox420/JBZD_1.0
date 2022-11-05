package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbxe extends zzbxn<zzbxe> {
    public int zzcsS = 0;
    public long zzcsT = 0;
    public int zzcuq = 0;

    public zzbxe() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxe)) {
            return false;
        }
        zzbxe zzbxeVar = (zzbxe) obj;
        if (this.zzcsS != zzbxeVar.zzcsS || this.zzcsT != zzbxeVar.zzcsT || this.zzcuq != zzbxeVar.zzcuq) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbxeVar.zzcuI == null || zzbxeVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbxeVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + ((int) (this.zzcsT ^ (this.zzcsT >>> 32)))) * 31) + this.zzcuq) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.zzcsT != 0) {
            zzbxmVar.zzb(2, this.zzcsT);
        }
        if (this.zzcuq != 0) {
            zzbxmVar.zzJ(3, this.zzcuq);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaG */
    public zzbxe zzb(zzbxl zzbxlVar) throws IOException {
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
                    this.zzcsT = zzbxlVar.zzaer();
                    break;
                case 24:
                    int zzaes2 = zzbxlVar.zzaes();
                    switch (zzaes2) {
                        case 0:
                        case 1:
                        case 2:
                            this.zzcuq = zzaes2;
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
        if (this.zzcsT != 0) {
            zzu += zzbxm.zzf(2, this.zzcsT);
        }
        return this.zzcuq != 0 ? zzu + zzbxm.zzL(3, this.zzcuq) : zzu;
    }
}
