package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzbxz {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        private static volatile zza[] zzcvO;
        public String zzcvP;

        public zza() {
            zzafj();
        }

        public static zza[] zzafi() {
            if (zzcvO == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzcvO == null) {
                        zzcvO = new zza[0];
                    }
                }
            }
            return zzcvO;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcvP != null && !this.zzcvP.equals("")) {
                zzbxmVar.zzq(1, this.zzcvP);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaV */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzcvP = zzbxlVar.readString();
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

        public zza zzafj() {
            this.zzcvP = "";
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        protected int zzu() {
            int zzu = super.zzu();
            return (this.zzcvP == null || this.zzcvP.equals("")) ? zzu : zzu + zzbxm.zzr(1, this.zzcvP);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> {
        public String zzcvP;
        public String zzcvQ;
        public long zzcvR;
        public String zzcvS;
        public int zzcvT;
        public int zzcvU;
        public String zzcvV;
        public String zzcvW;
        public String zzcvX;
        public String zzcvY;
        public String zzcvZ;
        public int zzcwa;
        public zza[] zzcwb;

        public zzb() {
            zzafk();
        }

        public static zzb zzak(byte[] bArr) throws zzbxs {
            return (zzb) zzbxt.zza(new zzb(), bArr);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcvP != null && !this.zzcvP.equals("")) {
                zzbxmVar.zzq(1, this.zzcvP);
            }
            if (this.zzcvQ != null && !this.zzcvQ.equals("")) {
                zzbxmVar.zzq(2, this.zzcvQ);
            }
            if (this.zzcvR != 0) {
                zzbxmVar.zzb(3, this.zzcvR);
            }
            if (this.zzcvS != null && !this.zzcvS.equals("")) {
                zzbxmVar.zzq(4, this.zzcvS);
            }
            if (this.zzcvT != 0) {
                zzbxmVar.zzJ(5, this.zzcvT);
            }
            if (this.zzcvU != 0) {
                zzbxmVar.zzJ(6, this.zzcvU);
            }
            if (this.zzcvV != null && !this.zzcvV.equals("")) {
                zzbxmVar.zzq(7, this.zzcvV);
            }
            if (this.zzcvW != null && !this.zzcvW.equals("")) {
                zzbxmVar.zzq(8, this.zzcvW);
            }
            if (this.zzcvX != null && !this.zzcvX.equals("")) {
                zzbxmVar.zzq(9, this.zzcvX);
            }
            if (this.zzcvY != null && !this.zzcvY.equals("")) {
                zzbxmVar.zzq(10, this.zzcvY);
            }
            if (this.zzcvZ != null && !this.zzcvZ.equals("")) {
                zzbxmVar.zzq(11, this.zzcvZ);
            }
            if (this.zzcwa != 0) {
                zzbxmVar.zzJ(12, this.zzcwa);
            }
            if (this.zzcwb != null && this.zzcwb.length > 0) {
                for (int i = 0; i < this.zzcwb.length; i++) {
                    zza zzaVar = this.zzcwb[i];
                    if (zzaVar != null) {
                        zzbxmVar.zza(13, zzaVar);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaW */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzcvP = zzbxlVar.readString();
                        break;
                    case 18:
                        this.zzcvQ = zzbxlVar.readString();
                        break;
                    case 24:
                        this.zzcvR = zzbxlVar.zzaer();
                        break;
                    case 34:
                        this.zzcvS = zzbxlVar.readString();
                        break;
                    case 40:
                        this.zzcvT = zzbxlVar.zzaes();
                        break;
                    case 48:
                        this.zzcvU = zzbxlVar.zzaes();
                        break;
                    case 58:
                        this.zzcvV = zzbxlVar.readString();
                        break;
                    case 66:
                        this.zzcvW = zzbxlVar.readString();
                        break;
                    case 74:
                        this.zzcvX = zzbxlVar.readString();
                        break;
                    case 82:
                        this.zzcvY = zzbxlVar.readString();
                        break;
                    case 90:
                        this.zzcvZ = zzbxlVar.readString();
                        break;
                    case 96:
                        int zzaes = zzbxlVar.zzaes();
                        switch (zzaes) {
                            case 0:
                            case 1:
                            case 2:
                                this.zzcwa = zzaes;
                                continue;
                        }
                    case 106:
                        int zzb = zzbxw.zzb(zzbxlVar, 106);
                        int length = this.zzcwb == null ? 0 : this.zzcwb.length;
                        zza[] zzaVarArr = new zza[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzcwb, 0, zzaVarArr, 0, length);
                        }
                        while (length < zzaVarArr.length - 1) {
                            zzaVarArr[length] = new zza();
                            zzbxlVar.zza(zzaVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzaVarArr[length] = new zza();
                        zzbxlVar.zza(zzaVarArr[length]);
                        this.zzcwb = zzaVarArr;
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

        public zzb zzafk() {
            this.zzcvP = "";
            this.zzcvQ = "";
            this.zzcvR = 0L;
            this.zzcvS = "";
            this.zzcvT = 0;
            this.zzcvU = 0;
            this.zzcvV = "";
            this.zzcvW = "";
            this.zzcvX = "";
            this.zzcvY = "";
            this.zzcvZ = "";
            this.zzcwa = 0;
            this.zzcwb = zza.zzafi();
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        protected int zzu() {
            int zzu = super.zzu();
            if (this.zzcvP != null && !this.zzcvP.equals("")) {
                zzu += zzbxm.zzr(1, this.zzcvP);
            }
            if (this.zzcvQ != null && !this.zzcvQ.equals("")) {
                zzu += zzbxm.zzr(2, this.zzcvQ);
            }
            if (this.zzcvR != 0) {
                zzu += zzbxm.zzf(3, this.zzcvR);
            }
            if (this.zzcvS != null && !this.zzcvS.equals("")) {
                zzu += zzbxm.zzr(4, this.zzcvS);
            }
            if (this.zzcvT != 0) {
                zzu += zzbxm.zzL(5, this.zzcvT);
            }
            if (this.zzcvU != 0) {
                zzu += zzbxm.zzL(6, this.zzcvU);
            }
            if (this.zzcvV != null && !this.zzcvV.equals("")) {
                zzu += zzbxm.zzr(7, this.zzcvV);
            }
            if (this.zzcvW != null && !this.zzcvW.equals("")) {
                zzu += zzbxm.zzr(8, this.zzcvW);
            }
            if (this.zzcvX != null && !this.zzcvX.equals("")) {
                zzu += zzbxm.zzr(9, this.zzcvX);
            }
            if (this.zzcvY != null && !this.zzcvY.equals("")) {
                zzu += zzbxm.zzr(10, this.zzcvY);
            }
            if (this.zzcvZ != null && !this.zzcvZ.equals("")) {
                zzu += zzbxm.zzr(11, this.zzcvZ);
            }
            if (this.zzcwa != 0) {
                zzu += zzbxm.zzL(12, this.zzcwa);
            }
            if (this.zzcwb == null || this.zzcwb.length <= 0) {
                return zzu;
            }
            int i = zzu;
            for (int i2 = 0; i2 < this.zzcwb.length; i2++) {
                zza zzaVar = this.zzcwb[i2];
                if (zzaVar != null) {
                    i += zzbxm.zzc(13, zzaVar);
                }
            }
            return i;
        }
    }
}
