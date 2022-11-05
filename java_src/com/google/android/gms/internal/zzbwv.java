package com.google.android.gms.internal;

import com.google.android.gms.games.GamesActivityResultCodes;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public interface zzbwv {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        public int type = 0;
        public long zzctJ = 0;

        public zza() {
            this.zzcuR = -1;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.type != zzaVar.type || this.zzctJ != zzaVar.zzctJ) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + ((int) (this.zzctJ ^ (this.zzctJ >>> 32)))) * 31);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.type != 0) {
                zzbxmVar.zzJ(1, this.type);
            }
            if (this.zzctJ != 0) {
                zzbxmVar.zzb(2, this.zzctJ);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzas */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
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
                                this.type = zzaes;
                                continue;
                        }
                    case 16:
                        this.zzctJ = zzbxlVar.zzaer();
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
            if (this.type != 0) {
                zzu += zzbxm.zzL(1, this.type);
            }
            return this.zzctJ != 0 ? zzu + zzbxm.zzf(2, this.zzctJ) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> {
        public zzc zzctL;
        public zzd zzctM;
        public zze zzctN;
        public zza zzctO;
        public zza zzctP;
        public long zzctK = 0;
        public int zzcti = 0;

        /* loaded from: classes2.dex */
        public static final class zza extends zzbxn<zza> {
            public String packageName = "";
            public String moduleId = "";
            public String zzctQ = "";

            public zza() {
                this.zzcuR = -1;
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof zza)) {
                    return false;
                }
                zza zzaVar = (zza) obj;
                if (this.packageName == null) {
                    if (zzaVar.packageName != null) {
                        return false;
                    }
                } else if (!this.packageName.equals(zzaVar.packageName)) {
                    return false;
                }
                if (this.moduleId == null) {
                    if (zzaVar.moduleId != null) {
                        return false;
                    }
                } else if (!this.moduleId.equals(zzaVar.moduleId)) {
                    return false;
                }
                if (this.zzctQ == null) {
                    if (zzaVar.zzctQ != null) {
                        return false;
                    }
                } else if (!this.zzctQ.equals(zzaVar.zzctQ)) {
                    return false;
                }
                return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
            }

            public int hashCode() {
                int i = 0;
                int hashCode = ((this.zzctQ == null ? 0 : this.zzctQ.hashCode()) + (((this.moduleId == null ? 0 : this.moduleId.hashCode()) + (((this.packageName == null ? 0 : this.packageName.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31;
                if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                    i = this.zzcuI.hashCode();
                }
                return hashCode + i;
            }

            @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
            public void zza(zzbxm zzbxmVar) throws IOException {
                if (this.packageName != null && !this.packageName.equals("")) {
                    zzbxmVar.zzq(1, this.packageName);
                }
                if (this.moduleId != null && !this.moduleId.equals("")) {
                    zzbxmVar.zzq(2, this.moduleId);
                }
                if (this.zzctQ != null && !this.zzctQ.equals("")) {
                    zzbxmVar.zzq(3, this.zzctQ);
                }
                super.zza(zzbxmVar);
            }

            @Override // com.google.android.gms.internal.zzbxt
            /* renamed from: zzau */
            public zza zzb(zzbxl zzbxlVar) throws IOException {
                while (true) {
                    int zzaeo = zzbxlVar.zzaeo();
                    switch (zzaeo) {
                        case 0:
                            break;
                        case 10:
                            this.packageName = zzbxlVar.readString();
                            break;
                        case 18:
                            this.moduleId = zzbxlVar.readString();
                            break;
                        case 26:
                            this.zzctQ = zzbxlVar.readString();
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
                if (this.packageName != null && !this.packageName.equals("")) {
                    zzu += zzbxm.zzr(1, this.packageName);
                }
                if (this.moduleId != null && !this.moduleId.equals("")) {
                    zzu += zzbxm.zzr(2, this.moduleId);
                }
                return (this.zzctQ == null || this.zzctQ.equals("")) ? zzu : zzu + zzbxm.zzr(3, this.zzctQ);
            }
        }

        public zzb() {
            this.zzcuR = -1;
        }

        public static zzb zzae(byte[] bArr) throws zzbxs {
            return (zzb) zzbxt.zza(new zzb(), bArr);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.zzctK != zzbVar.zzctK || this.zzcti != zzbVar.zzcti) {
                return false;
            }
            if (this.zzctL == null) {
                if (zzbVar.zzctL != null) {
                    return false;
                }
            } else if (!this.zzctL.equals(zzbVar.zzctL)) {
                return false;
            }
            if (this.zzctM == null) {
                if (zzbVar.zzctM != null) {
                    return false;
                }
            } else if (!this.zzctM.equals(zzbVar.zzctM)) {
                return false;
            }
            if (this.zzctN == null) {
                if (zzbVar.zzctN != null) {
                    return false;
                }
            } else if (!this.zzctN.equals(zzbVar.zzctN)) {
                return false;
            }
            if (this.zzctO == null) {
                if (zzbVar.zzctO != null) {
                    return false;
                }
            } else if (!this.zzctO.equals(zzbVar.zzctO)) {
                return false;
            }
            if (this.zzctP == null) {
                if (zzbVar.zzctP != null) {
                    return false;
                }
            } else if (!this.zzctP.equals(zzbVar.zzctP)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbVar.zzcuI == null || zzbVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzctP == null ? 0 : this.zzctP.hashCode()) + (((this.zzctO == null ? 0 : this.zzctO.hashCode()) + (((this.zzctN == null ? 0 : this.zzctN.hashCode()) + (((this.zzctM == null ? 0 : this.zzctM.hashCode()) + (((this.zzctL == null ? 0 : this.zzctL.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzctK ^ (this.zzctK >>> 32)))) * 31) + this.zzcti) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzctK != 0) {
                zzbxmVar.zzb(1, this.zzctK);
            }
            if (this.zzcti != 0) {
                zzbxmVar.zzJ(2, this.zzcti);
            }
            if (this.zzctL != null) {
                zzbxmVar.zza(3, this.zzctL);
            }
            if (this.zzctM != null) {
                zzbxmVar.zza(4, this.zzctM);
            }
            if (this.zzctN != null) {
                zzbxmVar.zza(5, this.zzctN);
            }
            if (this.zzctO != null) {
                zzbxmVar.zza(6, this.zzctO);
            }
            if (this.zzctP != null) {
                zzbxmVar.zza(7, this.zzctP);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzat */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzctK = zzbxlVar.zzaer();
                        break;
                    case 16:
                        int zzaes = zzbxlVar.zzaes();
                        switch (zzaes) {
                            case 0:
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
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 10000:
                            case 10001:
                            case GamesActivityResultCodes.RESULT_SIGN_IN_FAILED /* 10002 */:
                            case GamesActivityResultCodes.RESULT_LICENSE_FAILED /* 10003 */:
                            case GamesActivityResultCodes.RESULT_APP_MISCONFIGURED /* 10004 */:
                            case GamesActivityResultCodes.RESULT_LEFT_ROOM /* 10005 */:
                            case GamesActivityResultCodes.RESULT_NETWORK_FAILURE /* 10006 */:
                            case GamesActivityResultCodes.RESULT_SEND_REQUEST_FAILED /* 10007 */:
                            case GamesActivityResultCodes.RESULT_INVALID_ROOM /* 10008 */:
                            case 10009:
                            case 99999:
                                this.zzcti = zzaes;
                                continue;
                        }
                    case 26:
                        if (this.zzctL == null) {
                            this.zzctL = new zzc();
                        }
                        zzbxlVar.zza(this.zzctL);
                        break;
                    case 34:
                        if (this.zzctM == null) {
                            this.zzctM = new zzd();
                        }
                        zzbxlVar.zza(this.zzctM);
                        break;
                    case 42:
                        if (this.zzctN == null) {
                            this.zzctN = new zze();
                        }
                        zzbxlVar.zza(this.zzctN);
                        break;
                    case 50:
                        if (this.zzctO == null) {
                            this.zzctO = new zza();
                        }
                        zzbxlVar.zza(this.zzctO);
                        break;
                    case 58:
                        if (this.zzctP == null) {
                            this.zzctP = new zza();
                        }
                        zzbxlVar.zza(this.zzctP);
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
            if (this.zzctK != 0) {
                zzu += zzbxm.zzf(1, this.zzctK);
            }
            if (this.zzcti != 0) {
                zzu += zzbxm.zzL(2, this.zzcti);
            }
            if (this.zzctL != null) {
                zzu += zzbxm.zzc(3, this.zzctL);
            }
            if (this.zzctM != null) {
                zzu += zzbxm.zzc(4, this.zzctM);
            }
            if (this.zzctN != null) {
                zzu += zzbxm.zzc(5, this.zzctN);
            }
            if (this.zzctO != null) {
                zzu += zzbxm.zzc(6, this.zzctO);
            }
            return this.zzctP != null ? zzu + zzbxm.zzc(7, this.zzctP) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzbxn<zzc> {
        public int type = 0;
        public long durationMillis = 0;

        public zzc() {
            this.zzcuR = -1;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.type != zzcVar.type || this.durationMillis != zzcVar.durationMillis) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzcVar.zzcuI == null || zzcVar.zzcuI.isEmpty() : this.zzcuI.equals(zzcVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + ((int) (this.durationMillis ^ (this.durationMillis >>> 32)))) * 31);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.type != 0) {
                zzbxmVar.zzJ(1, this.type);
            }
            if (this.durationMillis != 0) {
                zzbxmVar.zzb(2, this.durationMillis);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzav */
        public zzc zzb(zzbxl zzbxlVar) throws IOException {
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
                                this.type = zzaes;
                                continue;
                        }
                    case 16:
                        this.durationMillis = zzbxlVar.zzaer();
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
            if (this.type != 0) {
                zzu += zzbxm.zzL(1, this.type);
            }
            return this.durationMillis != 0 ? zzu + zzbxm.zzf(2, this.durationMillis) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd extends zzbxn<zzd> {
        public int type = 0;
        public long zzctR = 0;
        public int priority = 0;
        public String zzctS = "";
        public String zzctT = "";
        public byte[] zzctU = zzbxw.zzcvd;
        public int[] zzctV = zzbxw.zzcuW;
        public String[] zzctW = zzbxw.zzcvb;
        public long zzctX = -1;
        public int zzctY = 0;
        public String zzctZ = "";

        public zzd() {
            this.zzcuR = -1;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (this.type != zzdVar.type || this.zzctR != zzdVar.zzctR || this.priority != zzdVar.priority) {
                return false;
            }
            if (this.zzctS == null) {
                if (zzdVar.zzctS != null) {
                    return false;
                }
            } else if (!this.zzctS.equals(zzdVar.zzctS)) {
                return false;
            }
            if (this.zzctT == null) {
                if (zzdVar.zzctT != null) {
                    return false;
                }
            } else if (!this.zzctT.equals(zzdVar.zzctT)) {
                return false;
            }
            if (!Arrays.equals(this.zzctU, zzdVar.zzctU) || !zzbxr.equals(this.zzctV, zzdVar.zzctV) || !zzbxr.equals(this.zzctW, zzdVar.zzctW) || this.zzctX != zzdVar.zzctX || this.zzctY != zzdVar.zzctY) {
                return false;
            }
            if (this.zzctZ == null) {
                if (zzdVar.zzctZ != null) {
                    return false;
                }
            } else if (!this.zzctZ.equals(zzdVar.zzctZ)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzdVar.zzcuI == null || zzdVar.zzcuI.isEmpty() : this.zzcuI.equals(zzdVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzctZ == null ? 0 : this.zzctZ.hashCode()) + (((((((((((((this.zzctT == null ? 0 : this.zzctT.hashCode()) + (((this.zzctS == null ? 0 : this.zzctS.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + ((int) (this.zzctR ^ (this.zzctR >>> 32)))) * 31) + this.priority) * 31)) * 31)) * 31) + Arrays.hashCode(this.zzctU)) * 31) + zzbxr.hashCode(this.zzctV)) * 31) + zzbxr.hashCode(this.zzctW)) * 31) + ((int) (this.zzctX ^ (this.zzctX >>> 32)))) * 31) + this.zzctY) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.type != 0) {
                zzbxmVar.zzJ(1, this.type);
            }
            if (this.zzctR != 0) {
                zzbxmVar.zzb(2, this.zzctR);
            }
            if (this.priority != 0) {
                zzbxmVar.zzJ(3, this.priority);
            }
            if (this.zzctS != null && !this.zzctS.equals("")) {
                zzbxmVar.zzq(4, this.zzctS);
            }
            if (this.zzctT != null && !this.zzctT.equals("")) {
                zzbxmVar.zzq(5, this.zzctT);
            }
            if (!Arrays.equals(this.zzctU, zzbxw.zzcvd)) {
                zzbxmVar.zzb(6, this.zzctU);
            }
            if (this.zzctV != null && this.zzctV.length > 0) {
                for (int i = 0; i < this.zzctV.length; i++) {
                    zzbxmVar.zzJ(7, this.zzctV[i]);
                }
            }
            if (this.zzctW != null && this.zzctW.length > 0) {
                for (int i2 = 0; i2 < this.zzctW.length; i2++) {
                    String str = this.zzctW[i2];
                    if (str != null) {
                        zzbxmVar.zzq(8, str);
                    }
                }
            }
            if (this.zzctX != -1) {
                zzbxmVar.zzb(9, this.zzctX);
            }
            if (this.zzctY != 0) {
                zzbxmVar.zzJ(10, this.zzctY);
            }
            if (this.zzctZ != null && !this.zzctZ.equals("")) {
                zzbxmVar.zzq(11, this.zzctZ);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaw */
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
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                this.type = zzaes;
                                continue;
                        }
                    case 16:
                        this.zzctR = zzbxlVar.zzaer();
                        break;
                    case 24:
                        int zzaes2 = zzbxlVar.zzaes();
                        switch (zzaes2) {
                            case 0:
                            case 100:
                            case 102:
                            case 104:
                            case 105:
                                this.priority = zzaes2;
                                continue;
                        }
                    case 34:
                        this.zzctS = zzbxlVar.readString();
                        break;
                    case 42:
                        this.zzctT = zzbxlVar.readString();
                        break;
                    case 50:
                        this.zzctU = zzbxlVar.readBytes();
                        break;
                    case 56:
                        int zzb = zzbxw.zzb(zzbxlVar, 56);
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
                    case 58:
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
                    case 66:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 66);
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
                    case 72:
                        this.zzctX = zzbxlVar.zzaer();
                        break;
                    case 80:
                        this.zzctY = zzbxlVar.zzaes();
                        break;
                    case 90:
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
            if (this.type != 0) {
                zzu += zzbxm.zzL(1, this.type);
            }
            if (this.zzctR != 0) {
                zzu += zzbxm.zzf(2, this.zzctR);
            }
            if (this.priority != 0) {
                zzu += zzbxm.zzL(3, this.priority);
            }
            if (this.zzctS != null && !this.zzctS.equals("")) {
                zzu += zzbxm.zzr(4, this.zzctS);
            }
            if (this.zzctT != null && !this.zzctT.equals("")) {
                zzu += zzbxm.zzr(5, this.zzctT);
            }
            if (!Arrays.equals(this.zzctU, zzbxw.zzcvd)) {
                zzu += zzbxm.zzc(6, this.zzctU);
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
            if (this.zzctX != -1) {
                zzu += zzbxm.zzf(9, this.zzctX);
            }
            if (this.zzctY != 0) {
                zzu += zzbxm.zzL(10, this.zzctY);
            }
            return (this.zzctZ == null || this.zzctZ.equals("")) ? zzu : zzu + zzbxm.zzr(11, this.zzctZ);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zze extends zzbxn<zze> {
        public int type = 0;
        public long durationMillis = 0;
        public int count = 0;

        public zze() {
            this.zzcuR = -1;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.type != zzeVar.type || this.durationMillis != zzeVar.durationMillis || this.count != zzeVar.count) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzeVar.zzcuI == null || zzeVar.zzcuI.isEmpty() : this.zzcuI.equals(zzeVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + ((int) (this.durationMillis ^ (this.durationMillis >>> 32)))) * 31) + this.count) * 31);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.type != 0) {
                zzbxmVar.zzJ(1, this.type);
            }
            if (this.durationMillis != 0) {
                zzbxmVar.zzb(2, this.durationMillis);
            }
            if (this.count != 0) {
                zzbxmVar.zzJ(3, this.count);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzax */
        public zze zzb(zzbxl zzbxlVar) throws IOException {
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
                                this.type = zzaes;
                                continue;
                        }
                    case 16:
                        this.durationMillis = zzbxlVar.zzaer();
                        break;
                    case 24:
                        this.count = zzbxlVar.zzaes();
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
            if (this.type != 0) {
                zzu += zzbxm.zzL(1, this.type);
            }
            if (this.durationMillis != 0) {
                zzu += zzbxm.zzf(2, this.durationMillis);
            }
            return this.count != 0 ? zzu + zzbxm.zzL(3, this.count) : zzu;
        }
    }
}
