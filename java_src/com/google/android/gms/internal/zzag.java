package com.google.android.gms.internal;

import com.facebook.imagepipeline.memory.BitmapCounterProvider;
import com.facebook.imageutils.JfifUtil;
import com.facebook.imageutils.TiffUtil;
import com.google.android.gms.wallet.WalletConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzag {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        public zzb zzbD;
        public C0209zza zzbS;
        public zzb zzbU;
        public zze zzcb;
        public String zzbb = null;
        public String zzba = null;
        public Long zzbc = null;
        public Long zzbd = null;
        public Long zzbe = null;
        public Long zzbf = null;
        public Long zzbg = null;
        public Long zzbh = null;
        public Long zzbi = null;
        public Long zzbj = null;
        public Long zzbk = null;
        public Long zzbl = null;
        public String zzbm = null;
        public Long zzbn = null;
        public Long zzbo = null;
        public Long zzbp = null;
        public Long zzbq = null;
        public Long zzbr = null;
        public Long zzbs = null;
        public Long zzbt = null;
        public Long zzbu = null;
        public Long zzbv = null;
        public String zzaN = null;
        public String zzbw = null;
        public Long zzbx = null;
        public Long zzby = null;
        public Long zzbz = null;
        public String zzaP = null;
        public Long zzbA = null;
        public Long zzbB = null;
        public Long zzbC = null;
        public Long zzbE = null;
        public Long zzbF = null;
        public Long zzbG = null;
        public Long zzbH = null;
        public Long zzbI = null;
        public Long zzbJ = null;
        public String zzaQ = null;
        public String zzaR = null;
        public Integer zzbK = null;
        public Integer zzbL = null;
        public Long zzbM = null;
        public Long zzbN = null;
        public Long zzbO = null;
        public Long zzbP = null;
        public Long zzbQ = null;
        public Integer zzbR = null;
        public C0209zza[] zzbT = C0209zza.zzv();
        public Long zzbV = null;
        public String zzbW = null;
        public Integer zzbX = null;
        public Boolean zzbY = null;
        public String zzbZ = null;
        public Long zzca = null;

        /* renamed from: com.google.android.gms.internal.zzag$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0209zza extends zzbxn<C0209zza> {
            private static volatile C0209zza[] zzcc;
            public Long zzbn = null;
            public Long zzbo = null;
            public Long zzcd = null;
            public Long zzce = null;
            public Long zzcf = null;
            public Long zzcg = null;
            public Integer zzch = null;
            public Long zzci = null;
            public Long zzcj = null;
            public Long zzck = null;
            public Integer zzcl = null;
            public Long zzcm = null;

            public C0209zza() {
                this.zzcuR = -1;
            }

            public static C0209zza[] zzv() {
                if (zzcc == null) {
                    synchronized (zzbxr.zzcuQ) {
                        if (zzcc == null) {
                            zzcc = new C0209zza[0];
                        }
                    }
                }
                return zzcc;
            }

            @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
            public void zza(zzbxm zzbxmVar) throws IOException {
                if (this.zzbn != null) {
                    zzbxmVar.zzb(1, this.zzbn.longValue());
                }
                if (this.zzbo != null) {
                    zzbxmVar.zzb(2, this.zzbo.longValue());
                }
                if (this.zzcd != null) {
                    zzbxmVar.zzb(3, this.zzcd.longValue());
                }
                if (this.zzce != null) {
                    zzbxmVar.zzb(4, this.zzce.longValue());
                }
                if (this.zzcf != null) {
                    zzbxmVar.zzb(5, this.zzcf.longValue());
                }
                if (this.zzcg != null) {
                    zzbxmVar.zzb(6, this.zzcg.longValue());
                }
                if (this.zzch != null) {
                    zzbxmVar.zzJ(7, this.zzch.intValue());
                }
                if (this.zzci != null) {
                    zzbxmVar.zzb(8, this.zzci.longValue());
                }
                if (this.zzcj != null) {
                    zzbxmVar.zzb(9, this.zzcj.longValue());
                }
                if (this.zzck != null) {
                    zzbxmVar.zzb(10, this.zzck.longValue());
                }
                if (this.zzcl != null) {
                    zzbxmVar.zzJ(11, this.zzcl.intValue());
                }
                if (this.zzcm != null) {
                    zzbxmVar.zzb(12, this.zzcm.longValue());
                }
                super.zza(zzbxmVar);
            }

            @Override // com.google.android.gms.internal.zzbxt
            /* renamed from: zzg */
            public C0209zza zzb(zzbxl zzbxlVar) throws IOException {
                while (true) {
                    int zzaeo = zzbxlVar.zzaeo();
                    switch (zzaeo) {
                        case 0:
                            break;
                        case 8:
                            this.zzbn = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 16:
                            this.zzbo = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 24:
                            this.zzcd = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 32:
                            this.zzce = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 40:
                            this.zzcf = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 48:
                            this.zzcg = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 56:
                            int zzaes = zzbxlVar.zzaes();
                            switch (zzaes) {
                                case 0:
                                case 1:
                                case 2:
                                case 1000:
                                    this.zzch = Integer.valueOf(zzaes);
                                    continue;
                            }
                        case 64:
                            this.zzci = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 72:
                            this.zzcj = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 80:
                            this.zzck = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 88:
                            int zzaes2 = zzbxlVar.zzaes();
                            switch (zzaes2) {
                                case 0:
                                case 1:
                                case 2:
                                case 1000:
                                    this.zzcl = Integer.valueOf(zzaes2);
                                    continue;
                            }
                        case 96:
                            this.zzcm = Long.valueOf(zzbxlVar.zzaer());
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
                if (this.zzbn != null) {
                    zzu += zzbxm.zzf(1, this.zzbn.longValue());
                }
                if (this.zzbo != null) {
                    zzu += zzbxm.zzf(2, this.zzbo.longValue());
                }
                if (this.zzcd != null) {
                    zzu += zzbxm.zzf(3, this.zzcd.longValue());
                }
                if (this.zzce != null) {
                    zzu += zzbxm.zzf(4, this.zzce.longValue());
                }
                if (this.zzcf != null) {
                    zzu += zzbxm.zzf(5, this.zzcf.longValue());
                }
                if (this.zzcg != null) {
                    zzu += zzbxm.zzf(6, this.zzcg.longValue());
                }
                if (this.zzch != null) {
                    zzu += zzbxm.zzL(7, this.zzch.intValue());
                }
                if (this.zzci != null) {
                    zzu += zzbxm.zzf(8, this.zzci.longValue());
                }
                if (this.zzcj != null) {
                    zzu += zzbxm.zzf(9, this.zzcj.longValue());
                }
                if (this.zzck != null) {
                    zzu += zzbxm.zzf(10, this.zzck.longValue());
                }
                if (this.zzcl != null) {
                    zzu += zzbxm.zzL(11, this.zzcl.intValue());
                }
                return this.zzcm != null ? zzu + zzbxm.zzf(12, this.zzcm.longValue()) : zzu;
            }
        }

        /* loaded from: classes2.dex */
        public static final class zzb extends zzbxn<zzb> {
            public Long zzbP = null;
            public Long zzbQ = null;
            public Long zzcn = null;

            public zzb() {
                this.zzcuR = -1;
            }

            @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
            public void zza(zzbxm zzbxmVar) throws IOException {
                if (this.zzbP != null) {
                    zzbxmVar.zzb(1, this.zzbP.longValue());
                }
                if (this.zzbQ != null) {
                    zzbxmVar.zzb(2, this.zzbQ.longValue());
                }
                if (this.zzcn != null) {
                    zzbxmVar.zzb(3, this.zzcn.longValue());
                }
                super.zza(zzbxmVar);
            }

            @Override // com.google.android.gms.internal.zzbxt
            /* renamed from: zzh */
            public zzb zzb(zzbxl zzbxlVar) throws IOException {
                while (true) {
                    int zzaeo = zzbxlVar.zzaeo();
                    switch (zzaeo) {
                        case 0:
                            break;
                        case 8:
                            this.zzbP = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 16:
                            this.zzbQ = Long.valueOf(zzbxlVar.zzaer());
                            break;
                        case 24:
                            this.zzcn = Long.valueOf(zzbxlVar.zzaer());
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
                if (this.zzbP != null) {
                    zzu += zzbxm.zzf(1, this.zzbP.longValue());
                }
                if (this.zzbQ != null) {
                    zzu += zzbxm.zzf(2, this.zzbQ.longValue());
                }
                return this.zzcn != null ? zzu + zzbxm.zzf(3, this.zzcn.longValue()) : zzu;
            }
        }

        public zza() {
            this.zzcuR = -1;
        }

        public static zza zzd(byte[] bArr) throws zzbxs {
            return (zza) zzbxt.zza(new zza(), bArr);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzbb != null) {
                zzbxmVar.zzq(1, this.zzbb);
            }
            if (this.zzba != null) {
                zzbxmVar.zzq(2, this.zzba);
            }
            if (this.zzbc != null) {
                zzbxmVar.zzb(3, this.zzbc.longValue());
            }
            if (this.zzbd != null) {
                zzbxmVar.zzb(4, this.zzbd.longValue());
            }
            if (this.zzbe != null) {
                zzbxmVar.zzb(5, this.zzbe.longValue());
            }
            if (this.zzbf != null) {
                zzbxmVar.zzb(6, this.zzbf.longValue());
            }
            if (this.zzbg != null) {
                zzbxmVar.zzb(7, this.zzbg.longValue());
            }
            if (this.zzbh != null) {
                zzbxmVar.zzb(8, this.zzbh.longValue());
            }
            if (this.zzbi != null) {
                zzbxmVar.zzb(9, this.zzbi.longValue());
            }
            if (this.zzbj != null) {
                zzbxmVar.zzb(10, this.zzbj.longValue());
            }
            if (this.zzbk != null) {
                zzbxmVar.zzb(11, this.zzbk.longValue());
            }
            if (this.zzbl != null) {
                zzbxmVar.zzb(12, this.zzbl.longValue());
            }
            if (this.zzbm != null) {
                zzbxmVar.zzq(13, this.zzbm);
            }
            if (this.zzbn != null) {
                zzbxmVar.zzb(14, this.zzbn.longValue());
            }
            if (this.zzbo != null) {
                zzbxmVar.zzb(15, this.zzbo.longValue());
            }
            if (this.zzbp != null) {
                zzbxmVar.zzb(16, this.zzbp.longValue());
            }
            if (this.zzbq != null) {
                zzbxmVar.zzb(17, this.zzbq.longValue());
            }
            if (this.zzbr != null) {
                zzbxmVar.zzb(18, this.zzbr.longValue());
            }
            if (this.zzbs != null) {
                zzbxmVar.zzb(19, this.zzbs.longValue());
            }
            if (this.zzbt != null) {
                zzbxmVar.zzb(20, this.zzbt.longValue());
            }
            if (this.zzbV != null) {
                zzbxmVar.zzb(21, this.zzbV.longValue());
            }
            if (this.zzbu != null) {
                zzbxmVar.zzb(22, this.zzbu.longValue());
            }
            if (this.zzbv != null) {
                zzbxmVar.zzb(23, this.zzbv.longValue());
            }
            if (this.zzbW != null) {
                zzbxmVar.zzq(24, this.zzbW);
            }
            if (this.zzca != null) {
                zzbxmVar.zzb(25, this.zzca.longValue());
            }
            if (this.zzbX != null) {
                zzbxmVar.zzJ(26, this.zzbX.intValue());
            }
            if (this.zzaN != null) {
                zzbxmVar.zzq(27, this.zzaN);
            }
            if (this.zzbY != null) {
                zzbxmVar.zzg(28, this.zzbY.booleanValue());
            }
            if (this.zzbw != null) {
                zzbxmVar.zzq(29, this.zzbw);
            }
            if (this.zzbZ != null) {
                zzbxmVar.zzq(30, this.zzbZ);
            }
            if (this.zzbx != null) {
                zzbxmVar.zzb(31, this.zzbx.longValue());
            }
            if (this.zzby != null) {
                zzbxmVar.zzb(32, this.zzby.longValue());
            }
            if (this.zzbz != null) {
                zzbxmVar.zzb(33, this.zzbz.longValue());
            }
            if (this.zzaP != null) {
                zzbxmVar.zzq(34, this.zzaP);
            }
            if (this.zzbA != null) {
                zzbxmVar.zzb(35, this.zzbA.longValue());
            }
            if (this.zzbB != null) {
                zzbxmVar.zzb(36, this.zzbB.longValue());
            }
            if (this.zzbC != null) {
                zzbxmVar.zzb(37, this.zzbC.longValue());
            }
            if (this.zzbD != null) {
                zzbxmVar.zza(38, this.zzbD);
            }
            if (this.zzbE != null) {
                zzbxmVar.zzb(39, this.zzbE.longValue());
            }
            if (this.zzbF != null) {
                zzbxmVar.zzb(40, this.zzbF.longValue());
            }
            if (this.zzbG != null) {
                zzbxmVar.zzb(41, this.zzbG.longValue());
            }
            if (this.zzbH != null) {
                zzbxmVar.zzb(42, this.zzbH.longValue());
            }
            if (this.zzbT != null && this.zzbT.length > 0) {
                for (int i = 0; i < this.zzbT.length; i++) {
                    C0209zza c0209zza = this.zzbT[i];
                    if (c0209zza != null) {
                        zzbxmVar.zza(43, c0209zza);
                    }
                }
            }
            if (this.zzbI != null) {
                zzbxmVar.zzb(44, this.zzbI.longValue());
            }
            if (this.zzbJ != null) {
                zzbxmVar.zzb(45, this.zzbJ.longValue());
            }
            if (this.zzaQ != null) {
                zzbxmVar.zzq(46, this.zzaQ);
            }
            if (this.zzaR != null) {
                zzbxmVar.zzq(47, this.zzaR);
            }
            if (this.zzbK != null) {
                zzbxmVar.zzJ(48, this.zzbK.intValue());
            }
            if (this.zzbL != null) {
                zzbxmVar.zzJ(49, this.zzbL.intValue());
            }
            if (this.zzbS != null) {
                zzbxmVar.zza(50, this.zzbS);
            }
            if (this.zzbM != null) {
                zzbxmVar.zzb(51, this.zzbM.longValue());
            }
            if (this.zzbN != null) {
                zzbxmVar.zzb(52, this.zzbN.longValue());
            }
            if (this.zzbO != null) {
                zzbxmVar.zzb(53, this.zzbO.longValue());
            }
            if (this.zzbP != null) {
                zzbxmVar.zzb(54, this.zzbP.longValue());
            }
            if (this.zzbQ != null) {
                zzbxmVar.zzb(55, this.zzbQ.longValue());
            }
            if (this.zzbR != null) {
                zzbxmVar.zzJ(56, this.zzbR.intValue());
            }
            if (this.zzbU != null) {
                zzbxmVar.zza(57, this.zzbU);
            }
            if (this.zzcb != null) {
                zzbxmVar.zza(201, this.zzcb);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzf */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzbb = zzbxlVar.readString();
                        break;
                    case 18:
                        this.zzba = zzbxlVar.readString();
                        break;
                    case 24:
                        this.zzbc = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 32:
                        this.zzbd = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 40:
                        this.zzbe = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 48:
                        this.zzbf = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 56:
                        this.zzbg = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 64:
                        this.zzbh = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 72:
                        this.zzbi = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 80:
                        this.zzbj = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 88:
                        this.zzbk = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 96:
                        this.zzbl = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 106:
                        this.zzbm = zzbxlVar.readString();
                        break;
                    case 112:
                        this.zzbn = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 120:
                        this.zzbo = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 128:
                        this.zzbp = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 136:
                        this.zzbq = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 144:
                        this.zzbr = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 152:
                        this.zzbs = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 160:
                        this.zzbt = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 168:
                        this.zzbV = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 176:
                        this.zzbu = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 184:
                        this.zzbv = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 194:
                        this.zzbW = zzbxlVar.readString();
                        break;
                    case 200:
                        this.zzca = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case JfifUtil.MARKER_RST0 /* 208 */:
                        int zzaes = zzbxlVar.zzaes();
                        switch (zzaes) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.zzbX = Integer.valueOf(zzaes);
                                continue;
                        }
                    case JfifUtil.MARKER_SOS /* 218 */:
                        this.zzaN = zzbxlVar.readString();
                        break;
                    case 224:
                        this.zzbY = Boolean.valueOf(zzbxlVar.zzaeu());
                        break;
                    case 234:
                        this.zzbw = zzbxlVar.readString();
                        break;
                    case 242:
                        this.zzbZ = zzbxlVar.readString();
                        break;
                    case 248:
                        this.zzbx = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 256:
                        this.zzby = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 264:
                        this.zzbz = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case TiffUtil.TIFF_TAG_ORIENTATION /* 274 */:
                        this.zzaP = zzbxlVar.readString();
                        break;
                    case 280:
                        this.zzbA = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 288:
                        this.zzbB = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 296:
                        this.zzbC = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 306:
                        if (this.zzbD == null) {
                            this.zzbD = new zzb();
                        }
                        zzbxlVar.zza(this.zzbD);
                        break;
                    case 312:
                        this.zzbE = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 320:
                        this.zzbF = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 328:
                        this.zzbG = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 336:
                        this.zzbH = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 346:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 346);
                        int length = this.zzbT == null ? 0 : this.zzbT.length;
                        C0209zza[] c0209zzaArr = new C0209zza[zzb2 + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbT, 0, c0209zzaArr, 0, length);
                        }
                        while (length < c0209zzaArr.length - 1) {
                            c0209zzaArr[length] = new C0209zza();
                            zzbxlVar.zza(c0209zzaArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        c0209zzaArr[length] = new C0209zza();
                        zzbxlVar.zza(c0209zzaArr[length]);
                        this.zzbT = c0209zzaArr;
                        break;
                    case 352:
                        this.zzbI = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 360:
                        this.zzbJ = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 370:
                        this.zzaQ = zzbxlVar.readString();
                        break;
                    case 378:
                        this.zzaR = zzbxlVar.readString();
                        break;
                    case BitmapCounterProvider.MAX_BITMAP_COUNT /* 384 */:
                        int zzaes2 = zzbxlVar.zzaes();
                        switch (zzaes2) {
                            case 0:
                            case 1:
                            case 2:
                            case 1000:
                                this.zzbK = Integer.valueOf(zzaes2);
                                continue;
                        }
                    case 392:
                        int zzaes3 = zzbxlVar.zzaes();
                        switch (zzaes3) {
                            case 0:
                            case 1:
                            case 2:
                            case 1000:
                                this.zzbL = Integer.valueOf(zzaes3);
                                continue;
                        }
                    case WalletConstants.ERROR_CODE_SERVICE_UNAVAILABLE /* 402 */:
                        if (this.zzbS == null) {
                            this.zzbS = new C0209zza();
                        }
                        zzbxlVar.zza(this.zzbS);
                        break;
                    case AdTrackerConstants.NETWORK_TIMEOUT /* 408 */:
                        this.zzbM = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 416:
                        this.zzbN = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case AdTrackerConstants.EXCEPTION /* 424 */:
                        this.zzbO = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 432:
                        this.zzbP = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 440:
                        this.zzbQ = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 448:
                        int zzaes4 = zzbxlVar.zzaes();
                        switch (zzaes4) {
                            case 0:
                            case 1:
                            case 2:
                            case 1000:
                                this.zzbR = Integer.valueOf(zzaes4);
                                continue;
                        }
                    case 458:
                        if (this.zzbU == null) {
                            this.zzbU = new zzb();
                        }
                        zzbxlVar.zza(this.zzbU);
                        break;
                    case 1610:
                        if (this.zzcb == null) {
                            this.zzcb = new zze();
                        }
                        zzbxlVar.zza(this.zzcb);
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
            if (this.zzbb != null) {
                zzu += zzbxm.zzr(1, this.zzbb);
            }
            if (this.zzba != null) {
                zzu += zzbxm.zzr(2, this.zzba);
            }
            if (this.zzbc != null) {
                zzu += zzbxm.zzf(3, this.zzbc.longValue());
            }
            if (this.zzbd != null) {
                zzu += zzbxm.zzf(4, this.zzbd.longValue());
            }
            if (this.zzbe != null) {
                zzu += zzbxm.zzf(5, this.zzbe.longValue());
            }
            if (this.zzbf != null) {
                zzu += zzbxm.zzf(6, this.zzbf.longValue());
            }
            if (this.zzbg != null) {
                zzu += zzbxm.zzf(7, this.zzbg.longValue());
            }
            if (this.zzbh != null) {
                zzu += zzbxm.zzf(8, this.zzbh.longValue());
            }
            if (this.zzbi != null) {
                zzu += zzbxm.zzf(9, this.zzbi.longValue());
            }
            if (this.zzbj != null) {
                zzu += zzbxm.zzf(10, this.zzbj.longValue());
            }
            if (this.zzbk != null) {
                zzu += zzbxm.zzf(11, this.zzbk.longValue());
            }
            if (this.zzbl != null) {
                zzu += zzbxm.zzf(12, this.zzbl.longValue());
            }
            if (this.zzbm != null) {
                zzu += zzbxm.zzr(13, this.zzbm);
            }
            if (this.zzbn != null) {
                zzu += zzbxm.zzf(14, this.zzbn.longValue());
            }
            if (this.zzbo != null) {
                zzu += zzbxm.zzf(15, this.zzbo.longValue());
            }
            if (this.zzbp != null) {
                zzu += zzbxm.zzf(16, this.zzbp.longValue());
            }
            if (this.zzbq != null) {
                zzu += zzbxm.zzf(17, this.zzbq.longValue());
            }
            if (this.zzbr != null) {
                zzu += zzbxm.zzf(18, this.zzbr.longValue());
            }
            if (this.zzbs != null) {
                zzu += zzbxm.zzf(19, this.zzbs.longValue());
            }
            if (this.zzbt != null) {
                zzu += zzbxm.zzf(20, this.zzbt.longValue());
            }
            if (this.zzbV != null) {
                zzu += zzbxm.zzf(21, this.zzbV.longValue());
            }
            if (this.zzbu != null) {
                zzu += zzbxm.zzf(22, this.zzbu.longValue());
            }
            if (this.zzbv != null) {
                zzu += zzbxm.zzf(23, this.zzbv.longValue());
            }
            if (this.zzbW != null) {
                zzu += zzbxm.zzr(24, this.zzbW);
            }
            if (this.zzca != null) {
                zzu += zzbxm.zzf(25, this.zzca.longValue());
            }
            if (this.zzbX != null) {
                zzu += zzbxm.zzL(26, this.zzbX.intValue());
            }
            if (this.zzaN != null) {
                zzu += zzbxm.zzr(27, this.zzaN);
            }
            if (this.zzbY != null) {
                zzu += zzbxm.zzh(28, this.zzbY.booleanValue());
            }
            if (this.zzbw != null) {
                zzu += zzbxm.zzr(29, this.zzbw);
            }
            if (this.zzbZ != null) {
                zzu += zzbxm.zzr(30, this.zzbZ);
            }
            if (this.zzbx != null) {
                zzu += zzbxm.zzf(31, this.zzbx.longValue());
            }
            if (this.zzby != null) {
                zzu += zzbxm.zzf(32, this.zzby.longValue());
            }
            if (this.zzbz != null) {
                zzu += zzbxm.zzf(33, this.zzbz.longValue());
            }
            if (this.zzaP != null) {
                zzu += zzbxm.zzr(34, this.zzaP);
            }
            if (this.zzbA != null) {
                zzu += zzbxm.zzf(35, this.zzbA.longValue());
            }
            if (this.zzbB != null) {
                zzu += zzbxm.zzf(36, this.zzbB.longValue());
            }
            if (this.zzbC != null) {
                zzu += zzbxm.zzf(37, this.zzbC.longValue());
            }
            if (this.zzbD != null) {
                zzu += zzbxm.zzc(38, this.zzbD);
            }
            if (this.zzbE != null) {
                zzu += zzbxm.zzf(39, this.zzbE.longValue());
            }
            if (this.zzbF != null) {
                zzu += zzbxm.zzf(40, this.zzbF.longValue());
            }
            if (this.zzbG != null) {
                zzu += zzbxm.zzf(41, this.zzbG.longValue());
            }
            if (this.zzbH != null) {
                zzu += zzbxm.zzf(42, this.zzbH.longValue());
            }
            if (this.zzbT != null && this.zzbT.length > 0) {
                int i = zzu;
                for (int i2 = 0; i2 < this.zzbT.length; i2++) {
                    C0209zza c0209zza = this.zzbT[i2];
                    if (c0209zza != null) {
                        i += zzbxm.zzc(43, c0209zza);
                    }
                }
                zzu = i;
            }
            if (this.zzbI != null) {
                zzu += zzbxm.zzf(44, this.zzbI.longValue());
            }
            if (this.zzbJ != null) {
                zzu += zzbxm.zzf(45, this.zzbJ.longValue());
            }
            if (this.zzaQ != null) {
                zzu += zzbxm.zzr(46, this.zzaQ);
            }
            if (this.zzaR != null) {
                zzu += zzbxm.zzr(47, this.zzaR);
            }
            if (this.zzbK != null) {
                zzu += zzbxm.zzL(48, this.zzbK.intValue());
            }
            if (this.zzbL != null) {
                zzu += zzbxm.zzL(49, this.zzbL.intValue());
            }
            if (this.zzbS != null) {
                zzu += zzbxm.zzc(50, this.zzbS);
            }
            if (this.zzbM != null) {
                zzu += zzbxm.zzf(51, this.zzbM.longValue());
            }
            if (this.zzbN != null) {
                zzu += zzbxm.zzf(52, this.zzbN.longValue());
            }
            if (this.zzbO != null) {
                zzu += zzbxm.zzf(53, this.zzbO.longValue());
            }
            if (this.zzbP != null) {
                zzu += zzbxm.zzf(54, this.zzbP.longValue());
            }
            if (this.zzbQ != null) {
                zzu += zzbxm.zzf(55, this.zzbQ.longValue());
            }
            if (this.zzbR != null) {
                zzu += zzbxm.zzL(56, this.zzbR.intValue());
            }
            if (this.zzbU != null) {
                zzu += zzbxm.zzc(57, this.zzbU);
            }
            return this.zzcb != null ? zzu + zzbxm.zzc(201, this.zzcb) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> {
        public Long zzco = null;
        public Integer zzcp = null;
        public Boolean zzcq = null;
        public int[] zzcr = zzbxw.zzcuW;
        public Long zzcs = null;

        public zzb() {
            this.zzcuR = -1;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzco != null) {
                zzbxmVar.zzb(1, this.zzco.longValue());
            }
            if (this.zzcp != null) {
                zzbxmVar.zzJ(2, this.zzcp.intValue());
            }
            if (this.zzcq != null) {
                zzbxmVar.zzg(3, this.zzcq.booleanValue());
            }
            if (this.zzcr != null && this.zzcr.length > 0) {
                for (int i = 0; i < this.zzcr.length; i++) {
                    zzbxmVar.zzJ(4, this.zzcr[i]);
                }
            }
            if (this.zzcs != null) {
                zzbxmVar.zza(5, this.zzcs.longValue());
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzi */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzco = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 16:
                        this.zzcp = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case 24:
                        this.zzcq = Boolean.valueOf(zzbxlVar.zzaeu());
                        break;
                    case 32:
                        int zzb = zzbxw.zzb(zzbxlVar, 32);
                        int length = this.zzcr == null ? 0 : this.zzcr.length;
                        int[] iArr = new int[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzcr, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        iArr[length] = zzbxlVar.zzaes();
                        this.zzcr = iArr;
                        break;
                    case 34:
                        int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position = zzbxlVar.getPosition();
                        int i = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i++;
                        }
                        zzbxlVar.zzrc(position);
                        int length2 = this.zzcr == null ? 0 : this.zzcr.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzcr, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = zzbxlVar.zzaes();
                            length2++;
                        }
                        this.zzcr = iArr2;
                        zzbxlVar.zzrb(zzra);
                        break;
                    case 40:
                        this.zzcs = Long.valueOf(zzbxlVar.zzaeq());
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
            if (this.zzco != null) {
                zzu += zzbxm.zzf(1, this.zzco.longValue());
            }
            if (this.zzcp != null) {
                zzu += zzbxm.zzL(2, this.zzcp.intValue());
            }
            if (this.zzcq != null) {
                zzu += zzbxm.zzh(3, this.zzcq.booleanValue());
            }
            if (this.zzcr != null && this.zzcr.length > 0) {
                int i = 0;
                for (int i2 = 0; i2 < this.zzcr.length; i2++) {
                    i += zzbxm.zzrg(this.zzcr[i2]);
                }
                zzu = zzu + i + (this.zzcr.length * 1);
            }
            return this.zzcs != null ? zzu + zzbxm.zze(5, this.zzcs.longValue()) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzbxn<zzc> {
        public byte[] zzct = null;
        public byte[] zzcu = null;

        public zzc() {
            this.zzcuR = -1;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzct != null) {
                zzbxmVar.zzb(1, this.zzct);
            }
            if (this.zzcu != null) {
                zzbxmVar.zzb(2, this.zzcu);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzj */
        public zzc zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzct = zzbxlVar.readBytes();
                        break;
                    case 18:
                        this.zzcu = zzbxlVar.readBytes();
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
            if (this.zzct != null) {
                zzu += zzbxm.zzc(1, this.zzct);
            }
            return this.zzcu != null ? zzu + zzbxm.zzc(2, this.zzcu) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd extends zzbxn<zzd> {
        public byte[] data = null;
        public byte[] zzcv = null;
        public byte[] zzcw = null;
        public byte[] zzcx = null;

        public zzd() {
            this.zzcuR = -1;
        }

        public static zzd zze(byte[] bArr) throws zzbxs {
            return (zzd) zzbxt.zza(new zzd(), bArr);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.data != null) {
                zzbxmVar.zzb(1, this.data);
            }
            if (this.zzcv != null) {
                zzbxmVar.zzb(2, this.zzcv);
            }
            if (this.zzcw != null) {
                zzbxmVar.zzb(3, this.zzcw);
            }
            if (this.zzcx != null) {
                zzbxmVar.zzb(4, this.zzcx);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzk */
        public zzd zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.data = zzbxlVar.readBytes();
                        break;
                    case 18:
                        this.zzcv = zzbxlVar.readBytes();
                        break;
                    case 26:
                        this.zzcw = zzbxlVar.readBytes();
                        break;
                    case 34:
                        this.zzcx = zzbxlVar.readBytes();
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
            if (this.data != null) {
                zzu += zzbxm.zzc(1, this.data);
            }
            if (this.zzcv != null) {
                zzu += zzbxm.zzc(2, this.zzcv);
            }
            if (this.zzcw != null) {
                zzu += zzbxm.zzc(3, this.zzcw);
            }
            return this.zzcx != null ? zzu + zzbxm.zzc(4, this.zzcx) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zze extends zzbxn<zze> {
        public Long zzco = null;
        public String zzcy = null;
        public byte[] zzcz = null;

        public zze() {
            this.zzcuR = -1;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzco != null) {
                zzbxmVar.zzb(1, this.zzco.longValue());
            }
            if (this.zzcy != null) {
                zzbxmVar.zzq(3, this.zzcy);
            }
            if (this.zzcz != null) {
                zzbxmVar.zzb(4, this.zzcz);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzl */
        public zze zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzco = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 26:
                        this.zzcy = zzbxlVar.readString();
                        break;
                    case 34:
                        this.zzcz = zzbxlVar.readBytes();
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
            if (this.zzco != null) {
                zzu += zzbxm.zzf(1, this.zzco.longValue());
            }
            if (this.zzcy != null) {
                zzu += zzbxm.zzr(3, this.zzcy);
            }
            return this.zzcz != null ? zzu + zzbxm.zzc(4, this.zzcz) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzf extends zzbxn<zzf> {
        public byte[][] zzcA = zzbxw.zzcvc;
        public byte[] zzcv = null;
        public Integer zzcB = null;
        public Integer zzcC = null;

        public zzf() {
            this.zzcuR = -1;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcA != null && this.zzcA.length > 0) {
                for (int i = 0; i < this.zzcA.length; i++) {
                    byte[] bArr = this.zzcA[i];
                    if (bArr != null) {
                        zzbxmVar.zzb(1, bArr);
                    }
                }
            }
            if (this.zzcv != null) {
                zzbxmVar.zzb(2, this.zzcv);
            }
            if (this.zzcB != null) {
                zzbxmVar.zzJ(3, this.zzcB.intValue());
            }
            if (this.zzcC != null) {
                zzbxmVar.zzJ(4, this.zzcC.intValue());
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzm */
        public zzf zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        int zzb = zzbxw.zzb(zzbxlVar, 10);
                        int length = this.zzcA == null ? 0 : this.zzcA.length;
                        byte[][] bArr = new byte[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzcA, 0, bArr, 0, length);
                        }
                        while (length < bArr.length - 1) {
                            bArr[length] = zzbxlVar.readBytes();
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        bArr[length] = zzbxlVar.readBytes();
                        this.zzcA = bArr;
                        break;
                    case 18:
                        this.zzcv = zzbxlVar.readBytes();
                        break;
                    case 24:
                        int zzaes = zzbxlVar.zzaes();
                        switch (zzaes) {
                            case 0:
                            case 1:
                                this.zzcB = Integer.valueOf(zzaes);
                                continue;
                        }
                    case 32:
                        int zzaes2 = zzbxlVar.zzaes();
                        switch (zzaes2) {
                            case 0:
                            case 1:
                                this.zzcC = Integer.valueOf(zzaes2);
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
            int i;
            int zzu = super.zzu();
            if (this.zzcA == null || this.zzcA.length <= 0) {
                i = zzu;
            } else {
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzcA.length; i4++) {
                    byte[] bArr = this.zzcA[i4];
                    if (bArr != null) {
                        i3++;
                        i2 += zzbxm.zzai(bArr);
                    }
                }
                i = zzu + i2 + (i3 * 1);
            }
            if (this.zzcv != null) {
                i += zzbxm.zzc(2, this.zzcv);
            }
            if (this.zzcB != null) {
                i += zzbxm.zzL(3, this.zzcB.intValue());
            }
            return this.zzcC != null ? i + zzbxm.zzL(4, this.zzcC.intValue()) : i;
        }
    }
}
