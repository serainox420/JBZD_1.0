package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzak {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        private static volatile zza[] zzlt;
        public String string;
        public int type;
        public boolean zzlA;
        public zza[] zzlB;
        public int[] zzlC;
        public boolean zzlD;
        public zza[] zzlu;
        public zza[] zzlv;
        public zza[] zzlw;
        public String zzlx;
        public String zzly;
        public long zzlz;

        public zza() {
            zzM();
        }

        public static zza[] zzL() {
            if (zzlt == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzlt == null) {
                        zzlt = new zza[0];
                    }
                }
            }
            return zzlt;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.type != zzaVar.type) {
                return false;
            }
            if (this.string == null) {
                if (zzaVar.string != null) {
                    return false;
                }
            } else if (!this.string.equals(zzaVar.string)) {
                return false;
            }
            if (!zzbxr.equals(this.zzlu, zzaVar.zzlu) || !zzbxr.equals(this.zzlv, zzaVar.zzlv) || !zzbxr.equals(this.zzlw, zzaVar.zzlw)) {
                return false;
            }
            if (this.zzlx == null) {
                if (zzaVar.zzlx != null) {
                    return false;
                }
            } else if (!this.zzlx.equals(zzaVar.zzlx)) {
                return false;
            }
            if (this.zzly == null) {
                if (zzaVar.zzly != null) {
                    return false;
                }
            } else if (!this.zzly.equals(zzaVar.zzly)) {
                return false;
            }
            if (this.zzlz != zzaVar.zzlz || this.zzlA != zzaVar.zzlA || !zzbxr.equals(this.zzlB, zzaVar.zzlB) || !zzbxr.equals(this.zzlC, zzaVar.zzlC) || this.zzlD != zzaVar.zzlD) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            int i = 1231;
            int i2 = 0;
            int hashCode = ((((((this.zzlA ? 1231 : 1237) + (((((this.zzly == null ? 0 : this.zzly.hashCode()) + (((this.zzlx == null ? 0 : this.zzlx.hashCode()) + (((((((((this.string == null ? 0 : this.string.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31)) * 31) + zzbxr.hashCode(this.zzlu)) * 31) + zzbxr.hashCode(this.zzlv)) * 31) + zzbxr.hashCode(this.zzlw)) * 31)) * 31)) * 31) + ((int) (this.zzlz ^ (this.zzlz >>> 32)))) * 31)) * 31) + zzbxr.hashCode(this.zzlB)) * 31) + zzbxr.hashCode(this.zzlC)) * 31;
            if (!this.zzlD) {
                i = 1237;
            }
            int i3 = (hashCode + i) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i2 = this.zzcuI.hashCode();
            }
            return i3 + i2;
        }

        public zza zzM() {
            this.type = 1;
            this.string = "";
            this.zzlu = zzL();
            this.zzlv = zzL();
            this.zzlw = zzL();
            this.zzlx = "";
            this.zzly = "";
            this.zzlz = 0L;
            this.zzlA = false;
            this.zzlB = zzL();
            this.zzlC = zzbxw.zzcuW;
            this.zzlD = false;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            zzbxmVar.zzJ(1, this.type);
            if (this.string != null && !this.string.equals("")) {
                zzbxmVar.zzq(2, this.string);
            }
            if (this.zzlu != null && this.zzlu.length > 0) {
                for (int i = 0; i < this.zzlu.length; i++) {
                    zza zzaVar = this.zzlu[i];
                    if (zzaVar != null) {
                        zzbxmVar.zza(3, zzaVar);
                    }
                }
            }
            if (this.zzlv != null && this.zzlv.length > 0) {
                for (int i2 = 0; i2 < this.zzlv.length; i2++) {
                    zza zzaVar2 = this.zzlv[i2];
                    if (zzaVar2 != null) {
                        zzbxmVar.zza(4, zzaVar2);
                    }
                }
            }
            if (this.zzlw != null && this.zzlw.length > 0) {
                for (int i3 = 0; i3 < this.zzlw.length; i3++) {
                    zza zzaVar3 = this.zzlw[i3];
                    if (zzaVar3 != null) {
                        zzbxmVar.zza(5, zzaVar3);
                    }
                }
            }
            if (this.zzlx != null && !this.zzlx.equals("")) {
                zzbxmVar.zzq(6, this.zzlx);
            }
            if (this.zzly != null && !this.zzly.equals("")) {
                zzbxmVar.zzq(7, this.zzly);
            }
            if (this.zzlz != 0) {
                zzbxmVar.zzb(8, this.zzlz);
            }
            if (this.zzlD) {
                zzbxmVar.zzg(9, this.zzlD);
            }
            if (this.zzlC != null && this.zzlC.length > 0) {
                for (int i4 = 0; i4 < this.zzlC.length; i4++) {
                    zzbxmVar.zzJ(10, this.zzlC[i4]);
                }
            }
            if (this.zzlB != null && this.zzlB.length > 0) {
                for (int i5 = 0; i5 < this.zzlB.length; i5++) {
                    zza zzaVar4 = this.zzlB[i5];
                    if (zzaVar4 != null) {
                        zzbxmVar.zza(11, zzaVar4);
                    }
                }
            }
            if (this.zzlA) {
                zzbxmVar.zzg(12, this.zzlA);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        protected int zzu() {
            int zzu = super.zzu() + zzbxm.zzL(1, this.type);
            if (this.string != null && !this.string.equals("")) {
                zzu += zzbxm.zzr(2, this.string);
            }
            if (this.zzlu != null && this.zzlu.length > 0) {
                int i = zzu;
                for (int i2 = 0; i2 < this.zzlu.length; i2++) {
                    zza zzaVar = this.zzlu[i2];
                    if (zzaVar != null) {
                        i += zzbxm.zzc(3, zzaVar);
                    }
                }
                zzu = i;
            }
            if (this.zzlv != null && this.zzlv.length > 0) {
                int i3 = zzu;
                for (int i4 = 0; i4 < this.zzlv.length; i4++) {
                    zza zzaVar2 = this.zzlv[i4];
                    if (zzaVar2 != null) {
                        i3 += zzbxm.zzc(4, zzaVar2);
                    }
                }
                zzu = i3;
            }
            if (this.zzlw != null && this.zzlw.length > 0) {
                int i5 = zzu;
                for (int i6 = 0; i6 < this.zzlw.length; i6++) {
                    zza zzaVar3 = this.zzlw[i6];
                    if (zzaVar3 != null) {
                        i5 += zzbxm.zzc(5, zzaVar3);
                    }
                }
                zzu = i5;
            }
            if (this.zzlx != null && !this.zzlx.equals("")) {
                zzu += zzbxm.zzr(6, this.zzlx);
            }
            if (this.zzly != null && !this.zzly.equals("")) {
                zzu += zzbxm.zzr(7, this.zzly);
            }
            if (this.zzlz != 0) {
                zzu += zzbxm.zzf(8, this.zzlz);
            }
            if (this.zzlD) {
                zzu += zzbxm.zzh(9, this.zzlD);
            }
            if (this.zzlC != null && this.zzlC.length > 0) {
                int i7 = 0;
                for (int i8 = 0; i8 < this.zzlC.length; i8++) {
                    i7 += zzbxm.zzrg(this.zzlC[i8]);
                }
                zzu = zzu + i7 + (this.zzlC.length * 1);
            }
            if (this.zzlB != null && this.zzlB.length > 0) {
                for (int i9 = 0; i9 < this.zzlB.length; i9++) {
                    zza zzaVar4 = this.zzlB[i9];
                    if (zzaVar4 != null) {
                        zzu += zzbxm.zzc(11, zzaVar4);
                    }
                }
            }
            return this.zzlA ? zzu + zzbxm.zzh(12, this.zzlA) : zzu;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzx */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            int i;
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
                                this.type = zzaes;
                                continue;
                        }
                    case 18:
                        this.string = zzbxlVar.readString();
                        break;
                    case 26:
                        int zzb = zzbxw.zzb(zzbxlVar, 26);
                        int length = this.zzlu == null ? 0 : this.zzlu.length;
                        zza[] zzaVarArr = new zza[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzlu, 0, zzaVarArr, 0, length);
                        }
                        while (length < zzaVarArr.length - 1) {
                            zzaVarArr[length] = new zza();
                            zzbxlVar.zza(zzaVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzaVarArr[length] = new zza();
                        zzbxlVar.zza(zzaVarArr[length]);
                        this.zzlu = zzaVarArr;
                        break;
                    case 34:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 34);
                        int length2 = this.zzlv == null ? 0 : this.zzlv.length;
                        zza[] zzaVarArr2 = new zza[zzb2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzlv, 0, zzaVarArr2, 0, length2);
                        }
                        while (length2 < zzaVarArr2.length - 1) {
                            zzaVarArr2[length2] = new zza();
                            zzbxlVar.zza(zzaVarArr2[length2]);
                            zzbxlVar.zzaeo();
                            length2++;
                        }
                        zzaVarArr2[length2] = new zza();
                        zzbxlVar.zza(zzaVarArr2[length2]);
                        this.zzlv = zzaVarArr2;
                        break;
                    case 42:
                        int zzb3 = zzbxw.zzb(zzbxlVar, 42);
                        int length3 = this.zzlw == null ? 0 : this.zzlw.length;
                        zza[] zzaVarArr3 = new zza[zzb3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzlw, 0, zzaVarArr3, 0, length3);
                        }
                        while (length3 < zzaVarArr3.length - 1) {
                            zzaVarArr3[length3] = new zza();
                            zzbxlVar.zza(zzaVarArr3[length3]);
                            zzbxlVar.zzaeo();
                            length3++;
                        }
                        zzaVarArr3[length3] = new zza();
                        zzbxlVar.zza(zzaVarArr3[length3]);
                        this.zzlw = zzaVarArr3;
                        break;
                    case 50:
                        this.zzlx = zzbxlVar.readString();
                        break;
                    case 58:
                        this.zzly = zzbxlVar.readString();
                        break;
                    case 64:
                        this.zzlz = zzbxlVar.zzaer();
                        break;
                    case 72:
                        this.zzlD = zzbxlVar.zzaeu();
                        break;
                    case 80:
                        int zzb4 = zzbxw.zzb(zzbxlVar, 80);
                        int[] iArr = new int[zzb4];
                        int i2 = 0;
                        int i3 = 0;
                        while (i2 < zzb4) {
                            if (i2 != 0) {
                                zzbxlVar.zzaeo();
                            }
                            int zzaes2 = zzbxlVar.zzaes();
                            switch (zzaes2) {
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
                            int length4 = this.zzlC == null ? 0 : this.zzlC.length;
                            if (length4 != 0 || i3 != iArr.length) {
                                int[] iArr2 = new int[length4 + i3];
                                if (length4 != 0) {
                                    System.arraycopy(this.zzlC, 0, iArr2, 0, length4);
                                }
                                System.arraycopy(iArr, 0, iArr2, length4, i3);
                                this.zzlC = iArr2;
                                break;
                            } else {
                                this.zzlC = iArr;
                                break;
                            }
                        } else {
                            break;
                        }
                    case 82:
                        int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position = zzbxlVar.getPosition();
                        int i4 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            switch (zzbxlVar.zzaes()) {
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
                                    i4++;
                                    break;
                            }
                        }
                        if (i4 != 0) {
                            zzbxlVar.zzrc(position);
                            int length5 = this.zzlC == null ? 0 : this.zzlC.length;
                            int[] iArr3 = new int[i4 + length5];
                            if (length5 != 0) {
                                System.arraycopy(this.zzlC, 0, iArr3, 0, length5);
                            }
                            while (zzbxlVar.zzaeC() > 0) {
                                int zzaes3 = zzbxlVar.zzaes();
                                switch (zzaes3) {
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
                                        iArr3[length5] = zzaes3;
                                        length5++;
                                        break;
                                }
                            }
                            this.zzlC = iArr3;
                        }
                        zzbxlVar.zzrb(zzra);
                        break;
                    case 90:
                        int zzb5 = zzbxw.zzb(zzbxlVar, 90);
                        int length6 = this.zzlB == null ? 0 : this.zzlB.length;
                        zza[] zzaVarArr4 = new zza[zzb5 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.zzlB, 0, zzaVarArr4, 0, length6);
                        }
                        while (length6 < zzaVarArr4.length - 1) {
                            zzaVarArr4[length6] = new zza();
                            zzbxlVar.zza(zzaVarArr4[length6]);
                            zzbxlVar.zzaeo();
                            length6++;
                        }
                        zzaVarArr4[length6] = new zza();
                        zzbxlVar.zza(zzaVarArr4[length6]);
                        this.zzlB = zzaVarArr4;
                        break;
                    case 96:
                        this.zzlA = zzbxlVar.zzaeu();
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
    }
}
