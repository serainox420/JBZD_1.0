package com.google.android.gms.internal;

import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.internal.zzak;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzaj {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        public int level;
        public int zzkn;
        public int zzko;

        public zza() {
            zzw();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.level != zzaVar.level || this.zzkn != zzaVar.zzkn || this.zzko != zzaVar.zzko) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + this.level) * 31) + this.zzkn) * 31) + this.zzko) * 31);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.level != 1) {
                zzbxmVar.zzJ(1, this.level);
            }
            if (this.zzkn != 0) {
                zzbxmVar.zzJ(2, this.zzkn);
            }
            if (this.zzko != 0) {
                zzbxmVar.zzJ(3, this.zzko);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzn */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
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
                                this.level = zzaes;
                                continue;
                        }
                    case 16:
                        this.zzkn = zzbxlVar.zzaes();
                        break;
                    case 24:
                        this.zzko = zzbxlVar.zzaes();
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
            if (this.level != 1) {
                zzu += zzbxm.zzL(1, this.level);
            }
            if (this.zzkn != 0) {
                zzu += zzbxm.zzL(2, this.zzkn);
            }
            return this.zzko != 0 ? zzu + zzbxm.zzL(3, this.zzko) : zzu;
        }

        public zza zzw() {
            this.level = 1;
            this.zzkn = 0;
            this.zzko = 0;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> {
        private static volatile zzb[] zzkp;
        public int name;
        public int[] zzkq;
        public int zzkr;
        public boolean zzks;
        public boolean zzkt;

        public zzb() {
            zzy();
        }

        public static zzb[] zzx() {
            if (zzkp == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzkp == null) {
                        zzkp = new zzb[0];
                    }
                }
            }
            return zzkp;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (!zzbxr.equals(this.zzkq, zzbVar.zzkq) || this.zzkr != zzbVar.zzkr || this.name != zzbVar.name || this.zzks != zzbVar.zzks || this.zzkt != zzbVar.zzkt) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbVar.zzcuI == null || zzbVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbVar.zzcuI);
        }

        public int hashCode() {
            int i = 1231;
            int hashCode = ((this.zzks ? 1231 : 1237) + ((((((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzkq)) * 31) + this.zzkr) * 31) + this.name) * 31)) * 31;
            if (!this.zzkt) {
                i = 1237;
            }
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((hashCode + i) * 31);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzkt) {
                zzbxmVar.zzg(1, this.zzkt);
            }
            zzbxmVar.zzJ(2, this.zzkr);
            if (this.zzkq != null && this.zzkq.length > 0) {
                for (int i = 0; i < this.zzkq.length; i++) {
                    zzbxmVar.zzJ(3, this.zzkq[i]);
                }
            }
            if (this.name != 0) {
                zzbxmVar.zzJ(4, this.name);
            }
            if (this.zzks) {
                zzbxmVar.zzg(6, this.zzks);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzo */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzkt = zzbxlVar.zzaeu();
                        break;
                    case 16:
                        this.zzkr = zzbxlVar.zzaes();
                        break;
                    case 24:
                        int zzb = zzbxw.zzb(zzbxlVar, 24);
                        int length = this.zzkq == null ? 0 : this.zzkq.length;
                        int[] iArr = new int[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzkq, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        iArr[length] = zzbxlVar.zzaes();
                        this.zzkq = iArr;
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
                        int length2 = this.zzkq == null ? 0 : this.zzkq.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzkq, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = zzbxlVar.zzaes();
                            length2++;
                        }
                        this.zzkq = iArr2;
                        zzbxlVar.zzrb(zzra);
                        break;
                    case 32:
                        this.name = zzbxlVar.zzaes();
                        break;
                    case 48:
                        this.zzks = zzbxlVar.zzaeu();
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
            int i2 = 0;
            int zzu = super.zzu();
            if (this.zzkt) {
                zzu += zzbxm.zzh(1, this.zzkt);
            }
            int zzL = zzbxm.zzL(2, this.zzkr) + zzu;
            if (this.zzkq == null || this.zzkq.length <= 0) {
                i = zzL;
            } else {
                for (int i3 = 0; i3 < this.zzkq.length; i3++) {
                    i2 += zzbxm.zzrg(this.zzkq[i3]);
                }
                i = zzL + i2 + (this.zzkq.length * 1);
            }
            if (this.name != 0) {
                i += zzbxm.zzL(4, this.name);
            }
            return this.zzks ? i + zzbxm.zzh(6, this.zzks) : i;
        }

        public zzb zzy() {
            this.zzkq = zzbxw.zzcuW;
            this.zzkr = 0;
            this.name = 0;
            this.zzks = false;
            this.zzkt = false;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzbxn<zzc> {
        private static volatile zzc[] zzku;
        public String zzaB;
        public long zzkv;
        public long zzkw;
        public boolean zzkx;
        public long zzky;

        public zzc() {
            zzA();
        }

        public static zzc[] zzz() {
            if (zzku == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzku == null) {
                        zzku = new zzc[0];
                    }
                }
            }
            return zzku;
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
            if (this.zzkv != zzcVar.zzkv || this.zzkw != zzcVar.zzkw || this.zzkx != zzcVar.zzkx || this.zzky != zzcVar.zzky) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzcVar.zzcuI == null || zzcVar.zzcuI.isEmpty() : this.zzcuI.equals(zzcVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.zzkx ? 1231 : 1237) + (((((((this.zzaB == null ? 0 : this.zzaB.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + ((int) (this.zzkv ^ (this.zzkv >>> 32)))) * 31) + ((int) (this.zzkw ^ (this.zzkw >>> 32)))) * 31)) * 31) + ((int) (this.zzky ^ (this.zzky >>> 32)))) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zzc zzA() {
            this.zzaB = "";
            this.zzkv = 0L;
            this.zzkw = 2147483647L;
            this.zzkx = false;
            this.zzky = 0L;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzaB != null && !this.zzaB.equals("")) {
                zzbxmVar.zzq(1, this.zzaB);
            }
            if (this.zzkv != 0) {
                zzbxmVar.zzb(2, this.zzkv);
            }
            if (this.zzkw != 2147483647L) {
                zzbxmVar.zzb(3, this.zzkw);
            }
            if (this.zzkx) {
                zzbxmVar.zzg(4, this.zzkx);
            }
            if (this.zzky != 0) {
                zzbxmVar.zzb(5, this.zzky);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzp */
        public zzc zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzaB = zzbxlVar.readString();
                        break;
                    case 16:
                        this.zzkv = zzbxlVar.zzaer();
                        break;
                    case 24:
                        this.zzkw = zzbxlVar.zzaer();
                        break;
                    case 32:
                        this.zzkx = zzbxlVar.zzaeu();
                        break;
                    case 40:
                        this.zzky = zzbxlVar.zzaer();
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
            if (this.zzkv != 0) {
                zzu += zzbxm.zzf(2, this.zzkv);
            }
            if (this.zzkw != 2147483647L) {
                zzu += zzbxm.zzf(3, this.zzkw);
            }
            if (this.zzkx) {
                zzu += zzbxm.zzh(4, this.zzkx);
            }
            return this.zzky != 0 ? zzu + zzbxm.zzf(5, this.zzky) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd extends zzbxn<zzd> {
        public zzak.zza[] zzkA;
        public zzc[] zzkB;
        public zzak.zza[] zzkz;

        public zzd() {
            zzB();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (!zzbxr.equals(this.zzkz, zzdVar.zzkz) || !zzbxr.equals(this.zzkA, zzdVar.zzkA) || !zzbxr.equals(this.zzkB, zzdVar.zzkB)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzdVar.zzcuI == null || zzdVar.zzcuI.isEmpty() : this.zzcuI.equals(zzdVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzkz)) * 31) + zzbxr.hashCode(this.zzkA)) * 31) + zzbxr.hashCode(this.zzkB)) * 31);
        }

        public zzd zzB() {
            this.zzkz = zzak.zza.zzL();
            this.zzkA = zzak.zza.zzL();
            this.zzkB = zzc.zzz();
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzkz != null && this.zzkz.length > 0) {
                for (int i = 0; i < this.zzkz.length; i++) {
                    zzak.zza zzaVar = this.zzkz[i];
                    if (zzaVar != null) {
                        zzbxmVar.zza(1, zzaVar);
                    }
                }
            }
            if (this.zzkA != null && this.zzkA.length > 0) {
                for (int i2 = 0; i2 < this.zzkA.length; i2++) {
                    zzak.zza zzaVar2 = this.zzkA[i2];
                    if (zzaVar2 != null) {
                        zzbxmVar.zza(2, zzaVar2);
                    }
                }
            }
            if (this.zzkB != null && this.zzkB.length > 0) {
                for (int i3 = 0; i3 < this.zzkB.length; i3++) {
                    zzc zzcVar = this.zzkB[i3];
                    if (zzcVar != null) {
                        zzbxmVar.zza(3, zzcVar);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzq */
        public zzd zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        int zzb = zzbxw.zzb(zzbxlVar, 10);
                        int length = this.zzkz == null ? 0 : this.zzkz.length;
                        zzak.zza[] zzaVarArr = new zzak.zza[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzkz, 0, zzaVarArr, 0, length);
                        }
                        while (length < zzaVarArr.length - 1) {
                            zzaVarArr[length] = new zzak.zza();
                            zzbxlVar.zza(zzaVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzaVarArr[length] = new zzak.zza();
                        zzbxlVar.zza(zzaVarArr[length]);
                        this.zzkz = zzaVarArr;
                        break;
                    case 18:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 18);
                        int length2 = this.zzkA == null ? 0 : this.zzkA.length;
                        zzak.zza[] zzaVarArr2 = new zzak.zza[zzb2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzkA, 0, zzaVarArr2, 0, length2);
                        }
                        while (length2 < zzaVarArr2.length - 1) {
                            zzaVarArr2[length2] = new zzak.zza();
                            zzbxlVar.zza(zzaVarArr2[length2]);
                            zzbxlVar.zzaeo();
                            length2++;
                        }
                        zzaVarArr2[length2] = new zzak.zza();
                        zzbxlVar.zza(zzaVarArr2[length2]);
                        this.zzkA = zzaVarArr2;
                        break;
                    case 26:
                        int zzb3 = zzbxw.zzb(zzbxlVar, 26);
                        int length3 = this.zzkB == null ? 0 : this.zzkB.length;
                        zzc[] zzcVarArr = new zzc[zzb3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzkB, 0, zzcVarArr, 0, length3);
                        }
                        while (length3 < zzcVarArr.length - 1) {
                            zzcVarArr[length3] = new zzc();
                            zzbxlVar.zza(zzcVarArr[length3]);
                            zzbxlVar.zzaeo();
                            length3++;
                        }
                        zzcVarArr[length3] = new zzc();
                        zzbxlVar.zza(zzcVarArr[length3]);
                        this.zzkB = zzcVarArr;
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
            if (this.zzkz != null && this.zzkz.length > 0) {
                int i = zzu;
                for (int i2 = 0; i2 < this.zzkz.length; i2++) {
                    zzak.zza zzaVar = this.zzkz[i2];
                    if (zzaVar != null) {
                        i += zzbxm.zzc(1, zzaVar);
                    }
                }
                zzu = i;
            }
            if (this.zzkA != null && this.zzkA.length > 0) {
                int i3 = zzu;
                for (int i4 = 0; i4 < this.zzkA.length; i4++) {
                    zzak.zza zzaVar2 = this.zzkA[i4];
                    if (zzaVar2 != null) {
                        i3 += zzbxm.zzc(2, zzaVar2);
                    }
                }
                zzu = i3;
            }
            if (this.zzkB != null && this.zzkB.length > 0) {
                for (int i5 = 0; i5 < this.zzkB.length; i5++) {
                    zzc zzcVar = this.zzkB[i5];
                    if (zzcVar != null) {
                        zzu += zzbxm.zzc(3, zzcVar);
                    }
                }
            }
            return zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zze extends zzbxn<zze> {
        private static volatile zze[] zzkC;
        public int key;
        public int value;

        public zze() {
            zzD();
        }

        public static zze[] zzC() {
            if (zzkC == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzkC == null) {
                        zzkC = new zze[0];
                    }
                }
            }
            return zzkC;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.key != zzeVar.key || this.value != zzeVar.value) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzeVar.zzcuI == null || zzeVar.zzcuI.isEmpty() : this.zzcuI.equals(zzeVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + this.key) * 31) + this.value) * 31);
        }

        public zze zzD() {
            this.key = 0;
            this.value = 0;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            zzbxmVar.zzJ(1, this.key);
            zzbxmVar.zzJ(2, this.value);
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzr */
        public zze zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.key = zzbxlVar.zzaes();
                        break;
                    case 16:
                        this.value = zzbxlVar.zzaes();
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
            return super.zzu() + zzbxm.zzL(1, this.key) + zzbxm.zzL(2, this.value);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzf extends zzbxn<zzf> {
        public String version;
        public String[] zzkD;
        public String[] zzkE;
        public zzak.zza[] zzkF;
        public zze[] zzkG;
        public zzb[] zzkH;
        public zzb[] zzkI;
        public zzb[] zzkJ;
        public zzg[] zzkK;
        public String zzkL;
        public String zzkM;
        public String zzkN;
        public zza zzkO;
        public float zzkP;
        public boolean zzkQ;
        public String[] zzkR;
        public int zzkS;

        public zzf() {
            zzE();
        }

        public static zzf zzf(byte[] bArr) throws zzbxs {
            return (zzf) zzbxt.zza(new zzf(), bArr);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzfVar = (zzf) obj;
            if (!zzbxr.equals(this.zzkD, zzfVar.zzkD) || !zzbxr.equals(this.zzkE, zzfVar.zzkE) || !zzbxr.equals(this.zzkF, zzfVar.zzkF) || !zzbxr.equals(this.zzkG, zzfVar.zzkG) || !zzbxr.equals(this.zzkH, zzfVar.zzkH) || !zzbxr.equals(this.zzkI, zzfVar.zzkI) || !zzbxr.equals(this.zzkJ, zzfVar.zzkJ) || !zzbxr.equals(this.zzkK, zzfVar.zzkK)) {
                return false;
            }
            if (this.zzkL == null) {
                if (zzfVar.zzkL != null) {
                    return false;
                }
            } else if (!this.zzkL.equals(zzfVar.zzkL)) {
                return false;
            }
            if (this.zzkM == null) {
                if (zzfVar.zzkM != null) {
                    return false;
                }
            } else if (!this.zzkM.equals(zzfVar.zzkM)) {
                return false;
            }
            if (this.zzkN == null) {
                if (zzfVar.zzkN != null) {
                    return false;
                }
            } else if (!this.zzkN.equals(zzfVar.zzkN)) {
                return false;
            }
            if (this.version == null) {
                if (zzfVar.version != null) {
                    return false;
                }
            } else if (!this.version.equals(zzfVar.version)) {
                return false;
            }
            if (this.zzkO == null) {
                if (zzfVar.zzkO != null) {
                    return false;
                }
            } else if (!this.zzkO.equals(zzfVar.zzkO)) {
                return false;
            }
            if (Float.floatToIntBits(this.zzkP) != Float.floatToIntBits(zzfVar.zzkP) || this.zzkQ != zzfVar.zzkQ || !zzbxr.equals(this.zzkR, zzfVar.zzkR) || this.zzkS != zzfVar.zzkS) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzfVar.zzcuI == null || zzfVar.zzcuI.isEmpty() : this.zzcuI.equals(zzfVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((((this.zzkQ ? 1231 : 1237) + (((((this.zzkO == null ? 0 : this.zzkO.hashCode()) + (((this.version == null ? 0 : this.version.hashCode()) + (((this.zzkN == null ? 0 : this.zzkN.hashCode()) + (((this.zzkM == null ? 0 : this.zzkM.hashCode()) + (((this.zzkL == null ? 0 : this.zzkL.hashCode()) + ((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzkD)) * 31) + zzbxr.hashCode(this.zzkE)) * 31) + zzbxr.hashCode(this.zzkF)) * 31) + zzbxr.hashCode(this.zzkG)) * 31) + zzbxr.hashCode(this.zzkH)) * 31) + zzbxr.hashCode(this.zzkI)) * 31) + zzbxr.hashCode(this.zzkJ)) * 31) + zzbxr.hashCode(this.zzkK)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + Float.floatToIntBits(this.zzkP)) * 31)) * 31) + zzbxr.hashCode(this.zzkR)) * 31) + this.zzkS) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zzf zzE() {
            this.zzkD = zzbxw.zzcvb;
            this.zzkE = zzbxw.zzcvb;
            this.zzkF = zzak.zza.zzL();
            this.zzkG = zze.zzC();
            this.zzkH = zzb.zzx();
            this.zzkI = zzb.zzx();
            this.zzkJ = zzb.zzx();
            this.zzkK = zzg.zzF();
            this.zzkL = "";
            this.zzkM = "";
            this.zzkN = AppEventsConstants.EVENT_PARAM_VALUE_NO;
            this.version = "";
            this.zzkO = null;
            this.zzkP = BitmapDescriptorFactory.HUE_RED;
            this.zzkQ = false;
            this.zzkR = zzbxw.zzcvb;
            this.zzkS = 0;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzkE != null && this.zzkE.length > 0) {
                for (int i = 0; i < this.zzkE.length; i++) {
                    String str = this.zzkE[i];
                    if (str != null) {
                        zzbxmVar.zzq(1, str);
                    }
                }
            }
            if (this.zzkF != null && this.zzkF.length > 0) {
                for (int i2 = 0; i2 < this.zzkF.length; i2++) {
                    zzak.zza zzaVar = this.zzkF[i2];
                    if (zzaVar != null) {
                        zzbxmVar.zza(2, zzaVar);
                    }
                }
            }
            if (this.zzkG != null && this.zzkG.length > 0) {
                for (int i3 = 0; i3 < this.zzkG.length; i3++) {
                    zze zzeVar = this.zzkG[i3];
                    if (zzeVar != null) {
                        zzbxmVar.zza(3, zzeVar);
                    }
                }
            }
            if (this.zzkH != null && this.zzkH.length > 0) {
                for (int i4 = 0; i4 < this.zzkH.length; i4++) {
                    zzb zzbVar = this.zzkH[i4];
                    if (zzbVar != null) {
                        zzbxmVar.zza(4, zzbVar);
                    }
                }
            }
            if (this.zzkI != null && this.zzkI.length > 0) {
                for (int i5 = 0; i5 < this.zzkI.length; i5++) {
                    zzb zzbVar2 = this.zzkI[i5];
                    if (zzbVar2 != null) {
                        zzbxmVar.zza(5, zzbVar2);
                    }
                }
            }
            if (this.zzkJ != null && this.zzkJ.length > 0) {
                for (int i6 = 0; i6 < this.zzkJ.length; i6++) {
                    zzb zzbVar3 = this.zzkJ[i6];
                    if (zzbVar3 != null) {
                        zzbxmVar.zza(6, zzbVar3);
                    }
                }
            }
            if (this.zzkK != null && this.zzkK.length > 0) {
                for (int i7 = 0; i7 < this.zzkK.length; i7++) {
                    zzg zzgVar = this.zzkK[i7];
                    if (zzgVar != null) {
                        zzbxmVar.zza(7, zzgVar);
                    }
                }
            }
            if (this.zzkL != null && !this.zzkL.equals("")) {
                zzbxmVar.zzq(9, this.zzkL);
            }
            if (this.zzkM != null && !this.zzkM.equals("")) {
                zzbxmVar.zzq(10, this.zzkM);
            }
            if (this.zzkN != null && !this.zzkN.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                zzbxmVar.zzq(12, this.zzkN);
            }
            if (this.version != null && !this.version.equals("")) {
                zzbxmVar.zzq(13, this.version);
            }
            if (this.zzkO != null) {
                zzbxmVar.zza(14, this.zzkO);
            }
            if (Float.floatToIntBits(this.zzkP) != Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED)) {
                zzbxmVar.zzc(15, this.zzkP);
            }
            if (this.zzkR != null && this.zzkR.length > 0) {
                for (int i8 = 0; i8 < this.zzkR.length; i8++) {
                    String str2 = this.zzkR[i8];
                    if (str2 != null) {
                        zzbxmVar.zzq(16, str2);
                    }
                }
            }
            if (this.zzkS != 0) {
                zzbxmVar.zzJ(17, this.zzkS);
            }
            if (this.zzkQ) {
                zzbxmVar.zzg(18, this.zzkQ);
            }
            if (this.zzkD != null && this.zzkD.length > 0) {
                for (int i9 = 0; i9 < this.zzkD.length; i9++) {
                    String str3 = this.zzkD[i9];
                    if (str3 != null) {
                        zzbxmVar.zzq(19, str3);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzs */
        public zzf zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        int zzb = zzbxw.zzb(zzbxlVar, 10);
                        int length = this.zzkE == null ? 0 : this.zzkE.length;
                        String[] strArr = new String[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzkE, 0, strArr, 0, length);
                        }
                        while (length < strArr.length - 1) {
                            strArr[length] = zzbxlVar.readString();
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        strArr[length] = zzbxlVar.readString();
                        this.zzkE = strArr;
                        break;
                    case 18:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 18);
                        int length2 = this.zzkF == null ? 0 : this.zzkF.length;
                        zzak.zza[] zzaVarArr = new zzak.zza[zzb2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzkF, 0, zzaVarArr, 0, length2);
                        }
                        while (length2 < zzaVarArr.length - 1) {
                            zzaVarArr[length2] = new zzak.zza();
                            zzbxlVar.zza(zzaVarArr[length2]);
                            zzbxlVar.zzaeo();
                            length2++;
                        }
                        zzaVarArr[length2] = new zzak.zza();
                        zzbxlVar.zza(zzaVarArr[length2]);
                        this.zzkF = zzaVarArr;
                        break;
                    case 26:
                        int zzb3 = zzbxw.zzb(zzbxlVar, 26);
                        int length3 = this.zzkG == null ? 0 : this.zzkG.length;
                        zze[] zzeVarArr = new zze[zzb3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzkG, 0, zzeVarArr, 0, length3);
                        }
                        while (length3 < zzeVarArr.length - 1) {
                            zzeVarArr[length3] = new zze();
                            zzbxlVar.zza(zzeVarArr[length3]);
                            zzbxlVar.zzaeo();
                            length3++;
                        }
                        zzeVarArr[length3] = new zze();
                        zzbxlVar.zza(zzeVarArr[length3]);
                        this.zzkG = zzeVarArr;
                        break;
                    case 34:
                        int zzb4 = zzbxw.zzb(zzbxlVar, 34);
                        int length4 = this.zzkH == null ? 0 : this.zzkH.length;
                        zzb[] zzbVarArr = new zzb[zzb4 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzkH, 0, zzbVarArr, 0, length4);
                        }
                        while (length4 < zzbVarArr.length - 1) {
                            zzbVarArr[length4] = new zzb();
                            zzbxlVar.zza(zzbVarArr[length4]);
                            zzbxlVar.zzaeo();
                            length4++;
                        }
                        zzbVarArr[length4] = new zzb();
                        zzbxlVar.zza(zzbVarArr[length4]);
                        this.zzkH = zzbVarArr;
                        break;
                    case 42:
                        int zzb5 = zzbxw.zzb(zzbxlVar, 42);
                        int length5 = this.zzkI == null ? 0 : this.zzkI.length;
                        zzb[] zzbVarArr2 = new zzb[zzb5 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.zzkI, 0, zzbVarArr2, 0, length5);
                        }
                        while (length5 < zzbVarArr2.length - 1) {
                            zzbVarArr2[length5] = new zzb();
                            zzbxlVar.zza(zzbVarArr2[length5]);
                            zzbxlVar.zzaeo();
                            length5++;
                        }
                        zzbVarArr2[length5] = new zzb();
                        zzbxlVar.zza(zzbVarArr2[length5]);
                        this.zzkI = zzbVarArr2;
                        break;
                    case 50:
                        int zzb6 = zzbxw.zzb(zzbxlVar, 50);
                        int length6 = this.zzkJ == null ? 0 : this.zzkJ.length;
                        zzb[] zzbVarArr3 = new zzb[zzb6 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.zzkJ, 0, zzbVarArr3, 0, length6);
                        }
                        while (length6 < zzbVarArr3.length - 1) {
                            zzbVarArr3[length6] = new zzb();
                            zzbxlVar.zza(zzbVarArr3[length6]);
                            zzbxlVar.zzaeo();
                            length6++;
                        }
                        zzbVarArr3[length6] = new zzb();
                        zzbxlVar.zza(zzbVarArr3[length6]);
                        this.zzkJ = zzbVarArr3;
                        break;
                    case 58:
                        int zzb7 = zzbxw.zzb(zzbxlVar, 58);
                        int length7 = this.zzkK == null ? 0 : this.zzkK.length;
                        zzg[] zzgVarArr = new zzg[zzb7 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.zzkK, 0, zzgVarArr, 0, length7);
                        }
                        while (length7 < zzgVarArr.length - 1) {
                            zzgVarArr[length7] = new zzg();
                            zzbxlVar.zza(zzgVarArr[length7]);
                            zzbxlVar.zzaeo();
                            length7++;
                        }
                        zzgVarArr[length7] = new zzg();
                        zzbxlVar.zza(zzgVarArr[length7]);
                        this.zzkK = zzgVarArr;
                        break;
                    case 74:
                        this.zzkL = zzbxlVar.readString();
                        break;
                    case 82:
                        this.zzkM = zzbxlVar.readString();
                        break;
                    case 98:
                        this.zzkN = zzbxlVar.readString();
                        break;
                    case 106:
                        this.version = zzbxlVar.readString();
                        break;
                    case 114:
                        if (this.zzkO == null) {
                            this.zzkO = new zza();
                        }
                        zzbxlVar.zza(this.zzkO);
                        break;
                    case 125:
                        this.zzkP = zzbxlVar.readFloat();
                        break;
                    case 130:
                        int zzb8 = zzbxw.zzb(zzbxlVar, 130);
                        int length8 = this.zzkR == null ? 0 : this.zzkR.length;
                        String[] strArr2 = new String[zzb8 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.zzkR, 0, strArr2, 0, length8);
                        }
                        while (length8 < strArr2.length - 1) {
                            strArr2[length8] = zzbxlVar.readString();
                            zzbxlVar.zzaeo();
                            length8++;
                        }
                        strArr2[length8] = zzbxlVar.readString();
                        this.zzkR = strArr2;
                        break;
                    case 136:
                        this.zzkS = zzbxlVar.zzaes();
                        break;
                    case 144:
                        this.zzkQ = zzbxlVar.zzaeu();
                        break;
                    case 154:
                        int zzb9 = zzbxw.zzb(zzbxlVar, 154);
                        int length9 = this.zzkD == null ? 0 : this.zzkD.length;
                        String[] strArr3 = new String[zzb9 + length9];
                        if (length9 != 0) {
                            System.arraycopy(this.zzkD, 0, strArr3, 0, length9);
                        }
                        while (length9 < strArr3.length - 1) {
                            strArr3[length9] = zzbxlVar.readString();
                            zzbxlVar.zzaeo();
                            length9++;
                        }
                        strArr3[length9] = zzbxlVar.readString();
                        this.zzkD = strArr3;
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
            if (this.zzkE == null || this.zzkE.length <= 0) {
                i = zzu;
            } else {
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzkE.length; i4++) {
                    String str = this.zzkE[i4];
                    if (str != null) {
                        i3++;
                        i2 += zzbxm.zzkb(str);
                    }
                }
                i = zzu + i2 + (i3 * 1);
            }
            if (this.zzkF != null && this.zzkF.length > 0) {
                int i5 = i;
                for (int i6 = 0; i6 < this.zzkF.length; i6++) {
                    zzak.zza zzaVar = this.zzkF[i6];
                    if (zzaVar != null) {
                        i5 += zzbxm.zzc(2, zzaVar);
                    }
                }
                i = i5;
            }
            if (this.zzkG != null && this.zzkG.length > 0) {
                int i7 = i;
                for (int i8 = 0; i8 < this.zzkG.length; i8++) {
                    zze zzeVar = this.zzkG[i8];
                    if (zzeVar != null) {
                        i7 += zzbxm.zzc(3, zzeVar);
                    }
                }
                i = i7;
            }
            if (this.zzkH != null && this.zzkH.length > 0) {
                int i9 = i;
                for (int i10 = 0; i10 < this.zzkH.length; i10++) {
                    zzb zzbVar = this.zzkH[i10];
                    if (zzbVar != null) {
                        i9 += zzbxm.zzc(4, zzbVar);
                    }
                }
                i = i9;
            }
            if (this.zzkI != null && this.zzkI.length > 0) {
                int i11 = i;
                for (int i12 = 0; i12 < this.zzkI.length; i12++) {
                    zzb zzbVar2 = this.zzkI[i12];
                    if (zzbVar2 != null) {
                        i11 += zzbxm.zzc(5, zzbVar2);
                    }
                }
                i = i11;
            }
            if (this.zzkJ != null && this.zzkJ.length > 0) {
                int i13 = i;
                for (int i14 = 0; i14 < this.zzkJ.length; i14++) {
                    zzb zzbVar3 = this.zzkJ[i14];
                    if (zzbVar3 != null) {
                        i13 += zzbxm.zzc(6, zzbVar3);
                    }
                }
                i = i13;
            }
            if (this.zzkK != null && this.zzkK.length > 0) {
                int i15 = i;
                for (int i16 = 0; i16 < this.zzkK.length; i16++) {
                    zzg zzgVar = this.zzkK[i16];
                    if (zzgVar != null) {
                        i15 += zzbxm.zzc(7, zzgVar);
                    }
                }
                i = i15;
            }
            if (this.zzkL != null && !this.zzkL.equals("")) {
                i += zzbxm.zzr(9, this.zzkL);
            }
            if (this.zzkM != null && !this.zzkM.equals("")) {
                i += zzbxm.zzr(10, this.zzkM);
            }
            if (this.zzkN != null && !this.zzkN.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                i += zzbxm.zzr(12, this.zzkN);
            }
            if (this.version != null && !this.version.equals("")) {
                i += zzbxm.zzr(13, this.version);
            }
            if (this.zzkO != null) {
                i += zzbxm.zzc(14, this.zzkO);
            }
            if (Float.floatToIntBits(this.zzkP) != Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED)) {
                i += zzbxm.zzd(15, this.zzkP);
            }
            if (this.zzkR != null && this.zzkR.length > 0) {
                int i17 = 0;
                int i18 = 0;
                for (int i19 = 0; i19 < this.zzkR.length; i19++) {
                    String str2 = this.zzkR[i19];
                    if (str2 != null) {
                        i18++;
                        i17 += zzbxm.zzkb(str2);
                    }
                }
                i = i + i17 + (i18 * 2);
            }
            if (this.zzkS != 0) {
                i += zzbxm.zzL(17, this.zzkS);
            }
            if (this.zzkQ) {
                i += zzbxm.zzh(18, this.zzkQ);
            }
            if (this.zzkD == null || this.zzkD.length <= 0) {
                return i;
            }
            int i20 = 0;
            int i21 = 0;
            for (int i22 = 0; i22 < this.zzkD.length; i22++) {
                String str3 = this.zzkD[i22];
                if (str3 != null) {
                    i21++;
                    i20 += zzbxm.zzkb(str3);
                }
            }
            return i + i20 + (i21 * 2);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzg extends zzbxn<zzg> {
        private static volatile zzg[] zzkT;
        public int[] zzkU;
        public int[] zzkV;
        public int[] zzkW;
        public int[] zzkX;
        public int[] zzkY;
        public int[] zzkZ;
        public int[] zzla;
        public int[] zzlb;
        public int[] zzlc;
        public int[] zzld;

        public zzg() {
            zzG();
        }

        public static zzg[] zzF() {
            if (zzkT == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzkT == null) {
                        zzkT = new zzg[0];
                    }
                }
            }
            return zzkT;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzg)) {
                return false;
            }
            zzg zzgVar = (zzg) obj;
            if (!zzbxr.equals(this.zzkU, zzgVar.zzkU) || !zzbxr.equals(this.zzkV, zzgVar.zzkV) || !zzbxr.equals(this.zzkW, zzgVar.zzkW) || !zzbxr.equals(this.zzkX, zzgVar.zzkX) || !zzbxr.equals(this.zzkY, zzgVar.zzkY) || !zzbxr.equals(this.zzkZ, zzgVar.zzkZ) || !zzbxr.equals(this.zzla, zzgVar.zzla) || !zzbxr.equals(this.zzlb, zzgVar.zzlb) || !zzbxr.equals(this.zzlc, zzgVar.zzlc) || !zzbxr.equals(this.zzld, zzgVar.zzld)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzgVar.zzcuI == null || zzgVar.zzcuI.isEmpty() : this.zzcuI.equals(zzgVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzkU)) * 31) + zzbxr.hashCode(this.zzkV)) * 31) + zzbxr.hashCode(this.zzkW)) * 31) + zzbxr.hashCode(this.zzkX)) * 31) + zzbxr.hashCode(this.zzkY)) * 31) + zzbxr.hashCode(this.zzkZ)) * 31) + zzbxr.hashCode(this.zzla)) * 31) + zzbxr.hashCode(this.zzlb)) * 31) + zzbxr.hashCode(this.zzlc)) * 31) + zzbxr.hashCode(this.zzld)) * 31);
        }

        public zzg zzG() {
            this.zzkU = zzbxw.zzcuW;
            this.zzkV = zzbxw.zzcuW;
            this.zzkW = zzbxw.zzcuW;
            this.zzkX = zzbxw.zzcuW;
            this.zzkY = zzbxw.zzcuW;
            this.zzkZ = zzbxw.zzcuW;
            this.zzla = zzbxw.zzcuW;
            this.zzlb = zzbxw.zzcuW;
            this.zzlc = zzbxw.zzcuW;
            this.zzld = zzbxw.zzcuW;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzkU != null && this.zzkU.length > 0) {
                for (int i = 0; i < this.zzkU.length; i++) {
                    zzbxmVar.zzJ(1, this.zzkU[i]);
                }
            }
            if (this.zzkV != null && this.zzkV.length > 0) {
                for (int i2 = 0; i2 < this.zzkV.length; i2++) {
                    zzbxmVar.zzJ(2, this.zzkV[i2]);
                }
            }
            if (this.zzkW != null && this.zzkW.length > 0) {
                for (int i3 = 0; i3 < this.zzkW.length; i3++) {
                    zzbxmVar.zzJ(3, this.zzkW[i3]);
                }
            }
            if (this.zzkX != null && this.zzkX.length > 0) {
                for (int i4 = 0; i4 < this.zzkX.length; i4++) {
                    zzbxmVar.zzJ(4, this.zzkX[i4]);
                }
            }
            if (this.zzkY != null && this.zzkY.length > 0) {
                for (int i5 = 0; i5 < this.zzkY.length; i5++) {
                    zzbxmVar.zzJ(5, this.zzkY[i5]);
                }
            }
            if (this.zzkZ != null && this.zzkZ.length > 0) {
                for (int i6 = 0; i6 < this.zzkZ.length; i6++) {
                    zzbxmVar.zzJ(6, this.zzkZ[i6]);
                }
            }
            if (this.zzla != null && this.zzla.length > 0) {
                for (int i7 = 0; i7 < this.zzla.length; i7++) {
                    zzbxmVar.zzJ(7, this.zzla[i7]);
                }
            }
            if (this.zzlb != null && this.zzlb.length > 0) {
                for (int i8 = 0; i8 < this.zzlb.length; i8++) {
                    zzbxmVar.zzJ(8, this.zzlb[i8]);
                }
            }
            if (this.zzlc != null && this.zzlc.length > 0) {
                for (int i9 = 0; i9 < this.zzlc.length; i9++) {
                    zzbxmVar.zzJ(9, this.zzlc[i9]);
                }
            }
            if (this.zzld != null && this.zzld.length > 0) {
                for (int i10 = 0; i10 < this.zzld.length; i10++) {
                    zzbxmVar.zzJ(10, this.zzld[i10]);
                }
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzt */
        public zzg zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        int zzb = zzbxw.zzb(zzbxlVar, 8);
                        int length = this.zzkU == null ? 0 : this.zzkU.length;
                        int[] iArr = new int[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzkU, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        iArr[length] = zzbxlVar.zzaes();
                        this.zzkU = iArr;
                        break;
                    case 10:
                        int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position = zzbxlVar.getPosition();
                        int i = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i++;
                        }
                        zzbxlVar.zzrc(position);
                        int length2 = this.zzkU == null ? 0 : this.zzkU.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzkU, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = zzbxlVar.zzaes();
                            length2++;
                        }
                        this.zzkU = iArr2;
                        zzbxlVar.zzrb(zzra);
                        break;
                    case 16:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 16);
                        int length3 = this.zzkV == null ? 0 : this.zzkV.length;
                        int[] iArr3 = new int[zzb2 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzkV, 0, iArr3, 0, length3);
                        }
                        while (length3 < iArr3.length - 1) {
                            iArr3[length3] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length3++;
                        }
                        iArr3[length3] = zzbxlVar.zzaes();
                        this.zzkV = iArr3;
                        break;
                    case 18:
                        int zzra2 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position2 = zzbxlVar.getPosition();
                        int i2 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i2++;
                        }
                        zzbxlVar.zzrc(position2);
                        int length4 = this.zzkV == null ? 0 : this.zzkV.length;
                        int[] iArr4 = new int[i2 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzkV, 0, iArr4, 0, length4);
                        }
                        while (length4 < iArr4.length) {
                            iArr4[length4] = zzbxlVar.zzaes();
                            length4++;
                        }
                        this.zzkV = iArr4;
                        zzbxlVar.zzrb(zzra2);
                        break;
                    case 24:
                        int zzb3 = zzbxw.zzb(zzbxlVar, 24);
                        int length5 = this.zzkW == null ? 0 : this.zzkW.length;
                        int[] iArr5 = new int[zzb3 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.zzkW, 0, iArr5, 0, length5);
                        }
                        while (length5 < iArr5.length - 1) {
                            iArr5[length5] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length5++;
                        }
                        iArr5[length5] = zzbxlVar.zzaes();
                        this.zzkW = iArr5;
                        break;
                    case 26:
                        int zzra3 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position3 = zzbxlVar.getPosition();
                        int i3 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i3++;
                        }
                        zzbxlVar.zzrc(position3);
                        int length6 = this.zzkW == null ? 0 : this.zzkW.length;
                        int[] iArr6 = new int[i3 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.zzkW, 0, iArr6, 0, length6);
                        }
                        while (length6 < iArr6.length) {
                            iArr6[length6] = zzbxlVar.zzaes();
                            length6++;
                        }
                        this.zzkW = iArr6;
                        zzbxlVar.zzrb(zzra3);
                        break;
                    case 32:
                        int zzb4 = zzbxw.zzb(zzbxlVar, 32);
                        int length7 = this.zzkX == null ? 0 : this.zzkX.length;
                        int[] iArr7 = new int[zzb4 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.zzkX, 0, iArr7, 0, length7);
                        }
                        while (length7 < iArr7.length - 1) {
                            iArr7[length7] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length7++;
                        }
                        iArr7[length7] = zzbxlVar.zzaes();
                        this.zzkX = iArr7;
                        break;
                    case 34:
                        int zzra4 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position4 = zzbxlVar.getPosition();
                        int i4 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i4++;
                        }
                        zzbxlVar.zzrc(position4);
                        int length8 = this.zzkX == null ? 0 : this.zzkX.length;
                        int[] iArr8 = new int[i4 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.zzkX, 0, iArr8, 0, length8);
                        }
                        while (length8 < iArr8.length) {
                            iArr8[length8] = zzbxlVar.zzaes();
                            length8++;
                        }
                        this.zzkX = iArr8;
                        zzbxlVar.zzrb(zzra4);
                        break;
                    case 40:
                        int zzb5 = zzbxw.zzb(zzbxlVar, 40);
                        int length9 = this.zzkY == null ? 0 : this.zzkY.length;
                        int[] iArr9 = new int[zzb5 + length9];
                        if (length9 != 0) {
                            System.arraycopy(this.zzkY, 0, iArr9, 0, length9);
                        }
                        while (length9 < iArr9.length - 1) {
                            iArr9[length9] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length9++;
                        }
                        iArr9[length9] = zzbxlVar.zzaes();
                        this.zzkY = iArr9;
                        break;
                    case 42:
                        int zzra5 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position5 = zzbxlVar.getPosition();
                        int i5 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i5++;
                        }
                        zzbxlVar.zzrc(position5);
                        int length10 = this.zzkY == null ? 0 : this.zzkY.length;
                        int[] iArr10 = new int[i5 + length10];
                        if (length10 != 0) {
                            System.arraycopy(this.zzkY, 0, iArr10, 0, length10);
                        }
                        while (length10 < iArr10.length) {
                            iArr10[length10] = zzbxlVar.zzaes();
                            length10++;
                        }
                        this.zzkY = iArr10;
                        zzbxlVar.zzrb(zzra5);
                        break;
                    case 48:
                        int zzb6 = zzbxw.zzb(zzbxlVar, 48);
                        int length11 = this.zzkZ == null ? 0 : this.zzkZ.length;
                        int[] iArr11 = new int[zzb6 + length11];
                        if (length11 != 0) {
                            System.arraycopy(this.zzkZ, 0, iArr11, 0, length11);
                        }
                        while (length11 < iArr11.length - 1) {
                            iArr11[length11] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length11++;
                        }
                        iArr11[length11] = zzbxlVar.zzaes();
                        this.zzkZ = iArr11;
                        break;
                    case 50:
                        int zzra6 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position6 = zzbxlVar.getPosition();
                        int i6 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i6++;
                        }
                        zzbxlVar.zzrc(position6);
                        int length12 = this.zzkZ == null ? 0 : this.zzkZ.length;
                        int[] iArr12 = new int[i6 + length12];
                        if (length12 != 0) {
                            System.arraycopy(this.zzkZ, 0, iArr12, 0, length12);
                        }
                        while (length12 < iArr12.length) {
                            iArr12[length12] = zzbxlVar.zzaes();
                            length12++;
                        }
                        this.zzkZ = iArr12;
                        zzbxlVar.zzrb(zzra6);
                        break;
                    case 56:
                        int zzb7 = zzbxw.zzb(zzbxlVar, 56);
                        int length13 = this.zzla == null ? 0 : this.zzla.length;
                        int[] iArr13 = new int[zzb7 + length13];
                        if (length13 != 0) {
                            System.arraycopy(this.zzla, 0, iArr13, 0, length13);
                        }
                        while (length13 < iArr13.length - 1) {
                            iArr13[length13] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length13++;
                        }
                        iArr13[length13] = zzbxlVar.zzaes();
                        this.zzla = iArr13;
                        break;
                    case 58:
                        int zzra7 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position7 = zzbxlVar.getPosition();
                        int i7 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i7++;
                        }
                        zzbxlVar.zzrc(position7);
                        int length14 = this.zzla == null ? 0 : this.zzla.length;
                        int[] iArr14 = new int[i7 + length14];
                        if (length14 != 0) {
                            System.arraycopy(this.zzla, 0, iArr14, 0, length14);
                        }
                        while (length14 < iArr14.length) {
                            iArr14[length14] = zzbxlVar.zzaes();
                            length14++;
                        }
                        this.zzla = iArr14;
                        zzbxlVar.zzrb(zzra7);
                        break;
                    case 64:
                        int zzb8 = zzbxw.zzb(zzbxlVar, 64);
                        int length15 = this.zzlb == null ? 0 : this.zzlb.length;
                        int[] iArr15 = new int[zzb8 + length15];
                        if (length15 != 0) {
                            System.arraycopy(this.zzlb, 0, iArr15, 0, length15);
                        }
                        while (length15 < iArr15.length - 1) {
                            iArr15[length15] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length15++;
                        }
                        iArr15[length15] = zzbxlVar.zzaes();
                        this.zzlb = iArr15;
                        break;
                    case 66:
                        int zzra8 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position8 = zzbxlVar.getPosition();
                        int i8 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i8++;
                        }
                        zzbxlVar.zzrc(position8);
                        int length16 = this.zzlb == null ? 0 : this.zzlb.length;
                        int[] iArr16 = new int[i8 + length16];
                        if (length16 != 0) {
                            System.arraycopy(this.zzlb, 0, iArr16, 0, length16);
                        }
                        while (length16 < iArr16.length) {
                            iArr16[length16] = zzbxlVar.zzaes();
                            length16++;
                        }
                        this.zzlb = iArr16;
                        zzbxlVar.zzrb(zzra8);
                        break;
                    case 72:
                        int zzb9 = zzbxw.zzb(zzbxlVar, 72);
                        int length17 = this.zzlc == null ? 0 : this.zzlc.length;
                        int[] iArr17 = new int[zzb9 + length17];
                        if (length17 != 0) {
                            System.arraycopy(this.zzlc, 0, iArr17, 0, length17);
                        }
                        while (length17 < iArr17.length - 1) {
                            iArr17[length17] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length17++;
                        }
                        iArr17[length17] = zzbxlVar.zzaes();
                        this.zzlc = iArr17;
                        break;
                    case 74:
                        int zzra9 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position9 = zzbxlVar.getPosition();
                        int i9 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i9++;
                        }
                        zzbxlVar.zzrc(position9);
                        int length18 = this.zzlc == null ? 0 : this.zzlc.length;
                        int[] iArr18 = new int[i9 + length18];
                        if (length18 != 0) {
                            System.arraycopy(this.zzlc, 0, iArr18, 0, length18);
                        }
                        while (length18 < iArr18.length) {
                            iArr18[length18] = zzbxlVar.zzaes();
                            length18++;
                        }
                        this.zzlc = iArr18;
                        zzbxlVar.zzrb(zzra9);
                        break;
                    case 80:
                        int zzb10 = zzbxw.zzb(zzbxlVar, 80);
                        int length19 = this.zzld == null ? 0 : this.zzld.length;
                        int[] iArr19 = new int[zzb10 + length19];
                        if (length19 != 0) {
                            System.arraycopy(this.zzld, 0, iArr19, 0, length19);
                        }
                        while (length19 < iArr19.length - 1) {
                            iArr19[length19] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length19++;
                        }
                        iArr19[length19] = zzbxlVar.zzaes();
                        this.zzld = iArr19;
                        break;
                    case 82:
                        int zzra10 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position10 = zzbxlVar.getPosition();
                        int i10 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i10++;
                        }
                        zzbxlVar.zzrc(position10);
                        int length20 = this.zzld == null ? 0 : this.zzld.length;
                        int[] iArr20 = new int[i10 + length20];
                        if (length20 != 0) {
                            System.arraycopy(this.zzld, 0, iArr20, 0, length20);
                        }
                        while (length20 < iArr20.length) {
                            iArr20[length20] = zzbxlVar.zzaes();
                            length20++;
                        }
                        this.zzld = iArr20;
                        zzbxlVar.zzrb(zzra10);
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
            if (this.zzkU == null || this.zzkU.length <= 0) {
                i = zzu;
            } else {
                int i2 = 0;
                for (int i3 = 0; i3 < this.zzkU.length; i3++) {
                    i2 += zzbxm.zzrg(this.zzkU[i3]);
                }
                i = zzu + i2 + (this.zzkU.length * 1);
            }
            if (this.zzkV != null && this.zzkV.length > 0) {
                int i4 = 0;
                for (int i5 = 0; i5 < this.zzkV.length; i5++) {
                    i4 += zzbxm.zzrg(this.zzkV[i5]);
                }
                i = i + i4 + (this.zzkV.length * 1);
            }
            if (this.zzkW != null && this.zzkW.length > 0) {
                int i6 = 0;
                for (int i7 = 0; i7 < this.zzkW.length; i7++) {
                    i6 += zzbxm.zzrg(this.zzkW[i7]);
                }
                i = i + i6 + (this.zzkW.length * 1);
            }
            if (this.zzkX != null && this.zzkX.length > 0) {
                int i8 = 0;
                for (int i9 = 0; i9 < this.zzkX.length; i9++) {
                    i8 += zzbxm.zzrg(this.zzkX[i9]);
                }
                i = i + i8 + (this.zzkX.length * 1);
            }
            if (this.zzkY != null && this.zzkY.length > 0) {
                int i10 = 0;
                for (int i11 = 0; i11 < this.zzkY.length; i11++) {
                    i10 += zzbxm.zzrg(this.zzkY[i11]);
                }
                i = i + i10 + (this.zzkY.length * 1);
            }
            if (this.zzkZ != null && this.zzkZ.length > 0) {
                int i12 = 0;
                for (int i13 = 0; i13 < this.zzkZ.length; i13++) {
                    i12 += zzbxm.zzrg(this.zzkZ[i13]);
                }
                i = i + i12 + (this.zzkZ.length * 1);
            }
            if (this.zzla != null && this.zzla.length > 0) {
                int i14 = 0;
                for (int i15 = 0; i15 < this.zzla.length; i15++) {
                    i14 += zzbxm.zzrg(this.zzla[i15]);
                }
                i = i + i14 + (this.zzla.length * 1);
            }
            if (this.zzlb != null && this.zzlb.length > 0) {
                int i16 = 0;
                for (int i17 = 0; i17 < this.zzlb.length; i17++) {
                    i16 += zzbxm.zzrg(this.zzlb[i17]);
                }
                i = i + i16 + (this.zzlb.length * 1);
            }
            if (this.zzlc != null && this.zzlc.length > 0) {
                int i18 = 0;
                for (int i19 = 0; i19 < this.zzlc.length; i19++) {
                    i18 += zzbxm.zzrg(this.zzlc[i19]);
                }
                i = i + i18 + (this.zzlc.length * 1);
            }
            if (this.zzld == null || this.zzld.length <= 0) {
                return i;
            }
            int i20 = 0;
            for (int i21 = 0; i21 < this.zzld.length; i21++) {
                i20 += zzbxm.zzrg(this.zzld[i21]);
            }
            return i + i20 + (this.zzld.length * 1);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzh extends zzbxn<zzh> {
        public static final zzbxo<zzak.zza, zzh> zzle = zzbxo.zza(11, zzh.class, 810);
        private static final zzh[] zzlf = new zzh[0];
        public int[] zzlg;
        public int[] zzlh;
        public int[] zzli;
        public int zzlj;
        public int[] zzlk;
        public int zzll;
        public int zzlm;

        public zzh() {
            zzH();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzh)) {
                return false;
            }
            zzh zzhVar = (zzh) obj;
            if (!zzbxr.equals(this.zzlg, zzhVar.zzlg) || !zzbxr.equals(this.zzlh, zzhVar.zzlh) || !zzbxr.equals(this.zzli, zzhVar.zzli) || this.zzlj != zzhVar.zzlj || !zzbxr.equals(this.zzlk, zzhVar.zzlk) || this.zzll != zzhVar.zzll || this.zzlm != zzhVar.zzlm) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzhVar.zzcuI == null || zzhVar.zzcuI.isEmpty() : this.zzcuI.equals(zzhVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((((((((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzlg)) * 31) + zzbxr.hashCode(this.zzlh)) * 31) + zzbxr.hashCode(this.zzli)) * 31) + this.zzlj) * 31) + zzbxr.hashCode(this.zzlk)) * 31) + this.zzll) * 31) + this.zzlm) * 31);
        }

        public zzh zzH() {
            this.zzlg = zzbxw.zzcuW;
            this.zzlh = zzbxw.zzcuW;
            this.zzli = zzbxw.zzcuW;
            this.zzlj = 0;
            this.zzlk = zzbxw.zzcuW;
            this.zzll = 0;
            this.zzlm = 0;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzlg != null && this.zzlg.length > 0) {
                for (int i = 0; i < this.zzlg.length; i++) {
                    zzbxmVar.zzJ(1, this.zzlg[i]);
                }
            }
            if (this.zzlh != null && this.zzlh.length > 0) {
                for (int i2 = 0; i2 < this.zzlh.length; i2++) {
                    zzbxmVar.zzJ(2, this.zzlh[i2]);
                }
            }
            if (this.zzli != null && this.zzli.length > 0) {
                for (int i3 = 0; i3 < this.zzli.length; i3++) {
                    zzbxmVar.zzJ(3, this.zzli[i3]);
                }
            }
            if (this.zzlj != 0) {
                zzbxmVar.zzJ(4, this.zzlj);
            }
            if (this.zzlk != null && this.zzlk.length > 0) {
                for (int i4 = 0; i4 < this.zzlk.length; i4++) {
                    zzbxmVar.zzJ(5, this.zzlk[i4]);
                }
            }
            if (this.zzll != 0) {
                zzbxmVar.zzJ(6, this.zzll);
            }
            if (this.zzlm != 0) {
                zzbxmVar.zzJ(7, this.zzlm);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int i;
            int zzu = super.zzu();
            if (this.zzlg == null || this.zzlg.length <= 0) {
                i = zzu;
            } else {
                int i2 = 0;
                for (int i3 = 0; i3 < this.zzlg.length; i3++) {
                    i2 += zzbxm.zzrg(this.zzlg[i3]);
                }
                i = zzu + i2 + (this.zzlg.length * 1);
            }
            if (this.zzlh != null && this.zzlh.length > 0) {
                int i4 = 0;
                for (int i5 = 0; i5 < this.zzlh.length; i5++) {
                    i4 += zzbxm.zzrg(this.zzlh[i5]);
                }
                i = i + i4 + (this.zzlh.length * 1);
            }
            if (this.zzli != null && this.zzli.length > 0) {
                int i6 = 0;
                for (int i7 = 0; i7 < this.zzli.length; i7++) {
                    i6 += zzbxm.zzrg(this.zzli[i7]);
                }
                i = i + i6 + (this.zzli.length * 1);
            }
            if (this.zzlj != 0) {
                i += zzbxm.zzL(4, this.zzlj);
            }
            if (this.zzlk != null && this.zzlk.length > 0) {
                int i8 = 0;
                for (int i9 = 0; i9 < this.zzlk.length; i9++) {
                    i8 += zzbxm.zzrg(this.zzlk[i9]);
                }
                i = i + i8 + (this.zzlk.length * 1);
            }
            if (this.zzll != 0) {
                i += zzbxm.zzL(6, this.zzll);
            }
            return this.zzlm != 0 ? i + zzbxm.zzL(7, this.zzlm) : i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzu */
        public zzh zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        int zzb = zzbxw.zzb(zzbxlVar, 8);
                        int length = this.zzlg == null ? 0 : this.zzlg.length;
                        int[] iArr = new int[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzlg, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        iArr[length] = zzbxlVar.zzaes();
                        this.zzlg = iArr;
                        break;
                    case 10:
                        int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position = zzbxlVar.getPosition();
                        int i = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i++;
                        }
                        zzbxlVar.zzrc(position);
                        int length2 = this.zzlg == null ? 0 : this.zzlg.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzlg, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = zzbxlVar.zzaes();
                            length2++;
                        }
                        this.zzlg = iArr2;
                        zzbxlVar.zzrb(zzra);
                        break;
                    case 16:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 16);
                        int length3 = this.zzlh == null ? 0 : this.zzlh.length;
                        int[] iArr3 = new int[zzb2 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzlh, 0, iArr3, 0, length3);
                        }
                        while (length3 < iArr3.length - 1) {
                            iArr3[length3] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length3++;
                        }
                        iArr3[length3] = zzbxlVar.zzaes();
                        this.zzlh = iArr3;
                        break;
                    case 18:
                        int zzra2 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position2 = zzbxlVar.getPosition();
                        int i2 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i2++;
                        }
                        zzbxlVar.zzrc(position2);
                        int length4 = this.zzlh == null ? 0 : this.zzlh.length;
                        int[] iArr4 = new int[i2 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzlh, 0, iArr4, 0, length4);
                        }
                        while (length4 < iArr4.length) {
                            iArr4[length4] = zzbxlVar.zzaes();
                            length4++;
                        }
                        this.zzlh = iArr4;
                        zzbxlVar.zzrb(zzra2);
                        break;
                    case 24:
                        int zzb3 = zzbxw.zzb(zzbxlVar, 24);
                        int length5 = this.zzli == null ? 0 : this.zzli.length;
                        int[] iArr5 = new int[zzb3 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.zzli, 0, iArr5, 0, length5);
                        }
                        while (length5 < iArr5.length - 1) {
                            iArr5[length5] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length5++;
                        }
                        iArr5[length5] = zzbxlVar.zzaes();
                        this.zzli = iArr5;
                        break;
                    case 26:
                        int zzra3 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position3 = zzbxlVar.getPosition();
                        int i3 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i3++;
                        }
                        zzbxlVar.zzrc(position3);
                        int length6 = this.zzli == null ? 0 : this.zzli.length;
                        int[] iArr6 = new int[i3 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.zzli, 0, iArr6, 0, length6);
                        }
                        while (length6 < iArr6.length) {
                            iArr6[length6] = zzbxlVar.zzaes();
                            length6++;
                        }
                        this.zzli = iArr6;
                        zzbxlVar.zzrb(zzra3);
                        break;
                    case 32:
                        this.zzlj = zzbxlVar.zzaes();
                        break;
                    case 40:
                        int zzb4 = zzbxw.zzb(zzbxlVar, 40);
                        int length7 = this.zzlk == null ? 0 : this.zzlk.length;
                        int[] iArr7 = new int[zzb4 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.zzlk, 0, iArr7, 0, length7);
                        }
                        while (length7 < iArr7.length - 1) {
                            iArr7[length7] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length7++;
                        }
                        iArr7[length7] = zzbxlVar.zzaes();
                        this.zzlk = iArr7;
                        break;
                    case 42:
                        int zzra4 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position4 = zzbxlVar.getPosition();
                        int i4 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i4++;
                        }
                        zzbxlVar.zzrc(position4);
                        int length8 = this.zzlk == null ? 0 : this.zzlk.length;
                        int[] iArr8 = new int[i4 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.zzlk, 0, iArr8, 0, length8);
                        }
                        while (length8 < iArr8.length) {
                            iArr8[length8] = zzbxlVar.zzaes();
                            length8++;
                        }
                        this.zzlk = iArr8;
                        zzbxlVar.zzrb(zzra4);
                        break;
                    case 48:
                        this.zzll = zzbxlVar.zzaes();
                        break;
                    case 56:
                        this.zzlm = zzbxlVar.zzaes();
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

    /* loaded from: classes2.dex */
    public static final class zzi extends zzbxn<zzi> {
        private static volatile zzi[] zzln;
        public String name;
        public zzak.zza zzlo;
        public zzd zzlp;

        public zzi() {
            zzJ();
        }

        public static zzi[] zzI() {
            if (zzln == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzln == null) {
                        zzln = new zzi[0];
                    }
                }
            }
            return zzln;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzi)) {
                return false;
            }
            zzi zziVar = (zzi) obj;
            if (this.name == null) {
                if (zziVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zziVar.name)) {
                return false;
            }
            if (this.zzlo == null) {
                if (zziVar.zzlo != null) {
                    return false;
                }
            } else if (!this.zzlo.equals(zziVar.zzlo)) {
                return false;
            }
            if (this.zzlp == null) {
                if (zziVar.zzlp != null) {
                    return false;
                }
            } else if (!this.zzlp.equals(zziVar.zzlp)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zziVar.zzcuI == null || zziVar.zzcuI.isEmpty() : this.zzcuI.equals(zziVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzlp == null ? 0 : this.zzlp.hashCode()) + (((this.zzlo == null ? 0 : this.zzlo.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zzi zzJ() {
            this.name = "";
            this.zzlo = null;
            this.zzlp = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.name != null && !this.name.equals("")) {
                zzbxmVar.zzq(1, this.name);
            }
            if (this.zzlo != null) {
                zzbxmVar.zza(2, this.zzlo);
            }
            if (this.zzlp != null) {
                zzbxmVar.zza(3, this.zzlp);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.name != null && !this.name.equals("")) {
                zzu += zzbxm.zzr(1, this.name);
            }
            if (this.zzlo != null) {
                zzu += zzbxm.zzc(2, this.zzlo);
            }
            return this.zzlp != null ? zzu + zzbxm.zzc(3, this.zzlp) : zzu;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzv */
        public zzi zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.name = zzbxlVar.readString();
                        break;
                    case 18:
                        if (this.zzlo == null) {
                            this.zzlo = new zzak.zza();
                        }
                        zzbxlVar.zza(this.zzlo);
                        break;
                    case 26:
                        if (this.zzlp == null) {
                            this.zzlp = new zzd();
                        }
                        zzbxlVar.zza(this.zzlp);
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

    /* loaded from: classes2.dex */
    public static final class zzj extends zzbxn<zzj> {
        public zzi[] zzlq;
        public zzf zzlr;
        public String zzls;

        public zzj() {
            zzK();
        }

        public static zzj zzg(byte[] bArr) throws zzbxs {
            return (zzj) zzbxt.zza(new zzj(), bArr);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzj)) {
                return false;
            }
            zzj zzjVar = (zzj) obj;
            if (!zzbxr.equals(this.zzlq, zzjVar.zzlq)) {
                return false;
            }
            if (this.zzlr == null) {
                if (zzjVar.zzlr != null) {
                    return false;
                }
            } else if (!this.zzlr.equals(zzjVar.zzlr)) {
                return false;
            }
            if (this.zzls == null) {
                if (zzjVar.zzls != null) {
                    return false;
                }
            } else if (!this.zzls.equals(zzjVar.zzls)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzjVar.zzcuI == null || zzjVar.zzcuI.isEmpty() : this.zzcuI.equals(zzjVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzls == null ? 0 : this.zzls.hashCode()) + (((this.zzlr == null ? 0 : this.zzlr.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzlq)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zzj zzK() {
            this.zzlq = zzi.zzI();
            this.zzlr = null;
            this.zzls = "";
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzlq != null && this.zzlq.length > 0) {
                for (int i = 0; i < this.zzlq.length; i++) {
                    zzi zziVar = this.zzlq[i];
                    if (zziVar != null) {
                        zzbxmVar.zza(1, zziVar);
                    }
                }
            }
            if (this.zzlr != null) {
                zzbxmVar.zza(2, this.zzlr);
            }
            if (this.zzls != null && !this.zzls.equals("")) {
                zzbxmVar.zzq(3, this.zzls);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzlq != null && this.zzlq.length > 0) {
                for (int i = 0; i < this.zzlq.length; i++) {
                    zzi zziVar = this.zzlq[i];
                    if (zziVar != null) {
                        zzu += zzbxm.zzc(1, zziVar);
                    }
                }
            }
            if (this.zzlr != null) {
                zzu += zzbxm.zzc(2, this.zzlr);
            }
            return (this.zzls == null || this.zzls.equals("")) ? zzu : zzu + zzbxm.zzr(3, this.zzls);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzw */
        public zzj zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        int zzb = zzbxw.zzb(zzbxlVar, 10);
                        int length = this.zzlq == null ? 0 : this.zzlq.length;
                        zzi[] zziVarArr = new zzi[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzlq, 0, zziVarArr, 0, length);
                        }
                        while (length < zziVarArr.length - 1) {
                            zziVarArr[length] = new zzi();
                            zzbxlVar.zza(zziVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zziVarArr[length] = new zzi();
                        zzbxlVar.zza(zziVarArr[length]);
                        this.zzlq = zziVarArr;
                        break;
                    case 18:
                        if (this.zzlr == null) {
                            this.zzlr = new zzf();
                        }
                        zzbxlVar.zza(this.zzlr);
                        break;
                    case 26:
                        this.zzls = zzbxlVar.readString();
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
