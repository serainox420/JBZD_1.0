package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbwx extends zzbxn<zzbwx> {
    public int zzcsS = 0;
    public int zzcud = 0;
    public long zzcsT = 0;
    public int zzcue = 0;
    public int zzcuf = 0;
    public double zzcug = 0.0d;
    public double zzcuh = 0.0d;
    public long zzcui = 0;

    public zzbwx() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbwx)) {
            return false;
        }
        zzbwx zzbwxVar = (zzbwx) obj;
        if (this.zzcsS != zzbwxVar.zzcsS || this.zzcud != zzbwxVar.zzcud || this.zzcsT != zzbwxVar.zzcsT || this.zzcue != zzbwxVar.zzcue || this.zzcuf != zzbwxVar.zzcuf || Double.doubleToLongBits(this.zzcug) != Double.doubleToLongBits(zzbwxVar.zzcug) || Double.doubleToLongBits(this.zzcuh) != Double.doubleToLongBits(zzbwxVar.zzcuh) || this.zzcui != zzbwxVar.zzcui) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwxVar.zzcuI == null || zzbwxVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwxVar.zzcuI);
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zzcug);
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzcuh);
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + this.zzcud) * 31) + ((int) (this.zzcsT ^ (this.zzcsT >>> 32)))) * 31) + this.zzcue) * 31) + this.zzcuf) * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) (this.zzcui ^ (this.zzcui >>> 32)))) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.zzcud != 0) {
            zzbxmVar.zzJ(2, this.zzcud);
        }
        if (this.zzcsT != 0) {
            zzbxmVar.zzb(3, this.zzcsT);
        }
        if (this.zzcue != 0) {
            zzbxmVar.zzJ(4, this.zzcue);
        }
        if (this.zzcuf != 0) {
            zzbxmVar.zzJ(5, this.zzcuf);
        }
        if (Double.doubleToLongBits(this.zzcug) != Double.doubleToLongBits(0.0d)) {
            zzbxmVar.zza(6, this.zzcug);
        }
        if (Double.doubleToLongBits(this.zzcuh) != Double.doubleToLongBits(0.0d)) {
            zzbxmVar.zza(7, this.zzcuh);
        }
        if (this.zzcui != 0) {
            zzbxmVar.zzb(8, this.zzcui);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaz */
    public zzbwx zzb(zzbxl zzbxlVar) throws IOException {
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
                            this.zzcud = zzaes2;
                            continue;
                    }
                case 24:
                    this.zzcsT = zzbxlVar.zzaer();
                    break;
                case 32:
                    this.zzcue = zzbxlVar.zzaes();
                    break;
                case 40:
                    this.zzcuf = zzbxlVar.zzaes();
                    break;
                case 49:
                    this.zzcug = zzbxlVar.readDouble();
                    break;
                case 57:
                    this.zzcuh = zzbxlVar.readDouble();
                    break;
                case 64:
                    this.zzcui = zzbxlVar.zzaer();
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
        if (this.zzcud != 0) {
            zzu += zzbxm.zzL(2, this.zzcud);
        }
        if (this.zzcsT != 0) {
            zzu += zzbxm.zzf(3, this.zzcsT);
        }
        if (this.zzcue != 0) {
            zzu += zzbxm.zzL(4, this.zzcue);
        }
        if (this.zzcuf != 0) {
            zzu += zzbxm.zzL(5, this.zzcuf);
        }
        if (Double.doubleToLongBits(this.zzcug) != Double.doubleToLongBits(0.0d)) {
            zzu += zzbxm.zzb(6, this.zzcug);
        }
        if (Double.doubleToLongBits(this.zzcuh) != Double.doubleToLongBits(0.0d)) {
            zzu += zzbxm.zzb(7, this.zzcuh);
        }
        return this.zzcui != 0 ? zzu + zzbxm.zzf(8, this.zzcui) : zzu;
    }
}
