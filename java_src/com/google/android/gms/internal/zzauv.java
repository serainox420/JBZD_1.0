package com.google.android.gms.internal;

import com.google.android.gms.internal.zzauu;
import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzauv {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        private static volatile zza[] zzbwK;
        public String name;
        public Boolean zzbwL;
        public Boolean zzbwM;

        public zza() {
            zzNu();
        }

        public static zza[] zzNt() {
            if (zzbwK == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbwK == null) {
                        zzbwK = new zza[0];
                    }
                }
            }
            return zzbwK;
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
            if (this.zzbwL == null) {
                if (zzaVar.zzbwL != null) {
                    return false;
                }
            } else if (!this.zzbwL.equals(zzaVar.zzbwL)) {
                return false;
            }
            if (this.zzbwM == null) {
                if (zzaVar.zzbwM != null) {
                    return false;
                }
            } else if (!this.zzbwM.equals(zzaVar.zzbwM)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbwM == null ? 0 : this.zzbwM.hashCode()) + (((this.zzbwL == null ? 0 : this.zzbwL.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzM */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.name = zzbxlVar.readString();
                        break;
                    case 16:
                        this.zzbwL = Boolean.valueOf(zzbxlVar.zzaeu());
                        break;
                    case 24:
                        this.zzbwM = Boolean.valueOf(zzbxlVar.zzaeu());
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

        public zza zzNu() {
            this.name = null;
            this.zzbwL = null;
            this.zzbwM = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.name != null) {
                zzbxmVar.zzq(1, this.name);
            }
            if (this.zzbwL != null) {
                zzbxmVar.zzg(2, this.zzbwL.booleanValue());
            }
            if (this.zzbwM != null) {
                zzbxmVar.zzg(3, this.zzbwM.booleanValue());
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.name != null) {
                zzu += zzbxm.zzr(1, this.name);
            }
            if (this.zzbwL != null) {
                zzu += zzbxm.zzh(2, this.zzbwL.booleanValue());
            }
            return this.zzbwM != null ? zzu + zzbxm.zzh(3, this.zzbwM.booleanValue()) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> {
        public String zzbqL;
        public Long zzbwN;
        public Integer zzbwO;
        public zzc[] zzbwP;
        public zza[] zzbwQ;
        public zzauu.zza[] zzbwR;

        public zzb() {
            zzNv();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.zzbwN == null) {
                if (zzbVar.zzbwN != null) {
                    return false;
                }
            } else if (!this.zzbwN.equals(zzbVar.zzbwN)) {
                return false;
            }
            if (this.zzbqL == null) {
                if (zzbVar.zzbqL != null) {
                    return false;
                }
            } else if (!this.zzbqL.equals(zzbVar.zzbqL)) {
                return false;
            }
            if (this.zzbwO == null) {
                if (zzbVar.zzbwO != null) {
                    return false;
                }
            } else if (!this.zzbwO.equals(zzbVar.zzbwO)) {
                return false;
            }
            if (!zzbxr.equals(this.zzbwP, zzbVar.zzbwP) || !zzbxr.equals(this.zzbwQ, zzbVar.zzbwQ) || !zzbxr.equals(this.zzbwR, zzbVar.zzbwR)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbVar.zzcuI == null || zzbVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((((((this.zzbwO == null ? 0 : this.zzbwO.hashCode()) + (((this.zzbqL == null ? 0 : this.zzbqL.hashCode()) + (((this.zzbwN == null ? 0 : this.zzbwN.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31) + zzbxr.hashCode(this.zzbwP)) * 31) + zzbxr.hashCode(this.zzbwQ)) * 31) + zzbxr.hashCode(this.zzbwR)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzN */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzbwN = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 18:
                        this.zzbqL = zzbxlVar.readString();
                        break;
                    case 24:
                        this.zzbwO = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case 34:
                        int zzb = zzbxw.zzb(zzbxlVar, 34);
                        int length = this.zzbwP == null ? 0 : this.zzbwP.length;
                        zzc[] zzcVarArr = new zzc[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbwP, 0, zzcVarArr, 0, length);
                        }
                        while (length < zzcVarArr.length - 1) {
                            zzcVarArr[length] = new zzc();
                            zzbxlVar.zza(zzcVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzcVarArr[length] = new zzc();
                        zzbxlVar.zza(zzcVarArr[length]);
                        this.zzbwP = zzcVarArr;
                        break;
                    case 42:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 42);
                        int length2 = this.zzbwQ == null ? 0 : this.zzbwQ.length;
                        zza[] zzaVarArr = new zza[zzb2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzbwQ, 0, zzaVarArr, 0, length2);
                        }
                        while (length2 < zzaVarArr.length - 1) {
                            zzaVarArr[length2] = new zza();
                            zzbxlVar.zza(zzaVarArr[length2]);
                            zzbxlVar.zzaeo();
                            length2++;
                        }
                        zzaVarArr[length2] = new zza();
                        zzbxlVar.zza(zzaVarArr[length2]);
                        this.zzbwQ = zzaVarArr;
                        break;
                    case 50:
                        int zzb3 = zzbxw.zzb(zzbxlVar, 50);
                        int length3 = this.zzbwR == null ? 0 : this.zzbwR.length;
                        zzauu.zza[] zzaVarArr2 = new zzauu.zza[zzb3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzbwR, 0, zzaVarArr2, 0, length3);
                        }
                        while (length3 < zzaVarArr2.length - 1) {
                            zzaVarArr2[length3] = new zzauu.zza();
                            zzbxlVar.zza(zzaVarArr2[length3]);
                            zzbxlVar.zzaeo();
                            length3++;
                        }
                        zzaVarArr2[length3] = new zzauu.zza();
                        zzbxlVar.zza(zzaVarArr2[length3]);
                        this.zzbwR = zzaVarArr2;
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

        public zzb zzNv() {
            this.zzbwN = null;
            this.zzbqL = null;
            this.zzbwO = null;
            this.zzbwP = zzc.zzNw();
            this.zzbwQ = zza.zzNt();
            this.zzbwR = zzauu.zza.zzNj();
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzbwN != null) {
                zzbxmVar.zzb(1, this.zzbwN.longValue());
            }
            if (this.zzbqL != null) {
                zzbxmVar.zzq(2, this.zzbqL);
            }
            if (this.zzbwO != null) {
                zzbxmVar.zzJ(3, this.zzbwO.intValue());
            }
            if (this.zzbwP != null && this.zzbwP.length > 0) {
                for (int i = 0; i < this.zzbwP.length; i++) {
                    zzc zzcVar = this.zzbwP[i];
                    if (zzcVar != null) {
                        zzbxmVar.zza(4, zzcVar);
                    }
                }
            }
            if (this.zzbwQ != null && this.zzbwQ.length > 0) {
                for (int i2 = 0; i2 < this.zzbwQ.length; i2++) {
                    zza zzaVar = this.zzbwQ[i2];
                    if (zzaVar != null) {
                        zzbxmVar.zza(5, zzaVar);
                    }
                }
            }
            if (this.zzbwR != null && this.zzbwR.length > 0) {
                for (int i3 = 0; i3 < this.zzbwR.length; i3++) {
                    zzauu.zza zzaVar2 = this.zzbwR[i3];
                    if (zzaVar2 != null) {
                        zzbxmVar.zza(6, zzaVar2);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbwN != null) {
                zzu += zzbxm.zzf(1, this.zzbwN.longValue());
            }
            if (this.zzbqL != null) {
                zzu += zzbxm.zzr(2, this.zzbqL);
            }
            if (this.zzbwO != null) {
                zzu += zzbxm.zzL(3, this.zzbwO.intValue());
            }
            if (this.zzbwP != null && this.zzbwP.length > 0) {
                int i = zzu;
                for (int i2 = 0; i2 < this.zzbwP.length; i2++) {
                    zzc zzcVar = this.zzbwP[i2];
                    if (zzcVar != null) {
                        i += zzbxm.zzc(4, zzcVar);
                    }
                }
                zzu = i;
            }
            if (this.zzbwQ != null && this.zzbwQ.length > 0) {
                int i3 = zzu;
                for (int i4 = 0; i4 < this.zzbwQ.length; i4++) {
                    zza zzaVar = this.zzbwQ[i4];
                    if (zzaVar != null) {
                        i3 += zzbxm.zzc(5, zzaVar);
                    }
                }
                zzu = i3;
            }
            if (this.zzbwR != null && this.zzbwR.length > 0) {
                for (int i5 = 0; i5 < this.zzbwR.length; i5++) {
                    zzauu.zza zzaVar2 = this.zzbwR[i5];
                    if (zzaVar2 != null) {
                        zzu += zzbxm.zzc(6, zzaVar2);
                    }
                }
            }
            return zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzbxn<zzc> {
        private static volatile zzc[] zzbwS;
        public String value;
        public String zzaB;

        public zzc() {
            zzNx();
        }

        public static zzc[] zzNw() {
            if (zzbwS == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbwS == null) {
                        zzbwS = new zzc[0];
                    }
                }
            }
            return zzbwS;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.zzaB == null) {
                if (zzcVar.zzaB != null) {
                    return false;
                }
            } else if (!this.zzaB.equals(zzcVar.zzaB)) {
                return false;
            }
            if (this.value == null) {
                if (zzcVar.value != null) {
                    return false;
                }
            } else if (!this.value.equals(zzcVar.value)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzcVar.zzcuI == null || zzcVar.zzcuI.isEmpty() : this.zzcuI.equals(zzcVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.value == null ? 0 : this.value.hashCode()) + (((this.zzaB == null ? 0 : this.zzaB.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zzc zzNx() {
            this.zzaB = null;
            this.value = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzO */
        public zzc zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzaB = zzbxlVar.readString();
                        break;
                    case 18:
                        this.value = zzbxlVar.readString();
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
            if (this.zzaB != null) {
                zzbxmVar.zzq(1, this.zzaB);
            }
            if (this.value != null) {
                zzbxmVar.zzq(2, this.value);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzaB != null) {
                zzu += zzbxm.zzr(1, this.zzaB);
            }
            return this.value != null ? zzu + zzbxm.zzr(2, this.value) : zzu;
        }
    }
}
