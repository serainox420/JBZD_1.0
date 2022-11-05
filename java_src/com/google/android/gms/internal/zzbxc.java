package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbxc extends zzbxn<zzbxc> {
    public int zzcsS = 0;
    public double zzcun = 0.0d;
    public double zzcuo = 0.0d;
    public long zzcsT = 0;
    public int[] zzcup = zzbxw.zzcuW;

    public zzbxc() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxc)) {
            return false;
        }
        zzbxc zzbxcVar = (zzbxc) obj;
        if (this.zzcsS != zzbxcVar.zzcsS || Double.doubleToLongBits(this.zzcun) != Double.doubleToLongBits(zzbxcVar.zzcun) || Double.doubleToLongBits(this.zzcuo) != Double.doubleToLongBits(zzbxcVar.zzcuo) || this.zzcsT != zzbxcVar.zzcsT || !zzbxr.equals(this.zzcup, zzbxcVar.zzcup)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbxcVar.zzcuI == null || zzbxcVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbxcVar.zzcuI);
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zzcun);
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzcuo);
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) (this.zzcsT ^ (this.zzcsT >>> 32)))) * 31) + zzbxr.hashCode(this.zzcup)) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (Double.doubleToLongBits(this.zzcun) != Double.doubleToLongBits(0.0d)) {
            zzbxmVar.zza(2, this.zzcun);
        }
        if (Double.doubleToLongBits(this.zzcuo) != Double.doubleToLongBits(0.0d)) {
            zzbxmVar.zza(3, this.zzcuo);
        }
        if (this.zzcsT != 0) {
            zzbxmVar.zzb(4, this.zzcsT);
        }
        if (this.zzcup != null && this.zzcup.length > 0) {
            for (int i = 0; i < this.zzcup.length; i++) {
                zzbxmVar.zzJ(5, this.zzcup[i]);
            }
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaE */
    public zzbxc zzb(zzbxl zzbxlVar) throws IOException {
        int i;
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
                            this.zzcsS = zzaes;
                            continue;
                    }
                case 17:
                    this.zzcun = zzbxlVar.readDouble();
                    break;
                case 25:
                    this.zzcuo = zzbxlVar.readDouble();
                    break;
                case 32:
                    this.zzcsT = zzbxlVar.zzaer();
                    break;
                case 40:
                    int zzb = zzbxw.zzb(zzbxlVar, 40);
                    int[] iArr = new int[zzb];
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < zzb) {
                        if (i2 != 0) {
                            zzbxlVar.zzaeo();
                        }
                        int zzaes2 = zzbxlVar.zzaes();
                        switch (zzaes2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                i = i3 + 1;
                                iArr[i3] = zzaes2;
                                break;
                            default:
                                i = i3;
                                break;
                        }
                        i2++;
                        i3 = i;
                    }
                    if (i3 != 0) {
                        int length = this.zzcup == null ? 0 : this.zzcup.length;
                        if (length != 0 || i3 != iArr.length) {
                            int[] iArr2 = new int[length + i3];
                            if (length != 0) {
                                System.arraycopy(this.zzcup, 0, iArr2, 0, length);
                            }
                            System.arraycopy(iArr, 0, iArr2, length, i3);
                            this.zzcup = iArr2;
                            break;
                        } else {
                            this.zzcup = iArr;
                            break;
                        }
                    } else {
                        break;
                    }
                case 42:
                    int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                    int position = zzbxlVar.getPosition();
                    int i4 = 0;
                    while (zzbxlVar.zzaeC() > 0) {
                        switch (zzbxlVar.zzaes()) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                i4++;
                                break;
                        }
                    }
                    if (i4 != 0) {
                        zzbxlVar.zzrc(position);
                        int length2 = this.zzcup == null ? 0 : this.zzcup.length;
                        int[] iArr3 = new int[i4 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzcup, 0, iArr3, 0, length2);
                        }
                        while (zzbxlVar.zzaeC() > 0) {
                            int zzaes3 = zzbxlVar.zzaes();
                            switch (zzaes3) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                    iArr3[length2] = zzaes3;
                                    length2++;
                                    break;
                            }
                        }
                        this.zzcup = iArr3;
                    }
                    zzbxlVar.zzrb(zzra);
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
        if (Double.doubleToLongBits(this.zzcun) != Double.doubleToLongBits(0.0d)) {
            zzu += zzbxm.zzb(2, this.zzcun);
        }
        if (Double.doubleToLongBits(this.zzcuo) != Double.doubleToLongBits(0.0d)) {
            zzu += zzbxm.zzb(3, this.zzcuo);
        }
        if (this.zzcsT != 0) {
            zzu += zzbxm.zzf(4, this.zzcsT);
        }
        if (this.zzcup == null || this.zzcup.length <= 0) {
            return zzu;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.zzcup.length; i2++) {
            i += zzbxm.zzrg(this.zzcup[i2]);
        }
        return zzu + i + (this.zzcup.length * 1);
    }
}
