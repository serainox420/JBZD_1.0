package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbxb extends zzbxn<zzbxb> {
    public int zzcsS = 0;
    public long zzcsT = 0;
    public int[] zzctV = zzbxw.zzcuW;
    public String[] zzctW = zzbxw.zzcvb;
    public long zzcui = 0;
    public String[] zzcum = zzbxw.zzcvb;
    public String zzctZ = "";

    public zzbxb() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxb)) {
            return false;
        }
        zzbxb zzbxbVar = (zzbxb) obj;
        if (this.zzcsS != zzbxbVar.zzcsS || this.zzcsT != zzbxbVar.zzcsT || !zzbxr.equals(this.zzctV, zzbxbVar.zzctV) || !zzbxr.equals(this.zzctW, zzbxbVar.zzctW) || this.zzcui != zzbxbVar.zzcui || !zzbxr.equals(this.zzcum, zzbxbVar.zzcum)) {
            return false;
        }
        if (this.zzctZ == null) {
            if (zzbxbVar.zzctZ != null) {
                return false;
            }
        } else if (!this.zzctZ.equals(zzbxbVar.zzctZ)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbxbVar.zzcuI == null || zzbxbVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbxbVar.zzcuI);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.zzctZ == null ? 0 : this.zzctZ.hashCode()) + ((((((((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + ((int) (this.zzcsT ^ (this.zzcsT >>> 32)))) * 31) + zzbxr.hashCode(this.zzctV)) * 31) + zzbxr.hashCode(this.zzctW)) * 31) + ((int) (this.zzcui ^ (this.zzcui >>> 32)))) * 31) + zzbxr.hashCode(this.zzcum)) * 31)) * 31;
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
        if (this.zzcsT != 0) {
            zzbxmVar.zzb(2, this.zzcsT);
        }
        if (this.zzctV != null && this.zzctV.length > 0) {
            for (int i = 0; i < this.zzctV.length; i++) {
                zzbxmVar.zzJ(3, this.zzctV[i]);
            }
        }
        if (this.zzctW != null && this.zzctW.length > 0) {
            for (int i2 = 0; i2 < this.zzctW.length; i2++) {
                String str = this.zzctW[i2];
                if (str != null) {
                    zzbxmVar.zzq(4, str);
                }
            }
        }
        if (this.zzcui != 0) {
            zzbxmVar.zzb(5, this.zzcui);
        }
        if (this.zzcum != null && this.zzcum.length > 0) {
            for (int i3 = 0; i3 < this.zzcum.length; i3++) {
                String str2 = this.zzcum[i3];
                if (str2 != null) {
                    zzbxmVar.zzq(6, str2);
                }
            }
        }
        if (this.zzctZ != null && !this.zzctZ.equals("")) {
            zzbxmVar.zzq(7, this.zzctZ);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaD */
    public zzbxb zzb(zzbxl zzbxlVar) throws IOException {
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
                            this.zzcsS = zzaes;
                            continue;
                    }
                case 16:
                    this.zzcsT = zzbxlVar.zzaer();
                    break;
                case 24:
                    int zzb = zzbxw.zzb(zzbxlVar, 24);
                    int length = this.zzctV == null ? 0 : this.zzctV.length;
                    int[] iArr = new int[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzctV, 0, iArr, 0, length);
                    }
                    while (length < iArr.length - 1) {
                        iArr[length] = zzbxlVar.zzaes();
                        zzbxlVar.zzaeo();
                        length++;
                    }
                    iArr[length] = zzbxlVar.zzaes();
                    this.zzctV = iArr;
                    break;
                case 26:
                    int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                    int position = zzbxlVar.getPosition();
                    int i = 0;
                    while (zzbxlVar.zzaeC() > 0) {
                        zzbxlVar.zzaes();
                        i++;
                    }
                    zzbxlVar.zzrc(position);
                    int length2 = this.zzctV == null ? 0 : this.zzctV.length;
                    int[] iArr2 = new int[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzctV, 0, iArr2, 0, length2);
                    }
                    while (length2 < iArr2.length) {
                        iArr2[length2] = zzbxlVar.zzaes();
                        length2++;
                    }
                    this.zzctV = iArr2;
                    zzbxlVar.zzrb(zzra);
                    break;
                case 34:
                    int zzb2 = zzbxw.zzb(zzbxlVar, 34);
                    int length3 = this.zzctW == null ? 0 : this.zzctW.length;
                    String[] strArr = new String[zzb2 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzctW, 0, strArr, 0, length3);
                    }
                    while (length3 < strArr.length - 1) {
                        strArr[length3] = zzbxlVar.readString();
                        zzbxlVar.zzaeo();
                        length3++;
                    }
                    strArr[length3] = zzbxlVar.readString();
                    this.zzctW = strArr;
                    break;
                case 40:
                    this.zzcui = zzbxlVar.zzaer();
                    break;
                case 50:
                    int zzb3 = zzbxw.zzb(zzbxlVar, 50);
                    int length4 = this.zzcum == null ? 0 : this.zzcum.length;
                    String[] strArr2 = new String[zzb3 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.zzcum, 0, strArr2, 0, length4);
                    }
                    while (length4 < strArr2.length - 1) {
                        strArr2[length4] = zzbxlVar.readString();
                        zzbxlVar.zzaeo();
                        length4++;
                    }
                    strArr2[length4] = zzbxlVar.readString();
                    this.zzcum = strArr2;
                    break;
                case 58:
                    this.zzctZ = zzbxlVar.readString();
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
        if (this.zzctV != null && this.zzctV.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzctV.length; i2++) {
                i += zzbxm.zzrg(this.zzctV[i2]);
            }
            zzu = zzu + i + (this.zzctV.length * 1);
        }
        if (this.zzctW != null && this.zzctW.length > 0) {
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < this.zzctW.length; i5++) {
                String str = this.zzctW[i5];
                if (str != null) {
                    i4++;
                    i3 += zzbxm.zzkb(str);
                }
            }
            zzu = zzu + i3 + (i4 * 1);
        }
        if (this.zzcui != 0) {
            zzu += zzbxm.zzf(5, this.zzcui);
        }
        if (this.zzcum != null && this.zzcum.length > 0) {
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < this.zzcum.length; i8++) {
                String str2 = this.zzcum[i8];
                if (str2 != null) {
                    i7++;
                    i6 += zzbxm.zzkb(str2);
                }
            }
            zzu = zzu + i6 + (i7 * 1);
        }
        return (this.zzctZ == null || this.zzctZ.equals("")) ? zzu : zzu + zzbxm.zzr(7, this.zzctZ);
    }
}
