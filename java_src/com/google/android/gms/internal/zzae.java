package com.google.android.gms.internal;

import com.facebook.imageutils.JfifUtil;
import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzae {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        public zzb zzaK;
        public zzc zzaL;

        public zza() {
            this.zzcuR = -1;
        }

        public static zza zzc(byte[] bArr) throws zzbxs {
            return (zza) zzbxt.zza(new zza(), bArr);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zza */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        if (this.zzaK == null) {
                            this.zzaK = new zzb();
                        }
                        zzbxlVar.zza(this.zzaK);
                        break;
                    case 18:
                        if (this.zzaL == null) {
                            this.zzaL = new zzc();
                        }
                        zzbxlVar.zza(this.zzaL);
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
            if (this.zzaK != null) {
                zzbxmVar.zza(1, this.zzaK);
            }
            if (this.zzaL != null) {
                zzbxmVar.zza(2, this.zzaL);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzaK != null) {
                zzu += zzbxm.zzc(1, this.zzaK);
            }
            return this.zzaL != null ? zzu + zzbxm.zzc(2, this.zzaL) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> {
        public Integer zzaM = null;

        public zzb() {
            this.zzcuR = -1;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzaM != null) {
                zzbxmVar.zzJ(27, this.zzaM.intValue());
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzc */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case JfifUtil.MARKER_SOI /* 216 */:
                        int zzaes = zzbxlVar.zzaes();
                        switch (zzaes) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.zzaM = Integer.valueOf(zzaes);
                                continue;
                        }
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
            return this.zzaM != null ? zzu + zzbxm.zzL(27, this.zzaM.intValue()) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzbxn<zzc> {
        public String zzaN = null;
        public String zzaO = null;
        public String zzaP = null;
        public String zzaQ = null;
        public String zzaR = null;

        public zzc() {
            this.zzcuR = -1;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzaN != null) {
                zzbxmVar.zzq(1, this.zzaN);
            }
            if (this.zzaO != null) {
                zzbxmVar.zzq(2, this.zzaO);
            }
            if (this.zzaP != null) {
                zzbxmVar.zzq(3, this.zzaP);
            }
            if (this.zzaQ != null) {
                zzbxmVar.zzq(4, this.zzaQ);
            }
            if (this.zzaR != null) {
                zzbxmVar.zzq(5, this.zzaR);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzd */
        public zzc zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzaN = zzbxlVar.readString();
                        break;
                    case 18:
                        this.zzaO = zzbxlVar.readString();
                        break;
                    case 26:
                        this.zzaP = zzbxlVar.readString();
                        break;
                    case 34:
                        this.zzaQ = zzbxlVar.readString();
                        break;
                    case 42:
                        this.zzaR = zzbxlVar.readString();
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
            if (this.zzaN != null) {
                zzu += zzbxm.zzr(1, this.zzaN);
            }
            if (this.zzaO != null) {
                zzu += zzbxm.zzr(2, this.zzaO);
            }
            if (this.zzaP != null) {
                zzu += zzbxm.zzr(3, this.zzaP);
            }
            if (this.zzaQ != null) {
                zzu += zzbxm.zzr(4, this.zzaQ);
            }
            return this.zzaR != null ? zzu + zzbxm.zzr(5, this.zzaR) : zzu;
        }
    }
}
