package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbwn extends zzbxn<zzbwn> {
    public int zzcsS = 0;
    public long zzcsT = 0;
    public int zzcsV = 0;
    public int zzcsW = 0;
    public int zzcsX = 0;
    public int zzcsY = 0;
    public int zzcsZ = 0;
    public int zzcta = 0;

    public zzbwn() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbwn)) {
            return false;
        }
        zzbwn zzbwnVar = (zzbwn) obj;
        if (this.zzcsS != zzbwnVar.zzcsS || this.zzcsT != zzbwnVar.zzcsT || this.zzcsV != zzbwnVar.zzcsV || this.zzcsW != zzbwnVar.zzcsW || this.zzcsX != zzbwnVar.zzcsX || this.zzcsY != zzbwnVar.zzcsY || this.zzcsZ != zzbwnVar.zzcsZ || this.zzcta != zzbwnVar.zzcta) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwnVar.zzcuI == null || zzbwnVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwnVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + ((int) (this.zzcsT ^ (this.zzcsT >>> 32)))) * 31) + this.zzcsV) * 31) + this.zzcsW) * 31) + this.zzcsX) * 31) + this.zzcsY) * 31) + this.zzcsZ) * 31) + this.zzcta) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.zzcsT != 0) {
            zzbxmVar.zzb(2, this.zzcsT);
        }
        if (this.zzcsV != 0) {
            zzbxmVar.zzJ(3, this.zzcsV);
        }
        if (this.zzcsW != 0) {
            zzbxmVar.zzJ(4, this.zzcsW);
        }
        if (this.zzcsX != 0) {
            zzbxmVar.zzJ(5, this.zzcsX);
        }
        if (this.zzcsY != 0) {
            zzbxmVar.zzJ(6, this.zzcsY);
        }
        if (this.zzcsZ != 0) {
            zzbxmVar.zzJ(7, this.zzcsZ);
        }
        if (this.zzcta != 0) {
            zzbxmVar.zzJ(8, this.zzcta);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaj */
    public zzbwn zzb(zzbxl zzbxlVar) throws IOException {
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
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
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
                            this.zzcsV = zzaes2;
                            continue;
                    }
                case 32:
                    int zzaes3 = zzbxlVar.zzaes();
                    switch (zzaes3) {
                        case 0:
                        case 1:
                        case 2:
                            this.zzcsW = zzaes3;
                            continue;
                    }
                case 40:
                    int zzaes4 = zzbxlVar.zzaes();
                    switch (zzaes4) {
                        case 0:
                        case 1:
                        case 2:
                            this.zzcsX = zzaes4;
                            continue;
                    }
                case 48:
                    int zzaes5 = zzbxlVar.zzaes();
                    switch (zzaes5) {
                        case 0:
                        case 1:
                        case 2:
                            this.zzcsY = zzaes5;
                            continue;
                    }
                case 56:
                    int zzaes6 = zzbxlVar.zzaes();
                    switch (zzaes6) {
                        case 0:
                        case 1:
                        case 2:
                            this.zzcsZ = zzaes6;
                            continue;
                    }
                case 64:
                    int zzaes7 = zzbxlVar.zzaes();
                    switch (zzaes7) {
                        case 0:
                        case 1:
                        case 2:
                            this.zzcta = zzaes7;
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
        if (this.zzcsV != 0) {
            zzu += zzbxm.zzL(3, this.zzcsV);
        }
        if (this.zzcsW != 0) {
            zzu += zzbxm.zzL(4, this.zzcsW);
        }
        if (this.zzcsX != 0) {
            zzu += zzbxm.zzL(5, this.zzcsX);
        }
        if (this.zzcsY != 0) {
            zzu += zzbxm.zzL(6, this.zzcsY);
        }
        if (this.zzcsZ != 0) {
            zzu += zzbxm.zzL(7, this.zzcsZ);
        }
        return this.zzcta != 0 ? zzu + zzbxm.zzL(8, this.zzcta) : zzu;
    }
}
