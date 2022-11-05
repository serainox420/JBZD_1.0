package com.google.android.gms.internal;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class zzbld extends zzbxn<zzbld> {
    public zza[] zzbVu;

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        private static volatile zza[] zzbVv;
        public String name;
        public C0302zza zzbVw;

        /* renamed from: com.google.android.gms.internal.zzbld$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0302zza extends zzbxn<C0302zza> {
            private static volatile C0302zza[] zzbVx;
            public int type;
            public C0303zza zzbVy;

            /* renamed from: com.google.android.gms.internal.zzbld$zza$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0303zza extends zzbxn<C0303zza> {
                public String zzbVA;
                public double zzbVB;
                public float zzbVC;
                public long zzbVD;
                public int zzbVE;
                public int zzbVF;
                public boolean zzbVG;
                public zza[] zzbVH;
                public C0302zza[] zzbVI;
                public String[] zzbVJ;
                public long[] zzbVK;
                public float[] zzbVL;
                public long zzbVM;
                public byte[] zzbVz;

                public C0303zza() {
                    zzUG();
                }

                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof C0303zza)) {
                        return false;
                    }
                    C0303zza c0303zza = (C0303zza) obj;
                    if (!Arrays.equals(this.zzbVz, c0303zza.zzbVz)) {
                        return false;
                    }
                    if (this.zzbVA == null) {
                        if (c0303zza.zzbVA != null) {
                            return false;
                        }
                    } else if (!this.zzbVA.equals(c0303zza.zzbVA)) {
                        return false;
                    }
                    if (Double.doubleToLongBits(this.zzbVB) != Double.doubleToLongBits(c0303zza.zzbVB) || Float.floatToIntBits(this.zzbVC) != Float.floatToIntBits(c0303zza.zzbVC) || this.zzbVD != c0303zza.zzbVD || this.zzbVE != c0303zza.zzbVE || this.zzbVF != c0303zza.zzbVF || this.zzbVG != c0303zza.zzbVG || !zzbxr.equals(this.zzbVH, c0303zza.zzbVH) || !zzbxr.equals(this.zzbVI, c0303zza.zzbVI) || !zzbxr.equals(this.zzbVJ, c0303zza.zzbVJ) || !zzbxr.equals(this.zzbVK, c0303zza.zzbVK) || !zzbxr.equals(this.zzbVL, c0303zza.zzbVL) || this.zzbVM != c0303zza.zzbVM) {
                        return false;
                    }
                    return (this.zzcuI == null || this.zzcuI.isEmpty()) ? c0303zza.zzcuI == null || c0303zza.zzcuI.isEmpty() : this.zzcuI.equals(c0303zza.zzcuI);
                }

                public int hashCode() {
                    int i = 0;
                    int hashCode = (this.zzbVA == null ? 0 : this.zzbVA.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + Arrays.hashCode(this.zzbVz)) * 31);
                    long doubleToLongBits = Double.doubleToLongBits(this.zzbVB);
                    int floatToIntBits = ((((((((((((((this.zzbVG ? 1231 : 1237) + (((((((((((hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + Float.floatToIntBits(this.zzbVC)) * 31) + ((int) (this.zzbVD ^ (this.zzbVD >>> 32)))) * 31) + this.zzbVE) * 31) + this.zzbVF) * 31)) * 31) + zzbxr.hashCode(this.zzbVH)) * 31) + zzbxr.hashCode(this.zzbVI)) * 31) + zzbxr.hashCode(this.zzbVJ)) * 31) + zzbxr.hashCode(this.zzbVK)) * 31) + zzbxr.hashCode(this.zzbVL)) * 31) + ((int) (this.zzbVM ^ (this.zzbVM >>> 32)))) * 31;
                    if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                        i = this.zzcuI.hashCode();
                    }
                    return floatToIntBits + i;
                }

                public C0303zza zzUG() {
                    this.zzbVz = zzbxw.zzcvd;
                    this.zzbVA = "";
                    this.zzbVB = 0.0d;
                    this.zzbVC = BitmapDescriptorFactory.HUE_RED;
                    this.zzbVD = 0L;
                    this.zzbVE = 0;
                    this.zzbVF = 0;
                    this.zzbVG = false;
                    this.zzbVH = zza.zzUC();
                    this.zzbVI = C0302zza.zzUE();
                    this.zzbVJ = zzbxw.zzcvb;
                    this.zzbVK = zzbxw.zzcuX;
                    this.zzbVL = zzbxw.zzcuY;
                    this.zzbVM = 0L;
                    this.zzcuI = null;
                    this.zzcuR = -1;
                    return this;
                }

                @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
                public void zza(zzbxm zzbxmVar) throws IOException {
                    if (!Arrays.equals(this.zzbVz, zzbxw.zzcvd)) {
                        zzbxmVar.zzb(1, this.zzbVz);
                    }
                    if (this.zzbVA != null && !this.zzbVA.equals("")) {
                        zzbxmVar.zzq(2, this.zzbVA);
                    }
                    if (Double.doubleToLongBits(this.zzbVB) != Double.doubleToLongBits(0.0d)) {
                        zzbxmVar.zza(3, this.zzbVB);
                    }
                    if (Float.floatToIntBits(this.zzbVC) != Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED)) {
                        zzbxmVar.zzc(4, this.zzbVC);
                    }
                    if (this.zzbVD != 0) {
                        zzbxmVar.zzb(5, this.zzbVD);
                    }
                    if (this.zzbVE != 0) {
                        zzbxmVar.zzJ(6, this.zzbVE);
                    }
                    if (this.zzbVF != 0) {
                        zzbxmVar.zzK(7, this.zzbVF);
                    }
                    if (this.zzbVG) {
                        zzbxmVar.zzg(8, this.zzbVG);
                    }
                    if (this.zzbVH != null && this.zzbVH.length > 0) {
                        for (int i = 0; i < this.zzbVH.length; i++) {
                            zza zzaVar = this.zzbVH[i];
                            if (zzaVar != null) {
                                zzbxmVar.zza(9, zzaVar);
                            }
                        }
                    }
                    if (this.zzbVI != null && this.zzbVI.length > 0) {
                        for (int i2 = 0; i2 < this.zzbVI.length; i2++) {
                            C0302zza c0302zza = this.zzbVI[i2];
                            if (c0302zza != null) {
                                zzbxmVar.zza(10, c0302zza);
                            }
                        }
                    }
                    if (this.zzbVJ != null && this.zzbVJ.length > 0) {
                        for (int i3 = 0; i3 < this.zzbVJ.length; i3++) {
                            String str = this.zzbVJ[i3];
                            if (str != null) {
                                zzbxmVar.zzq(11, str);
                            }
                        }
                    }
                    if (this.zzbVK != null && this.zzbVK.length > 0) {
                        for (int i4 = 0; i4 < this.zzbVK.length; i4++) {
                            zzbxmVar.zzb(12, this.zzbVK[i4]);
                        }
                    }
                    if (this.zzbVM != 0) {
                        zzbxmVar.zzb(13, this.zzbVM);
                    }
                    if (this.zzbVL != null && this.zzbVL.length > 0) {
                        for (int i5 = 0; i5 < this.zzbVL.length; i5++) {
                            zzbxmVar.zzc(14, this.zzbVL[i5]);
                        }
                    }
                    super.zza(zzbxmVar);
                }

                @Override // com.google.android.gms.internal.zzbxt
                /* renamed from: zzaa */
                public C0303zza zzb(zzbxl zzbxlVar) throws IOException {
                    while (true) {
                        int zzaeo = zzbxlVar.zzaeo();
                        switch (zzaeo) {
                            case 0:
                                break;
                            case 10:
                                this.zzbVz = zzbxlVar.readBytes();
                                break;
                            case 18:
                                this.zzbVA = zzbxlVar.readString();
                                break;
                            case 25:
                                this.zzbVB = zzbxlVar.readDouble();
                                break;
                            case 37:
                                this.zzbVC = zzbxlVar.readFloat();
                                break;
                            case 40:
                                this.zzbVD = zzbxlVar.zzaer();
                                break;
                            case 48:
                                this.zzbVE = zzbxlVar.zzaes();
                                break;
                            case 56:
                                this.zzbVF = zzbxlVar.zzaev();
                                break;
                            case 64:
                                this.zzbVG = zzbxlVar.zzaeu();
                                break;
                            case 74:
                                int zzb = zzbxw.zzb(zzbxlVar, 74);
                                int length = this.zzbVH == null ? 0 : this.zzbVH.length;
                                zza[] zzaVarArr = new zza[zzb + length];
                                if (length != 0) {
                                    System.arraycopy(this.zzbVH, 0, zzaVarArr, 0, length);
                                }
                                while (length < zzaVarArr.length - 1) {
                                    zzaVarArr[length] = new zza();
                                    zzbxlVar.zza(zzaVarArr[length]);
                                    zzbxlVar.zzaeo();
                                    length++;
                                }
                                zzaVarArr[length] = new zza();
                                zzbxlVar.zza(zzaVarArr[length]);
                                this.zzbVH = zzaVarArr;
                                break;
                            case 82:
                                int zzb2 = zzbxw.zzb(zzbxlVar, 82);
                                int length2 = this.zzbVI == null ? 0 : this.zzbVI.length;
                                C0302zza[] c0302zzaArr = new C0302zza[zzb2 + length2];
                                if (length2 != 0) {
                                    System.arraycopy(this.zzbVI, 0, c0302zzaArr, 0, length2);
                                }
                                while (length2 < c0302zzaArr.length - 1) {
                                    c0302zzaArr[length2] = new C0302zza();
                                    zzbxlVar.zza(c0302zzaArr[length2]);
                                    zzbxlVar.zzaeo();
                                    length2++;
                                }
                                c0302zzaArr[length2] = new C0302zza();
                                zzbxlVar.zza(c0302zzaArr[length2]);
                                this.zzbVI = c0302zzaArr;
                                break;
                            case 90:
                                int zzb3 = zzbxw.zzb(zzbxlVar, 90);
                                int length3 = this.zzbVJ == null ? 0 : this.zzbVJ.length;
                                String[] strArr = new String[zzb3 + length3];
                                if (length3 != 0) {
                                    System.arraycopy(this.zzbVJ, 0, strArr, 0, length3);
                                }
                                while (length3 < strArr.length - 1) {
                                    strArr[length3] = zzbxlVar.readString();
                                    zzbxlVar.zzaeo();
                                    length3++;
                                }
                                strArr[length3] = zzbxlVar.readString();
                                this.zzbVJ = strArr;
                                break;
                            case 96:
                                int zzb4 = zzbxw.zzb(zzbxlVar, 96);
                                int length4 = this.zzbVK == null ? 0 : this.zzbVK.length;
                                long[] jArr = new long[zzb4 + length4];
                                if (length4 != 0) {
                                    System.arraycopy(this.zzbVK, 0, jArr, 0, length4);
                                }
                                while (length4 < jArr.length - 1) {
                                    jArr[length4] = zzbxlVar.zzaer();
                                    zzbxlVar.zzaeo();
                                    length4++;
                                }
                                jArr[length4] = zzbxlVar.zzaer();
                                this.zzbVK = jArr;
                                break;
                            case 98:
                                int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                                int position = zzbxlVar.getPosition();
                                int i = 0;
                                while (zzbxlVar.zzaeC() > 0) {
                                    zzbxlVar.zzaer();
                                    i++;
                                }
                                zzbxlVar.zzrc(position);
                                int length5 = this.zzbVK == null ? 0 : this.zzbVK.length;
                                long[] jArr2 = new long[i + length5];
                                if (length5 != 0) {
                                    System.arraycopy(this.zzbVK, 0, jArr2, 0, length5);
                                }
                                while (length5 < jArr2.length) {
                                    jArr2[length5] = zzbxlVar.zzaer();
                                    length5++;
                                }
                                this.zzbVK = jArr2;
                                zzbxlVar.zzrb(zzra);
                                break;
                            case 104:
                                this.zzbVM = zzbxlVar.zzaer();
                                break;
                            case 114:
                                int zzaex = zzbxlVar.zzaex();
                                int zzra2 = zzbxlVar.zzra(zzaex);
                                int i2 = zzaex / 4;
                                int length6 = this.zzbVL == null ? 0 : this.zzbVL.length;
                                float[] fArr = new float[i2 + length6];
                                if (length6 != 0) {
                                    System.arraycopy(this.zzbVL, 0, fArr, 0, length6);
                                }
                                while (length6 < fArr.length) {
                                    fArr[length6] = zzbxlVar.readFloat();
                                    length6++;
                                }
                                this.zzbVL = fArr;
                                zzbxlVar.zzrb(zzra2);
                                break;
                            case 117:
                                int zzb5 = zzbxw.zzb(zzbxlVar, 117);
                                int length7 = this.zzbVL == null ? 0 : this.zzbVL.length;
                                float[] fArr2 = new float[zzb5 + length7];
                                if (length7 != 0) {
                                    System.arraycopy(this.zzbVL, 0, fArr2, 0, length7);
                                }
                                while (length7 < fArr2.length - 1) {
                                    fArr2[length7] = zzbxlVar.readFloat();
                                    zzbxlVar.zzaeo();
                                    length7++;
                                }
                                fArr2[length7] = zzbxlVar.readFloat();
                                this.zzbVL = fArr2;
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
                    if (!Arrays.equals(this.zzbVz, zzbxw.zzcvd)) {
                        zzu += zzbxm.zzc(1, this.zzbVz);
                    }
                    if (this.zzbVA != null && !this.zzbVA.equals("")) {
                        zzu += zzbxm.zzr(2, this.zzbVA);
                    }
                    if (Double.doubleToLongBits(this.zzbVB) != Double.doubleToLongBits(0.0d)) {
                        zzu += zzbxm.zzb(3, this.zzbVB);
                    }
                    if (Float.floatToIntBits(this.zzbVC) != Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED)) {
                        zzu += zzbxm.zzd(4, this.zzbVC);
                    }
                    if (this.zzbVD != 0) {
                        zzu += zzbxm.zzf(5, this.zzbVD);
                    }
                    if (this.zzbVE != 0) {
                        zzu += zzbxm.zzL(6, this.zzbVE);
                    }
                    if (this.zzbVF != 0) {
                        zzu += zzbxm.zzM(7, this.zzbVF);
                    }
                    if (this.zzbVG) {
                        zzu += zzbxm.zzh(8, this.zzbVG);
                    }
                    if (this.zzbVH != null && this.zzbVH.length > 0) {
                        int i = zzu;
                        for (int i2 = 0; i2 < this.zzbVH.length; i2++) {
                            zza zzaVar = this.zzbVH[i2];
                            if (zzaVar != null) {
                                i += zzbxm.zzc(9, zzaVar);
                            }
                        }
                        zzu = i;
                    }
                    if (this.zzbVI != null && this.zzbVI.length > 0) {
                        int i3 = zzu;
                        for (int i4 = 0; i4 < this.zzbVI.length; i4++) {
                            C0302zza c0302zza = this.zzbVI[i4];
                            if (c0302zza != null) {
                                i3 += zzbxm.zzc(10, c0302zza);
                            }
                        }
                        zzu = i3;
                    }
                    if (this.zzbVJ != null && this.zzbVJ.length > 0) {
                        int i5 = 0;
                        int i6 = 0;
                        for (int i7 = 0; i7 < this.zzbVJ.length; i7++) {
                            String str = this.zzbVJ[i7];
                            if (str != null) {
                                i6++;
                                i5 += zzbxm.zzkb(str);
                            }
                        }
                        zzu = zzu + i5 + (i6 * 1);
                    }
                    if (this.zzbVK != null && this.zzbVK.length > 0) {
                        int i8 = 0;
                        for (int i9 = 0; i9 < this.zzbVK.length; i9++) {
                            i8 += zzbxm.zzbf(this.zzbVK[i9]);
                        }
                        zzu = zzu + i8 + (this.zzbVK.length * 1);
                    }
                    if (this.zzbVM != 0) {
                        zzu += zzbxm.zzf(13, this.zzbVM);
                    }
                    return (this.zzbVL == null || this.zzbVL.length <= 0) ? zzu : zzu + (this.zzbVL.length * 4) + (this.zzbVL.length * 1);
                }
            }

            public C0302zza() {
                zzUF();
            }

            public static C0302zza[] zzUE() {
                if (zzbVx == null) {
                    synchronized (zzbxr.zzcuQ) {
                        if (zzbVx == null) {
                            zzbVx = new C0302zza[0];
                        }
                    }
                }
                return zzbVx;
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof C0302zza)) {
                    return false;
                }
                C0302zza c0302zza = (C0302zza) obj;
                if (this.type != c0302zza.type) {
                    return false;
                }
                if (this.zzbVy == null) {
                    if (c0302zza.zzbVy != null) {
                        return false;
                    }
                } else if (!this.zzbVy.equals(c0302zza.zzbVy)) {
                    return false;
                }
                return (this.zzcuI == null || this.zzcuI.isEmpty()) ? c0302zza.zzcuI == null || c0302zza.zzcuI.isEmpty() : this.zzcuI.equals(c0302zza.zzcuI);
            }

            public int hashCode() {
                int i = 0;
                int hashCode = ((this.zzbVy == null ? 0 : this.zzbVy.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31)) * 31;
                if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                    i = this.zzcuI.hashCode();
                }
                return hashCode + i;
            }

            public C0302zza zzUF() {
                this.type = 1;
                this.zzbVy = null;
                this.zzcuI = null;
                this.zzcuR = -1;
                return this;
            }

            @Override // com.google.android.gms.internal.zzbxt
            /* renamed from: zzZ */
            public C0302zza zzb(zzbxl zzbxlVar) throws IOException {
                while (true) {
                    int zzaeo = zzbxlVar.zzaeo();
                    switch (zzaeo) {
                        case 0:
                            break;
                        case 8:
                            int zzaes = zzbxlVar.zzaes();
                            switch (zzaes) {
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
                                    this.type = zzaes;
                                    continue;
                            }
                        case 18:
                            if (this.zzbVy == null) {
                                this.zzbVy = new C0303zza();
                            }
                            zzbxlVar.zza(this.zzbVy);
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

            @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
            public void zza(zzbxm zzbxmVar) throws IOException {
                zzbxmVar.zzJ(1, this.type);
                if (this.zzbVy != null) {
                    zzbxmVar.zza(2, this.zzbVy);
                }
                super.zza(zzbxmVar);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
            public int zzu() {
                int zzu = super.zzu() + zzbxm.zzL(1, this.type);
                return this.zzbVy != null ? zzu + zzbxm.zzc(2, this.zzbVy) : zzu;
            }
        }

        public zza() {
            zzUD();
        }

        public static zza[] zzUC() {
            if (zzbVv == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbVv == null) {
                        zzbVv = new zza[0];
                    }
                }
            }
            return zzbVv;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.name == null) {
                if (zzaVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzaVar.name)) {
                return false;
            }
            if (this.zzbVw == null) {
                if (zzaVar.zzbVw != null) {
                    return false;
                }
            } else if (!this.zzbVw.equals(zzaVar.zzbVw)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbVw == null ? 0 : this.zzbVw.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zza zzUD() {
            this.name = "";
            this.zzbVw = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzY */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.name = zzbxlVar.readString();
                        break;
                    case 18:
                        if (this.zzbVw == null) {
                            this.zzbVw = new C0302zza();
                        }
                        zzbxlVar.zza(this.zzbVw);
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

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            zzbxmVar.zzq(1, this.name);
            if (this.zzbVw != null) {
                zzbxmVar.zza(2, this.zzbVw);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu() + zzbxm.zzr(1, this.name);
            return this.zzbVw != null ? zzu + zzbxm.zzc(2, this.zzbVw) : zzu;
        }
    }

    public zzbld() {
        zzUB();
    }

    public static zzbld zzS(byte[] bArr) throws zzbxs {
        return (zzbld) zzbxt.zza(new zzbld(), bArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbld)) {
            return false;
        }
        zzbld zzbldVar = (zzbld) obj;
        if (!zzbxr.equals(this.zzbVu, zzbldVar.zzbVu)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbldVar.zzcuI == null || zzbldVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbldVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzbVu)) * 31);
    }

    public zzbld zzUB() {
        this.zzbVu = zza.zzUC();
        this.zzcuI = null;
        this.zzcuR = -1;
        return this;
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzX */
    public zzbld zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 10:
                    int zzb = zzbxw.zzb(zzbxlVar, 10);
                    int length = this.zzbVu == null ? 0 : this.zzbVu.length;
                    zza[] zzaVarArr = new zza[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzbVu, 0, zzaVarArr, 0, length);
                    }
                    while (length < zzaVarArr.length - 1) {
                        zzaVarArr[length] = new zza();
                        zzbxlVar.zza(zzaVarArr[length]);
                        zzbxlVar.zzaeo();
                        length++;
                    }
                    zzaVarArr[length] = new zza();
                    zzbxlVar.zza(zzaVarArr[length]);
                    this.zzbVu = zzaVarArr;
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

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzbVu != null && this.zzbVu.length > 0) {
            for (int i = 0; i < this.zzbVu.length; i++) {
                zza zzaVar = this.zzbVu[i];
                if (zzaVar != null) {
                    zzbxmVar.zza(1, zzaVar);
                }
            }
        }
        super.zza(zzbxmVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public int zzu() {
        int zzu = super.zzu();
        if (this.zzbVu != null && this.zzbVu.length > 0) {
            for (int i = 0; i < this.zzbVu.length; i++) {
                zza zzaVar = this.zzbVu[i];
                if (zzaVar != null) {
                    zzu += zzbxm.zzc(1, zzaVar);
                }
            }
        }
        return zzu;
    }
}
