package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public interface zzbts {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        public long timestamp;
        public zzd[] zzcmq;
        public byte[][] zzcmr;

        public zza() {
            zzacl();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (!zzbxr.equals(this.zzcmq, zzaVar.zzcmq) || this.timestamp != zzaVar.timestamp || !zzbxr.zza(this.zzcmr, zzaVar.zzcmr)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzcmq)) * 31) + ((int) (this.timestamp ^ (this.timestamp >>> 32)))) * 31) + zzbxr.zzb(this.zzcmr)) * 31);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcmq != null && this.zzcmq.length > 0) {
                for (int i = 0; i < this.zzcmq.length; i++) {
                    zzd zzdVar = this.zzcmq[i];
                    if (zzdVar != null) {
                        zzbxmVar.zza(1, zzdVar);
                    }
                }
            }
            if (this.timestamp != 0) {
                zzbxmVar.zzc(2, this.timestamp);
            }
            if (this.zzcmr != null && this.zzcmr.length > 0) {
                for (int i2 = 0; i2 < this.zzcmr.length; i2++) {
                    byte[] bArr = this.zzcmr[i2];
                    if (bArr != null) {
                        zzbxmVar.zzb(3, bArr);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzac */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        int zzb = zzbxw.zzb(zzbxlVar, 10);
                        int length = this.zzcmq == null ? 0 : this.zzcmq.length;
                        zzd[] zzdVarArr = new zzd[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzcmq, 0, zzdVarArr, 0, length);
                        }
                        while (length < zzdVarArr.length - 1) {
                            zzdVarArr[length] = new zzd();
                            zzbxlVar.zza(zzdVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzdVarArr[length] = new zzd();
                        zzbxlVar.zza(zzdVarArr[length]);
                        this.zzcmq = zzdVarArr;
                        break;
                    case 17:
                        this.timestamp = zzbxlVar.zzaet();
                        break;
                    case 26:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 26);
                        int length2 = this.zzcmr == null ? 0 : this.zzcmr.length;
                        byte[][] bArr = new byte[zzb2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzcmr, 0, bArr, 0, length2);
                        }
                        while (length2 < bArr.length - 1) {
                            bArr[length2] = zzbxlVar.readBytes();
                            zzbxlVar.zzaeo();
                            length2++;
                        }
                        bArr[length2] = zzbxlVar.readBytes();
                        this.zzcmr = bArr;
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

        public zza zzacl() {
            this.zzcmq = zzd.zzacp();
            this.timestamp = 0L;
            this.zzcmr = zzbxw.zzcvc;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzcmq != null && this.zzcmq.length > 0) {
                int i = zzu;
                for (int i2 = 0; i2 < this.zzcmq.length; i2++) {
                    zzd zzdVar = this.zzcmq[i2];
                    if (zzdVar != null) {
                        i += zzbxm.zzc(1, zzdVar);
                    }
                }
                zzu = i;
            }
            if (this.timestamp != 0) {
                zzu += zzbxm.zzg(2, this.timestamp);
            }
            if (this.zzcmr == null || this.zzcmr.length <= 0) {
                return zzu;
            }
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < this.zzcmr.length; i5++) {
                byte[] bArr = this.zzcmr[i5];
                if (bArr != null) {
                    i4++;
                    i3 += zzbxm.zzai(bArr);
                }
            }
            return zzu + i3 + (i4 * 1);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> {
        private static volatile zzb[] zzcms;
        public String zzaB;
        public byte[] zzcmt;

        public zzb() {
            zzacn();
        }

        public static zzb[] zzacm() {
            if (zzcms == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzcms == null) {
                        zzcms = new zzb[0];
                    }
                }
            }
            return zzcms;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.zzaB == null) {
                if (zzbVar.zzaB != null) {
                    return false;
                }
            } else if (!this.zzaB.equals(zzbVar.zzaB)) {
                return false;
            }
            if (!Arrays.equals(this.zzcmt, zzbVar.zzcmt)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbVar.zzcuI == null || zzbVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.zzaB == null ? 0 : this.zzaB.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + Arrays.hashCode(this.zzcmt)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzaB != null && !this.zzaB.equals("")) {
                zzbxmVar.zzq(1, this.zzaB);
            }
            if (!Arrays.equals(this.zzcmt, zzbxw.zzcvd)) {
                zzbxmVar.zzb(2, this.zzcmt);
            }
            super.zza(zzbxmVar);
        }

        public zzb zzacn() {
            this.zzaB = "";
            this.zzcmt = zzbxw.zzcvd;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzad */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzaB = zzbxlVar.readString();
                        break;
                    case 18:
                        this.zzcmt = zzbxlVar.readBytes();
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
            if (this.zzaB != null && !this.zzaB.equals("")) {
                zzu += zzbxm.zzr(1, this.zzaB);
            }
            return !Arrays.equals(this.zzcmt, zzbxw.zzcvd) ? zzu + zzbxm.zzc(2, this.zzcmt) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzbxn<zzc> {
        public int zzcmu;
        public boolean zzcmv;
        public long zzcmw;

        public zzc() {
            zzaco();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.zzcmu != zzcVar.zzcmu || this.zzcmv != zzcVar.zzcmv || this.zzcmw != zzcVar.zzcmw) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzcVar.zzcuI == null || zzcVar.zzcuI.isEmpty() : this.zzcuI.equals(zzcVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + (((((this.zzcmv ? 1231 : 1237) + ((((getClass().getName().hashCode() + 527) * 31) + this.zzcmu) * 31)) * 31) + ((int) (this.zzcmw ^ (this.zzcmw >>> 32)))) * 31);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcmu != 0) {
                zzbxmVar.zzJ(1, this.zzcmu);
            }
            if (this.zzcmv) {
                zzbxmVar.zzg(2, this.zzcmv);
            }
            if (this.zzcmw != 0) {
                zzbxmVar.zzc(3, this.zzcmw);
            }
            super.zza(zzbxmVar);
        }

        public zzc zzaco() {
            this.zzcmu = 0;
            this.zzcmv = false;
            this.zzcmw = 0L;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzae */
        public zzc zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzcmu = zzbxlVar.zzaes();
                        break;
                    case 16:
                        this.zzcmv = zzbxlVar.zzaeu();
                        break;
                    case 25:
                        this.zzcmw = zzbxlVar.zzaet();
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
            if (this.zzcmu != 0) {
                zzu += zzbxm.zzL(1, this.zzcmu);
            }
            if (this.zzcmv) {
                zzu += zzbxm.zzh(2, this.zzcmv);
            }
            return this.zzcmw != 0 ? zzu + zzbxm.zzg(3, this.zzcmw) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd extends zzbxn<zzd> {
        private static volatile zzd[] zzcmx;
        public String zzaGP;
        public zzb[] zzcmy;

        public zzd() {
            zzacq();
        }

        public static zzd[] zzacp() {
            if (zzcmx == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzcmx == null) {
                        zzcmx = new zzd[0];
                    }
                }
            }
            return zzcmx;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (this.zzaGP == null) {
                if (zzdVar.zzaGP != null) {
                    return false;
                }
            } else if (!this.zzaGP.equals(zzdVar.zzaGP)) {
                return false;
            }
            if (!zzbxr.equals(this.zzcmy, zzdVar.zzcmy)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzdVar.zzcuI == null || zzdVar.zzcuI.isEmpty() : this.zzcuI.equals(zzdVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.zzaGP == null ? 0 : this.zzaGP.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + zzbxr.hashCode(this.zzcmy)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzaGP != null && !this.zzaGP.equals("")) {
                zzbxmVar.zzq(1, this.zzaGP);
            }
            if (this.zzcmy != null && this.zzcmy.length > 0) {
                for (int i = 0; i < this.zzcmy.length; i++) {
                    zzb zzbVar = this.zzcmy[i];
                    if (zzbVar != null) {
                        zzbxmVar.zza(2, zzbVar);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        public zzd zzacq() {
            this.zzaGP = "";
            this.zzcmy = zzb.zzacm();
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaf */
        public zzd zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzaGP = zzbxlVar.readString();
                        break;
                    case 18:
                        int zzb = zzbxw.zzb(zzbxlVar, 18);
                        int length = this.zzcmy == null ? 0 : this.zzcmy.length;
                        zzb[] zzbVarArr = new zzb[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzcmy, 0, zzbVarArr, 0, length);
                        }
                        while (length < zzbVarArr.length - 1) {
                            zzbVarArr[length] = new zzb();
                            zzbxlVar.zza(zzbVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzbVarArr[length] = new zzb();
                        zzbxlVar.zza(zzbVarArr[length]);
                        this.zzcmy = zzbVarArr;
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
            if (this.zzaGP != null && !this.zzaGP.equals("")) {
                zzu += zzbxm.zzr(1, this.zzaGP);
            }
            if (this.zzcmy == null || this.zzcmy.length <= 0) {
                return zzu;
            }
            int i = zzu;
            for (int i2 = 0; i2 < this.zzcmy.length; i2++) {
                zzb zzbVar = this.zzcmy[i2];
                if (zzbVar != null) {
                    i += zzbxm.zzc(2, zzbVar);
                }
            }
            return i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zze extends zzbxn<zze> {
        public zza zzcmA;
        public zza zzcmB;
        public zzc zzcmC;
        public zzf[] zzcmD;
        public zza zzcmz;

        public zze() {
            zzacr();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.zzcmz == null) {
                if (zzeVar.zzcmz != null) {
                    return false;
                }
            } else if (!this.zzcmz.equals(zzeVar.zzcmz)) {
                return false;
            }
            if (this.zzcmA == null) {
                if (zzeVar.zzcmA != null) {
                    return false;
                }
            } else if (!this.zzcmA.equals(zzeVar.zzcmA)) {
                return false;
            }
            if (this.zzcmB == null) {
                if (zzeVar.zzcmB != null) {
                    return false;
                }
            } else if (!this.zzcmB.equals(zzeVar.zzcmB)) {
                return false;
            }
            if (this.zzcmC == null) {
                if (zzeVar.zzcmC != null) {
                    return false;
                }
            } else if (!this.zzcmC.equals(zzeVar.zzcmC)) {
                return false;
            }
            if (!zzbxr.equals(this.zzcmD, zzeVar.zzcmD)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzeVar.zzcuI == null || zzeVar.zzcuI.isEmpty() : this.zzcuI.equals(zzeVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.zzcmC == null ? 0 : this.zzcmC.hashCode()) + (((this.zzcmB == null ? 0 : this.zzcmB.hashCode()) + (((this.zzcmA == null ? 0 : this.zzcmA.hashCode()) + (((this.zzcmz == null ? 0 : this.zzcmz.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31) + zzbxr.hashCode(this.zzcmD)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcmz != null) {
                zzbxmVar.zza(1, this.zzcmz);
            }
            if (this.zzcmA != null) {
                zzbxmVar.zza(2, this.zzcmA);
            }
            if (this.zzcmB != null) {
                zzbxmVar.zza(3, this.zzcmB);
            }
            if (this.zzcmC != null) {
                zzbxmVar.zza(4, this.zzcmC);
            }
            if (this.zzcmD != null && this.zzcmD.length > 0) {
                for (int i = 0; i < this.zzcmD.length; i++) {
                    zzf zzfVar = this.zzcmD[i];
                    if (zzfVar != null) {
                        zzbxmVar.zza(5, zzfVar);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        public zze zzacr() {
            this.zzcmz = null;
            this.zzcmA = null;
            this.zzcmB = null;
            this.zzcmC = null;
            this.zzcmD = zzf.zzacs();
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzag */
        public zze zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        if (this.zzcmz == null) {
                            this.zzcmz = new zza();
                        }
                        zzbxlVar.zza(this.zzcmz);
                        break;
                    case 18:
                        if (this.zzcmA == null) {
                            this.zzcmA = new zza();
                        }
                        zzbxlVar.zza(this.zzcmA);
                        break;
                    case 26:
                        if (this.zzcmB == null) {
                            this.zzcmB = new zza();
                        }
                        zzbxlVar.zza(this.zzcmB);
                        break;
                    case 34:
                        if (this.zzcmC == null) {
                            this.zzcmC = new zzc();
                        }
                        zzbxlVar.zza(this.zzcmC);
                        break;
                    case 42:
                        int zzb = zzbxw.zzb(zzbxlVar, 42);
                        int length = this.zzcmD == null ? 0 : this.zzcmD.length;
                        zzf[] zzfVarArr = new zzf[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzcmD, 0, zzfVarArr, 0, length);
                        }
                        while (length < zzfVarArr.length - 1) {
                            zzfVarArr[length] = new zzf();
                            zzbxlVar.zza(zzfVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzfVarArr[length] = new zzf();
                        zzbxlVar.zza(zzfVarArr[length]);
                        this.zzcmD = zzfVarArr;
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
            if (this.zzcmz != null) {
                zzu += zzbxm.zzc(1, this.zzcmz);
            }
            if (this.zzcmA != null) {
                zzu += zzbxm.zzc(2, this.zzcmA);
            }
            if (this.zzcmB != null) {
                zzu += zzbxm.zzc(3, this.zzcmB);
            }
            if (this.zzcmC != null) {
                zzu += zzbxm.zzc(4, this.zzcmC);
            }
            if (this.zzcmD == null || this.zzcmD.length <= 0) {
                return zzu;
            }
            int i = zzu;
            for (int i2 = 0; i2 < this.zzcmD.length; i2++) {
                zzf zzfVar = this.zzcmD[i2];
                if (zzfVar != null) {
                    i += zzbxm.zzc(5, zzfVar);
                }
            }
            return i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzf extends zzbxn<zzf> {
        private static volatile zzf[] zzcmE;
        public int resourceId;
        public String zzaGP;
        public long zzcmF;

        public zzf() {
            zzact();
        }

        public static zzf[] zzacs() {
            if (zzcmE == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzcmE == null) {
                        zzcmE = new zzf[0];
                    }
                }
            }
            return zzcmE;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzfVar = (zzf) obj;
            if (this.resourceId != zzfVar.resourceId || this.zzcmF != zzfVar.zzcmF) {
                return false;
            }
            if (this.zzaGP == null) {
                if (zzfVar.zzaGP != null) {
                    return false;
                }
            } else if (!this.zzaGP.equals(zzfVar.zzaGP)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzfVar.zzcuI == null || zzfVar.zzcuI.isEmpty() : this.zzcuI.equals(zzfVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzaGP == null ? 0 : this.zzaGP.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + this.resourceId) * 31) + ((int) (this.zzcmF ^ (this.zzcmF >>> 32)))) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.resourceId != 0) {
                zzbxmVar.zzJ(1, this.resourceId);
            }
            if (this.zzcmF != 0) {
                zzbxmVar.zzc(2, this.zzcmF);
            }
            if (this.zzaGP != null && !this.zzaGP.equals("")) {
                zzbxmVar.zzq(3, this.zzaGP);
            }
            super.zza(zzbxmVar);
        }

        public zzf zzact() {
            this.resourceId = 0;
            this.zzcmF = 0L;
            this.zzaGP = "";
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzah */
        public zzf zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.resourceId = zzbxlVar.zzaes();
                        break;
                    case 17:
                        this.zzcmF = zzbxlVar.zzaet();
                        break;
                    case 26:
                        this.zzaGP = zzbxlVar.readString();
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
            if (this.resourceId != 0) {
                zzu += zzbxm.zzL(1, this.resourceId);
            }
            if (this.zzcmF != 0) {
                zzu += zzbxm.zzg(2, this.zzcmF);
            }
            return (this.zzaGP == null || this.zzaGP.equals("")) ? zzu : zzu + zzbxm.zzr(3, this.zzaGP);
        }
    }
}
