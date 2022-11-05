package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzblo extends zzbxn<zzblo> {
    public String[] zzbWx;
    public int[] zzbWy;
    public byte[][] zzbWz;

    public zzblo() {
        zzUT();
    }

    public static zzblo zzT(byte[] bArr) throws zzbxs {
        return (zzblo) zzbxt.zza(new zzblo(), bArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzblo)) {
            return false;
        }
        zzblo zzbloVar = (zzblo) obj;
        if (!zzbxr.equals(this.zzbWx, zzbloVar.zzbWx) || !zzbxr.equals(this.zzbWy, zzbloVar.zzbWy) || !zzbxr.zza(this.zzbWz, zzbloVar.zzbWz)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbloVar.zzcuI == null || zzbloVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbloVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzbWx)) * 31) + zzbxr.hashCode(this.zzbWy)) * 31) + zzbxr.zzb(this.zzbWz)) * 31);
    }

    public zzblo zzUT() {
        this.zzbWx = zzbxw.zzcvb;
        this.zzbWy = zzbxw.zzcuW;
        this.zzbWz = zzbxw.zzcvc;
        this.zzcuI = null;
        this.zzcuR = -1;
        return this;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzbWx != null && this.zzbWx.length > 0) {
            for (int i = 0; i < this.zzbWx.length; i++) {
                String str = this.zzbWx[i];
                if (str != null) {
                    zzbxmVar.zzq(1, str);
                }
            }
        }
        if (this.zzbWy != null && this.zzbWy.length > 0) {
            for (int i2 = 0; i2 < this.zzbWy.length; i2++) {
                zzbxmVar.zzJ(2, this.zzbWy[i2]);
            }
        }
        if (this.zzbWz != null && this.zzbWz.length > 0) {
            for (int i3 = 0; i3 < this.zzbWz.length; i3++) {
                byte[] bArr = this.zzbWz[i3];
                if (bArr != null) {
                    zzbxmVar.zzb(3, bArr);
                }
            }
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzab */
    public zzblo zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 10:
                    int zzb = zzbxw.zzb(zzbxlVar, 10);
                    int length = this.zzbWx == null ? 0 : this.zzbWx.length;
                    String[] strArr = new String[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzbWx, 0, strArr, 0, length);
                    }
                    while (length < strArr.length - 1) {
                        strArr[length] = zzbxlVar.readString();
                        zzbxlVar.zzaeo();
                        length++;
                    }
                    strArr[length] = zzbxlVar.readString();
                    this.zzbWx = strArr;
                    break;
                case 16:
                    int zzb2 = zzbxw.zzb(zzbxlVar, 16);
                    int length2 = this.zzbWy == null ? 0 : this.zzbWy.length;
                    int[] iArr = new int[zzb2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzbWy, 0, iArr, 0, length2);
                    }
                    while (length2 < iArr.length - 1) {
                        iArr[length2] = zzbxlVar.zzaes();
                        zzbxlVar.zzaeo();
                        length2++;
                    }
                    iArr[length2] = zzbxlVar.zzaes();
                    this.zzbWy = iArr;
                    break;
                case 18:
                    int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                    int position = zzbxlVar.getPosition();
                    int i = 0;
                    while (zzbxlVar.zzaeC() > 0) {
                        zzbxlVar.zzaes();
                        i++;
                    }
                    zzbxlVar.zzrc(position);
                    int length3 = this.zzbWy == null ? 0 : this.zzbWy.length;
                    int[] iArr2 = new int[i + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzbWy, 0, iArr2, 0, length3);
                    }
                    while (length3 < iArr2.length) {
                        iArr2[length3] = zzbxlVar.zzaes();
                        length3++;
                    }
                    this.zzbWy = iArr2;
                    zzbxlVar.zzrb(zzra);
                    break;
                case 26:
                    int zzb3 = zzbxw.zzb(zzbxlVar, 26);
                    int length4 = this.zzbWz == null ? 0 : this.zzbWz.length;
                    byte[][] bArr = new byte[zzb3 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.zzbWz, 0, bArr, 0, length4);
                    }
                    while (length4 < bArr.length - 1) {
                        bArr[length4] = zzbxlVar.readBytes();
                        zzbxlVar.zzaeo();
                        length4++;
                    }
                    bArr[length4] = zzbxlVar.readBytes();
                    this.zzbWz = bArr;
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
        int i;
        int zzu = super.zzu();
        if (this.zzbWx == null || this.zzbWx.length <= 0) {
            i = zzu;
        } else {
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < this.zzbWx.length; i4++) {
                String str = this.zzbWx[i4];
                if (str != null) {
                    i3++;
                    i2 += zzbxm.zzkb(str);
                }
            }
            i = zzu + i2 + (i3 * 1);
        }
        if (this.zzbWy != null && this.zzbWy.length > 0) {
            int i5 = 0;
            for (int i6 = 0; i6 < this.zzbWy.length; i6++) {
                i5 += zzbxm.zzrg(this.zzbWy[i6]);
            }
            i = i + i5 + (this.zzbWy.length * 1);
        }
        if (this.zzbWz == null || this.zzbWz.length <= 0) {
            return i;
        }
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < this.zzbWz.length; i9++) {
            byte[] bArr = this.zzbWz[i9];
            if (bArr != null) {
                i8++;
                i7 += zzbxm.zzai(bArr);
            }
        }
        return i + i7 + (i8 * 1);
    }
}
