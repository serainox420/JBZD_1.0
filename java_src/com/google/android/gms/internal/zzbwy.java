package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbwy extends zzbxn<zzbwy> {
    public int zzcsS = 0;
    public long zzcsT = 0;
    public int[] zzcuj = zzbxw.zzcuW;
    public int[] zzcuk = zzbxw.zzcuW;

    public zzbwy() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbwy)) {
            return false;
        }
        zzbwy zzbwyVar = (zzbwy) obj;
        if (this.zzcsS != zzbwyVar.zzcsS || this.zzcsT != zzbwyVar.zzcsT || !zzbxr.equals(this.zzcuj, zzbwyVar.zzcuj) || !zzbxr.equals(this.zzcuk, zzbwyVar.zzcuk)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwyVar.zzcuI == null || zzbwyVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwyVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + ((int) (this.zzcsT ^ (this.zzcsT >>> 32)))) * 31) + zzbxr.hashCode(this.zzcuj)) * 31) + zzbxr.hashCode(this.zzcuk)) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.zzcsT != 0) {
            zzbxmVar.zzb(2, this.zzcsT);
        }
        if (this.zzcuj != null && this.zzcuj.length > 0) {
            for (int i = 0; i < this.zzcuj.length; i++) {
                zzbxmVar.zzJ(3, this.zzcuj[i]);
            }
        }
        if (this.zzcuk != null && this.zzcuk.length > 0) {
            for (int i2 = 0; i2 < this.zzcuk.length; i2++) {
                zzbxmVar.zzJ(4, this.zzcuk[i2]);
            }
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaA */
    public zzbwy zzb(zzbxl zzbxlVar) throws IOException {
        int i;
        int i2;
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
                case 16:
                    this.zzcsT = zzbxlVar.zzaer();
                    break;
                case 24:
                    int zzb = zzbxw.zzb(zzbxlVar, 24);
                    int[] iArr = new int[zzb];
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < zzb) {
                        if (i3 != 0) {
                            zzbxlVar.zzaeo();
                        }
                        int zzaes2 = zzbxlVar.zzaes();
                        switch (zzaes2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                i2 = i4 + 1;
                                iArr[i4] = zzaes2;
                                break;
                            default:
                                i2 = i4;
                                break;
                        }
                        i3++;
                        i4 = i2;
                    }
                    if (i4 != 0) {
                        int length = this.zzcuj == null ? 0 : this.zzcuj.length;
                        if (length != 0 || i4 != iArr.length) {
                            int[] iArr2 = new int[length + i4];
                            if (length != 0) {
                                System.arraycopy(this.zzcuj, 0, iArr2, 0, length);
                            }
                            System.arraycopy(iArr, 0, iArr2, length, i4);
                            this.zzcuj = iArr2;
                            break;
                        } else {
                            this.zzcuj = iArr;
                            break;
                        }
                    } else {
                        break;
                    }
                case 26:
                    int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                    int position = zzbxlVar.getPosition();
                    int i5 = 0;
                    while (zzbxlVar.zzaeC() > 0) {
                        switch (zzbxlVar.zzaes()) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                i5++;
                                break;
                        }
                    }
                    if (i5 != 0) {
                        zzbxlVar.zzrc(position);
                        int length2 = this.zzcuj == null ? 0 : this.zzcuj.length;
                        int[] iArr3 = new int[i5 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzcuj, 0, iArr3, 0, length2);
                        }
                        while (zzbxlVar.zzaeC() > 0) {
                            int zzaes3 = zzbxlVar.zzaes();
                            switch (zzaes3) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                    iArr3[length2] = zzaes3;
                                    length2++;
                                    break;
                            }
                        }
                        this.zzcuj = iArr3;
                    }
                    zzbxlVar.zzrb(zzra);
                    break;
                case 32:
                    int zzb2 = zzbxw.zzb(zzbxlVar, 32);
                    int[] iArr4 = new int[zzb2];
                    int i6 = 0;
                    int i7 = 0;
                    while (i6 < zzb2) {
                        if (i6 != 0) {
                            zzbxlVar.zzaeo();
                        }
                        int zzaes4 = zzbxlVar.zzaes();
                        switch (zzaes4) {
                            case 0:
                            case 1:
                            case 2:
                                i = i7 + 1;
                                iArr4[i7] = zzaes4;
                                break;
                            default:
                                i = i7;
                                break;
                        }
                        i6++;
                        i7 = i;
                    }
                    if (i7 != 0) {
                        int length3 = this.zzcuk == null ? 0 : this.zzcuk.length;
                        if (length3 != 0 || i7 != iArr4.length) {
                            int[] iArr5 = new int[length3 + i7];
                            if (length3 != 0) {
                                System.arraycopy(this.zzcuk, 0, iArr5, 0, length3);
                            }
                            System.arraycopy(iArr4, 0, iArr5, length3, i7);
                            this.zzcuk = iArr5;
                            break;
                        } else {
                            this.zzcuk = iArr4;
                            break;
                        }
                    } else {
                        break;
                    }
                case 34:
                    int zzra2 = zzbxlVar.zzra(zzbxlVar.zzaex());
                    int position2 = zzbxlVar.getPosition();
                    int i8 = 0;
                    while (zzbxlVar.zzaeC() > 0) {
                        switch (zzbxlVar.zzaes()) {
                            case 0:
                            case 1:
                            case 2:
                                i8++;
                                break;
                        }
                    }
                    if (i8 != 0) {
                        zzbxlVar.zzrc(position2);
                        int length4 = this.zzcuk == null ? 0 : this.zzcuk.length;
                        int[] iArr6 = new int[i8 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzcuk, 0, iArr6, 0, length4);
                        }
                        while (zzbxlVar.zzaeC() > 0) {
                            int zzaes5 = zzbxlVar.zzaes();
                            switch (zzaes5) {
                                case 0:
                                case 1:
                                case 2:
                                    iArr6[length4] = zzaes5;
                                    length4++;
                                    break;
                            }
                        }
                        this.zzcuk = iArr6;
                    }
                    zzbxlVar.zzrb(zzra2);
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
        if (this.zzcsT != 0) {
            zzu += zzbxm.zzf(2, this.zzcsT);
        }
        if (this.zzcuj != null && this.zzcuj.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzcuj.length; i2++) {
                i += zzbxm.zzrg(this.zzcuj[i2]);
            }
            zzu = zzu + i + (this.zzcuj.length * 1);
        }
        if (this.zzcuk == null || this.zzcuk.length <= 0) {
            return zzu;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.zzcuk.length; i4++) {
            i3 += zzbxm.zzrg(this.zzcuk[i4]);
        }
        return zzu + i3 + (this.zzcuk.length * 1);
    }
}
