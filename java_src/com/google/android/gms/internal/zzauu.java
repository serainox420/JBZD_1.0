package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzauu {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        private static volatile zza[] zzbwj;
        public Integer zzbwk;
        public zze[] zzbwl;
        public zzb[] zzbwm;

        public zza() {
            zzNk();
        }

        public static zza[] zzNj() {
            if (zzbwj == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbwj == null) {
                        zzbwj = new zza[0];
                    }
                }
            }
            return zzbwj;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.zzbwk == null) {
                if (zzaVar.zzbwk != null) {
                    return false;
                }
            } else if (!this.zzbwk.equals(zzaVar.zzbwk)) {
                return false;
            }
            if (!zzbxr.equals(this.zzbwl, zzaVar.zzbwl) || !zzbxr.equals(this.zzbwm, zzaVar.zzbwm)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((((this.zzbwk == null ? 0 : this.zzbwk.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + zzbxr.hashCode(this.zzbwl)) * 31) + zzbxr.hashCode(this.zzbwm)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzG */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzbwk = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case 18:
                        int zzb = zzbxw.zzb(zzbxlVar, 18);
                        int length = this.zzbwl == null ? 0 : this.zzbwl.length;
                        zze[] zzeVarArr = new zze[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbwl, 0, zzeVarArr, 0, length);
                        }
                        while (length < zzeVarArr.length - 1) {
                            zzeVarArr[length] = new zze();
                            zzbxlVar.zza(zzeVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzeVarArr[length] = new zze();
                        zzbxlVar.zza(zzeVarArr[length]);
                        this.zzbwl = zzeVarArr;
                        break;
                    case 26:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 26);
                        int length2 = this.zzbwm == null ? 0 : this.zzbwm.length;
                        zzb[] zzbVarArr = new zzb[zzb2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzbwm, 0, zzbVarArr, 0, length2);
                        }
                        while (length2 < zzbVarArr.length - 1) {
                            zzbVarArr[length2] = new zzb();
                            zzbxlVar.zza(zzbVarArr[length2]);
                            zzbxlVar.zzaeo();
                            length2++;
                        }
                        zzbVarArr[length2] = new zzb();
                        zzbxlVar.zza(zzbVarArr[length2]);
                        this.zzbwm = zzbVarArr;
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

        public zza zzNk() {
            this.zzbwk = null;
            this.zzbwl = zze.zzNq();
            this.zzbwm = zzb.zzNl();
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzbwk != null) {
                zzbxmVar.zzJ(1, this.zzbwk.intValue());
            }
            if (this.zzbwl != null && this.zzbwl.length > 0) {
                for (int i = 0; i < this.zzbwl.length; i++) {
                    zze zzeVar = this.zzbwl[i];
                    if (zzeVar != null) {
                        zzbxmVar.zza(2, zzeVar);
                    }
                }
            }
            if (this.zzbwm != null && this.zzbwm.length > 0) {
                for (int i2 = 0; i2 < this.zzbwm.length; i2++) {
                    zzb zzbVar = this.zzbwm[i2];
                    if (zzbVar != null) {
                        zzbxmVar.zza(3, zzbVar);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbwk != null) {
                zzu += zzbxm.zzL(1, this.zzbwk.intValue());
            }
            if (this.zzbwl != null && this.zzbwl.length > 0) {
                int i = zzu;
                for (int i2 = 0; i2 < this.zzbwl.length; i2++) {
                    zze zzeVar = this.zzbwl[i2];
                    if (zzeVar != null) {
                        i += zzbxm.zzc(2, zzeVar);
                    }
                }
                zzu = i;
            }
            if (this.zzbwm != null && this.zzbwm.length > 0) {
                for (int i3 = 0; i3 < this.zzbwm.length; i3++) {
                    zzb zzbVar = this.zzbwm[i3];
                    if (zzbVar != null) {
                        zzu += zzbxm.zzc(3, zzbVar);
                    }
                }
            }
            return zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> {
        private static volatile zzb[] zzbwn;
        public Integer zzbwo;
        public String zzbwp;
        public zzc[] zzbwq;
        public Boolean zzbwr;
        public zzd zzbws;

        public zzb() {
            zzNm();
        }

        public static zzb[] zzNl() {
            if (zzbwn == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbwn == null) {
                        zzbwn = new zzb[0];
                    }
                }
            }
            return zzbwn;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.zzbwo == null) {
                if (zzbVar.zzbwo != null) {
                    return false;
                }
            } else if (!this.zzbwo.equals(zzbVar.zzbwo)) {
                return false;
            }
            if (this.zzbwp == null) {
                if (zzbVar.zzbwp != null) {
                    return false;
                }
            } else if (!this.zzbwp.equals(zzbVar.zzbwp)) {
                return false;
            }
            if (!zzbxr.equals(this.zzbwq, zzbVar.zzbwq)) {
                return false;
            }
            if (this.zzbwr == null) {
                if (zzbVar.zzbwr != null) {
                    return false;
                }
            } else if (!this.zzbwr.equals(zzbVar.zzbwr)) {
                return false;
            }
            if (this.zzbws == null) {
                if (zzbVar.zzbws != null) {
                    return false;
                }
            } else if (!this.zzbws.equals(zzbVar.zzbws)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbVar.zzcuI == null || zzbVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbws == null ? 0 : this.zzbws.hashCode()) + (((this.zzbwr == null ? 0 : this.zzbwr.hashCode()) + (((((this.zzbwp == null ? 0 : this.zzbwp.hashCode()) + (((this.zzbwo == null ? 0 : this.zzbwo.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + zzbxr.hashCode(this.zzbwq)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzH */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzbwo = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case 18:
                        this.zzbwp = zzbxlVar.readString();
                        break;
                    case 26:
                        int zzb = zzbxw.zzb(zzbxlVar, 26);
                        int length = this.zzbwq == null ? 0 : this.zzbwq.length;
                        zzc[] zzcVarArr = new zzc[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbwq, 0, zzcVarArr, 0, length);
                        }
                        while (length < zzcVarArr.length - 1) {
                            zzcVarArr[length] = new zzc();
                            zzbxlVar.zza(zzcVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzcVarArr[length] = new zzc();
                        zzbxlVar.zza(zzcVarArr[length]);
                        this.zzbwq = zzcVarArr;
                        break;
                    case 32:
                        this.zzbwr = Boolean.valueOf(zzbxlVar.zzaeu());
                        break;
                    case 42:
                        if (this.zzbws == null) {
                            this.zzbws = new zzd();
                        }
                        zzbxlVar.zza(this.zzbws);
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

        public zzb zzNm() {
            this.zzbwo = null;
            this.zzbwp = null;
            this.zzbwq = zzc.zzNn();
            this.zzbwr = null;
            this.zzbws = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzbwo != null) {
                zzbxmVar.zzJ(1, this.zzbwo.intValue());
            }
            if (this.zzbwp != null) {
                zzbxmVar.zzq(2, this.zzbwp);
            }
            if (this.zzbwq != null && this.zzbwq.length > 0) {
                for (int i = 0; i < this.zzbwq.length; i++) {
                    zzc zzcVar = this.zzbwq[i];
                    if (zzcVar != null) {
                        zzbxmVar.zza(3, zzcVar);
                    }
                }
            }
            if (this.zzbwr != null) {
                zzbxmVar.zzg(4, this.zzbwr.booleanValue());
            }
            if (this.zzbws != null) {
                zzbxmVar.zza(5, this.zzbws);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbwo != null) {
                zzu += zzbxm.zzL(1, this.zzbwo.intValue());
            }
            if (this.zzbwp != null) {
                zzu += zzbxm.zzr(2, this.zzbwp);
            }
            if (this.zzbwq != null && this.zzbwq.length > 0) {
                int i = zzu;
                for (int i2 = 0; i2 < this.zzbwq.length; i2++) {
                    zzc zzcVar = this.zzbwq[i2];
                    if (zzcVar != null) {
                        i += zzbxm.zzc(3, zzcVar);
                    }
                }
                zzu = i;
            }
            if (this.zzbwr != null) {
                zzu += zzbxm.zzh(4, this.zzbwr.booleanValue());
            }
            return this.zzbws != null ? zzu + zzbxm.zzc(5, this.zzbws) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzbxn<zzc> {
        private static volatile zzc[] zzbwt;
        public zzf zzbwu;
        public zzd zzbwv;
        public Boolean zzbww;
        public String zzbwx;

        public zzc() {
            zzNo();
        }

        public static zzc[] zzNn() {
            if (zzbwt == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbwt == null) {
                        zzbwt = new zzc[0];
                    }
                }
            }
            return zzbwt;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.zzbwu == null) {
                if (zzcVar.zzbwu != null) {
                    return false;
                }
            } else if (!this.zzbwu.equals(zzcVar.zzbwu)) {
                return false;
            }
            if (this.zzbwv == null) {
                if (zzcVar.zzbwv != null) {
                    return false;
                }
            } else if (!this.zzbwv.equals(zzcVar.zzbwv)) {
                return false;
            }
            if (this.zzbww == null) {
                if (zzcVar.zzbww != null) {
                    return false;
                }
            } else if (!this.zzbww.equals(zzcVar.zzbww)) {
                return false;
            }
            if (this.zzbwx == null) {
                if (zzcVar.zzbwx != null) {
                    return false;
                }
            } else if (!this.zzbwx.equals(zzcVar.zzbwx)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzcVar.zzcuI == null || zzcVar.zzcuI.isEmpty() : this.zzcuI.equals(zzcVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbwx == null ? 0 : this.zzbwx.hashCode()) + (((this.zzbww == null ? 0 : this.zzbww.hashCode()) + (((this.zzbwv == null ? 0 : this.zzbwv.hashCode()) + (((this.zzbwu == null ? 0 : this.zzbwu.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzI */
        public zzc zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        if (this.zzbwu == null) {
                            this.zzbwu = new zzf();
                        }
                        zzbxlVar.zza(this.zzbwu);
                        break;
                    case 18:
                        if (this.zzbwv == null) {
                            this.zzbwv = new zzd();
                        }
                        zzbxlVar.zza(this.zzbwv);
                        break;
                    case 24:
                        this.zzbww = Boolean.valueOf(zzbxlVar.zzaeu());
                        break;
                    case 34:
                        this.zzbwx = zzbxlVar.readString();
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

        public zzc zzNo() {
            this.zzbwu = null;
            this.zzbwv = null;
            this.zzbww = null;
            this.zzbwx = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzbwu != null) {
                zzbxmVar.zza(1, this.zzbwu);
            }
            if (this.zzbwv != null) {
                zzbxmVar.zza(2, this.zzbwv);
            }
            if (this.zzbww != null) {
                zzbxmVar.zzg(3, this.zzbww.booleanValue());
            }
            if (this.zzbwx != null) {
                zzbxmVar.zzq(4, this.zzbwx);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbwu != null) {
                zzu += zzbxm.zzc(1, this.zzbwu);
            }
            if (this.zzbwv != null) {
                zzu += zzbxm.zzc(2, this.zzbwv);
            }
            if (this.zzbww != null) {
                zzu += zzbxm.zzh(3, this.zzbww.booleanValue());
            }
            return this.zzbwx != null ? zzu + zzbxm.zzr(4, this.zzbwx) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd extends zzbxn<zzd> {
        public String zzbwA;
        public String zzbwB;
        public String zzbwC;
        public Integer zzbwy;
        public Boolean zzbwz;

        public zzd() {
            zzNp();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (this.zzbwy == null) {
                if (zzdVar.zzbwy != null) {
                    return false;
                }
            } else if (!this.zzbwy.equals(zzdVar.zzbwy)) {
                return false;
            }
            if (this.zzbwz == null) {
                if (zzdVar.zzbwz != null) {
                    return false;
                }
            } else if (!this.zzbwz.equals(zzdVar.zzbwz)) {
                return false;
            }
            if (this.zzbwA == null) {
                if (zzdVar.zzbwA != null) {
                    return false;
                }
            } else if (!this.zzbwA.equals(zzdVar.zzbwA)) {
                return false;
            }
            if (this.zzbwB == null) {
                if (zzdVar.zzbwB != null) {
                    return false;
                }
            } else if (!this.zzbwB.equals(zzdVar.zzbwB)) {
                return false;
            }
            if (this.zzbwC == null) {
                if (zzdVar.zzbwC != null) {
                    return false;
                }
            } else if (!this.zzbwC.equals(zzdVar.zzbwC)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzdVar.zzcuI == null || zzdVar.zzcuI.isEmpty() : this.zzcuI.equals(zzdVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbwC == null ? 0 : this.zzbwC.hashCode()) + (((this.zzbwB == null ? 0 : this.zzbwB.hashCode()) + (((this.zzbwA == null ? 0 : this.zzbwA.hashCode()) + (((this.zzbwz == null ? 0 : this.zzbwz.hashCode()) + (((this.zzbwy == null ? 0 : this.zzbwy.intValue()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzJ */
        public zzd zzb(zzbxl zzbxlVar) throws IOException {
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
                                this.zzbwy = Integer.valueOf(zzaes);
                                continue;
                        }
                    case 16:
                        this.zzbwz = Boolean.valueOf(zzbxlVar.zzaeu());
                        break;
                    case 26:
                        this.zzbwA = zzbxlVar.readString();
                        break;
                    case 34:
                        this.zzbwB = zzbxlVar.readString();
                        break;
                    case 42:
                        this.zzbwC = zzbxlVar.readString();
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

        public zzd zzNp() {
            this.zzbwz = null;
            this.zzbwA = null;
            this.zzbwB = null;
            this.zzbwC = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzbwy != null) {
                zzbxmVar.zzJ(1, this.zzbwy.intValue());
            }
            if (this.zzbwz != null) {
                zzbxmVar.zzg(2, this.zzbwz.booleanValue());
            }
            if (this.zzbwA != null) {
                zzbxmVar.zzq(3, this.zzbwA);
            }
            if (this.zzbwB != null) {
                zzbxmVar.zzq(4, this.zzbwB);
            }
            if (this.zzbwC != null) {
                zzbxmVar.zzq(5, this.zzbwC);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbwy != null) {
                zzu += zzbxm.zzL(1, this.zzbwy.intValue());
            }
            if (this.zzbwz != null) {
                zzu += zzbxm.zzh(2, this.zzbwz.booleanValue());
            }
            if (this.zzbwA != null) {
                zzu += zzbxm.zzr(3, this.zzbwA);
            }
            if (this.zzbwB != null) {
                zzu += zzbxm.zzr(4, this.zzbwB);
            }
            return this.zzbwC != null ? zzu + zzbxm.zzr(5, this.zzbwC) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zze extends zzbxn<zze> {
        private static volatile zze[] zzbwD;
        public String zzbwE;
        public zzc zzbwF;
        public Integer zzbwo;

        public zze() {
            zzNr();
        }

        public static zze[] zzNq() {
            if (zzbwD == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbwD == null) {
                        zzbwD = new zze[0];
                    }
                }
            }
            return zzbwD;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.zzbwo == null) {
                if (zzeVar.zzbwo != null) {
                    return false;
                }
            } else if (!this.zzbwo.equals(zzeVar.zzbwo)) {
                return false;
            }
            if (this.zzbwE == null) {
                if (zzeVar.zzbwE != null) {
                    return false;
                }
            } else if (!this.zzbwE.equals(zzeVar.zzbwE)) {
                return false;
            }
            if (this.zzbwF == null) {
                if (zzeVar.zzbwF != null) {
                    return false;
                }
            } else if (!this.zzbwF.equals(zzeVar.zzbwF)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzeVar.zzcuI == null || zzeVar.zzcuI.isEmpty() : this.zzcuI.equals(zzeVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbwF == null ? 0 : this.zzbwF.hashCode()) + (((this.zzbwE == null ? 0 : this.zzbwE.hashCode()) + (((this.zzbwo == null ? 0 : this.zzbwo.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzK */
        public zze zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzbwo = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case 18:
                        this.zzbwE = zzbxlVar.readString();
                        break;
                    case 26:
                        if (this.zzbwF == null) {
                            this.zzbwF = new zzc();
                        }
                        zzbxlVar.zza(this.zzbwF);
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

        public zze zzNr() {
            this.zzbwo = null;
            this.zzbwE = null;
            this.zzbwF = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzbwo != null) {
                zzbxmVar.zzJ(1, this.zzbwo.intValue());
            }
            if (this.zzbwE != null) {
                zzbxmVar.zzq(2, this.zzbwE);
            }
            if (this.zzbwF != null) {
                zzbxmVar.zza(3, this.zzbwF);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbwo != null) {
                zzu += zzbxm.zzL(1, this.zzbwo.intValue());
            }
            if (this.zzbwE != null) {
                zzu += zzbxm.zzr(2, this.zzbwE);
            }
            return this.zzbwF != null ? zzu + zzbxm.zzc(3, this.zzbwF) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzf extends zzbxn<zzf> {
        public Integer zzbwG;
        public String zzbwH;
        public Boolean zzbwI;
        public String[] zzbwJ;

        public zzf() {
            zzNs();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzfVar = (zzf) obj;
            if (this.zzbwG == null) {
                if (zzfVar.zzbwG != null) {
                    return false;
                }
            } else if (!this.zzbwG.equals(zzfVar.zzbwG)) {
                return false;
            }
            if (this.zzbwH == null) {
                if (zzfVar.zzbwH != null) {
                    return false;
                }
            } else if (!this.zzbwH.equals(zzfVar.zzbwH)) {
                return false;
            }
            if (this.zzbwI == null) {
                if (zzfVar.zzbwI != null) {
                    return false;
                }
            } else if (!this.zzbwI.equals(zzfVar.zzbwI)) {
                return false;
            }
            if (!zzbxr.equals(this.zzbwJ, zzfVar.zzbwJ)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzfVar.zzcuI == null || zzfVar.zzcuI.isEmpty() : this.zzcuI.equals(zzfVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.zzbwI == null ? 0 : this.zzbwI.hashCode()) + (((this.zzbwH == null ? 0 : this.zzbwH.hashCode()) + (((this.zzbwG == null ? 0 : this.zzbwG.intValue()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31) + zzbxr.hashCode(this.zzbwJ)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzL */
        public zzf zzb(zzbxl zzbxlVar) throws IOException {
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
                                this.zzbwG = Integer.valueOf(zzaes);
                                continue;
                        }
                    case 18:
                        this.zzbwH = zzbxlVar.readString();
                        break;
                    case 24:
                        this.zzbwI = Boolean.valueOf(zzbxlVar.zzaeu());
                        break;
                    case 34:
                        int zzb = zzbxw.zzb(zzbxlVar, 34);
                        int length = this.zzbwJ == null ? 0 : this.zzbwJ.length;
                        String[] strArr = new String[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbwJ, 0, strArr, 0, length);
                        }
                        while (length < strArr.length - 1) {
                            strArr[length] = zzbxlVar.readString();
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        strArr[length] = zzbxlVar.readString();
                        this.zzbwJ = strArr;
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

        public zzf zzNs() {
            this.zzbwH = null;
            this.zzbwI = null;
            this.zzbwJ = zzbxw.zzcvb;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzbwG != null) {
                zzbxmVar.zzJ(1, this.zzbwG.intValue());
            }
            if (this.zzbwH != null) {
                zzbxmVar.zzq(2, this.zzbwH);
            }
            if (this.zzbwI != null) {
                zzbxmVar.zzg(3, this.zzbwI.booleanValue());
            }
            if (this.zzbwJ != null && this.zzbwJ.length > 0) {
                for (int i = 0; i < this.zzbwJ.length; i++) {
                    String str = this.zzbwJ[i];
                    if (str != null) {
                        zzbxmVar.zzq(4, str);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbwG != null) {
                zzu += zzbxm.zzL(1, this.zzbwG.intValue());
            }
            if (this.zzbwH != null) {
                zzu += zzbxm.zzr(2, this.zzbwH);
            }
            if (this.zzbwI != null) {
                zzu += zzbxm.zzh(3, this.zzbwI.booleanValue());
            }
            if (this.zzbwJ == null || this.zzbwJ.length <= 0) {
                return zzu;
            }
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzbwJ.length; i3++) {
                String str = this.zzbwJ[i3];
                if (str != null) {
                    i2++;
                    i += zzbxm.zzkb(str);
                }
            }
            return zzu + i + (i2 * 1);
        }
    }
}
