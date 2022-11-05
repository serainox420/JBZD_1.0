package com.google.android.gms.internal;

import com.facebook.imageutils.JfifUtil;
import com.facebook.imageutils.TiffUtil;
import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzauw {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        private static volatile zza[] zzbwT;
        public zzf zzbwU;
        public zzf zzbwV;
        public Boolean zzbwW;
        public Integer zzbwk;

        public zza() {
            zzNz();
        }

        public static zza[] zzNy() {
            if (zzbwT == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbwT == null) {
                        zzbwT = new zza[0];
                    }
                }
            }
            return zzbwT;
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
            if (this.zzbwU == null) {
                if (zzaVar.zzbwU != null) {
                    return false;
                }
            } else if (!this.zzbwU.equals(zzaVar.zzbwU)) {
                return false;
            }
            if (this.zzbwV == null) {
                if (zzaVar.zzbwV != null) {
                    return false;
                }
            } else if (!this.zzbwV.equals(zzaVar.zzbwV)) {
                return false;
            }
            if (this.zzbwW == null) {
                if (zzaVar.zzbwW != null) {
                    return false;
                }
            } else if (!this.zzbwW.equals(zzaVar.zzbwW)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbwW == null ? 0 : this.zzbwW.hashCode()) + (((this.zzbwV == null ? 0 : this.zzbwV.hashCode()) + (((this.zzbwU == null ? 0 : this.zzbwU.hashCode()) + (((this.zzbwk == null ? 0 : this.zzbwk.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zza zzNz() {
            this.zzbwk = null;
            this.zzbwU = null;
            this.zzbwV = null;
            this.zzbwW = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzP */
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
                        if (this.zzbwU == null) {
                            this.zzbwU = new zzf();
                        }
                        zzbxlVar.zza(this.zzbwU);
                        break;
                    case 26:
                        if (this.zzbwV == null) {
                            this.zzbwV = new zzf();
                        }
                        zzbxlVar.zza(this.zzbwV);
                        break;
                    case 32:
                        this.zzbwW = Boolean.valueOf(zzbxlVar.zzaeu());
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
            if (this.zzbwk != null) {
                zzbxmVar.zzJ(1, this.zzbwk.intValue());
            }
            if (this.zzbwU != null) {
                zzbxmVar.zza(2, this.zzbwU);
            }
            if (this.zzbwV != null) {
                zzbxmVar.zza(3, this.zzbwV);
            }
            if (this.zzbwW != null) {
                zzbxmVar.zzg(4, this.zzbwW.booleanValue());
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
            if (this.zzbwU != null) {
                zzu += zzbxm.zzc(2, this.zzbwU);
            }
            if (this.zzbwV != null) {
                zzu += zzbxm.zzc(3, this.zzbwV);
            }
            return this.zzbwW != null ? zzu + zzbxm.zzh(4, this.zzbwW.booleanValue()) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> {
        private static volatile zzb[] zzbwX;
        public Integer count;
        public String name;
        public zzc[] zzbwY;
        public Long zzbwZ;
        public Long zzbxa;

        public zzb() {
            zzNB();
        }

        public static zzb[] zzNA() {
            if (zzbwX == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbwX == null) {
                        zzbwX = new zzb[0];
                    }
                }
            }
            return zzbwX;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (!zzbxr.equals(this.zzbwY, zzbVar.zzbwY)) {
                return false;
            }
            if (this.name == null) {
                if (zzbVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzbVar.name)) {
                return false;
            }
            if (this.zzbwZ == null) {
                if (zzbVar.zzbwZ != null) {
                    return false;
                }
            } else if (!this.zzbwZ.equals(zzbVar.zzbwZ)) {
                return false;
            }
            if (this.zzbxa == null) {
                if (zzbVar.zzbxa != null) {
                    return false;
                }
            } else if (!this.zzbxa.equals(zzbVar.zzbxa)) {
                return false;
            }
            if (this.count == null) {
                if (zzbVar.count != null) {
                    return false;
                }
            } else if (!this.count.equals(zzbVar.count)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbVar.zzcuI == null || zzbVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.count == null ? 0 : this.count.hashCode()) + (((this.zzbxa == null ? 0 : this.zzbxa.hashCode()) + (((this.zzbwZ == null ? 0 : this.zzbwZ.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzbwY)) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zzb zzNB() {
            this.zzbwY = zzc.zzNC();
            this.name = null;
            this.zzbwZ = null;
            this.zzbxa = null;
            this.count = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzQ */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        int zzb = zzbxw.zzb(zzbxlVar, 10);
                        int length = this.zzbwY == null ? 0 : this.zzbwY.length;
                        zzc[] zzcVarArr = new zzc[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbwY, 0, zzcVarArr, 0, length);
                        }
                        while (length < zzcVarArr.length - 1) {
                            zzcVarArr[length] = new zzc();
                            zzbxlVar.zza(zzcVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzcVarArr[length] = new zzc();
                        zzbxlVar.zza(zzcVarArr[length]);
                        this.zzbwY = zzcVarArr;
                        break;
                    case 18:
                        this.name = zzbxlVar.readString();
                        break;
                    case 24:
                        this.zzbwZ = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 32:
                        this.zzbxa = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 40:
                        this.count = Integer.valueOf(zzbxlVar.zzaes());
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
            if (this.zzbwY != null && this.zzbwY.length > 0) {
                for (int i = 0; i < this.zzbwY.length; i++) {
                    zzc zzcVar = this.zzbwY[i];
                    if (zzcVar != null) {
                        zzbxmVar.zza(1, zzcVar);
                    }
                }
            }
            if (this.name != null) {
                zzbxmVar.zzq(2, this.name);
            }
            if (this.zzbwZ != null) {
                zzbxmVar.zzb(3, this.zzbwZ.longValue());
            }
            if (this.zzbxa != null) {
                zzbxmVar.zzb(4, this.zzbxa.longValue());
            }
            if (this.count != null) {
                zzbxmVar.zzJ(5, this.count.intValue());
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbwY != null && this.zzbwY.length > 0) {
                for (int i = 0; i < this.zzbwY.length; i++) {
                    zzc zzcVar = this.zzbwY[i];
                    if (zzcVar != null) {
                        zzu += zzbxm.zzc(1, zzcVar);
                    }
                }
            }
            if (this.name != null) {
                zzu += zzbxm.zzr(2, this.name);
            }
            if (this.zzbwZ != null) {
                zzu += zzbxm.zzf(3, this.zzbwZ.longValue());
            }
            if (this.zzbxa != null) {
                zzu += zzbxm.zzf(4, this.zzbxa.longValue());
            }
            return this.count != null ? zzu + zzbxm.zzL(5, this.count.intValue()) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzbxn<zzc> {
        private static volatile zzc[] zzbxb;
        public String name;
        public String zzaGV;
        public Float zzbwe;
        public Double zzbwf;
        public Long zzbxc;

        public zzc() {
            zzND();
        }

        public static zzc[] zzNC() {
            if (zzbxb == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbxb == null) {
                        zzbxb = new zzc[0];
                    }
                }
            }
            return zzbxb;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.name == null) {
                if (zzcVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzcVar.name)) {
                return false;
            }
            if (this.zzaGV == null) {
                if (zzcVar.zzaGV != null) {
                    return false;
                }
            } else if (!this.zzaGV.equals(zzcVar.zzaGV)) {
                return false;
            }
            if (this.zzbxc == null) {
                if (zzcVar.zzbxc != null) {
                    return false;
                }
            } else if (!this.zzbxc.equals(zzcVar.zzbxc)) {
                return false;
            }
            if (this.zzbwe == null) {
                if (zzcVar.zzbwe != null) {
                    return false;
                }
            } else if (!this.zzbwe.equals(zzcVar.zzbwe)) {
                return false;
            }
            if (this.zzbwf == null) {
                if (zzcVar.zzbwf != null) {
                    return false;
                }
            } else if (!this.zzbwf.equals(zzcVar.zzbwf)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzcVar.zzcuI == null || zzcVar.zzcuI.isEmpty() : this.zzcuI.equals(zzcVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbwf == null ? 0 : this.zzbwf.hashCode()) + (((this.zzbwe == null ? 0 : this.zzbwe.hashCode()) + (((this.zzbxc == null ? 0 : this.zzbxc.hashCode()) + (((this.zzaGV == null ? 0 : this.zzaGV.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zzc zzND() {
            this.name = null;
            this.zzaGV = null;
            this.zzbxc = null;
            this.zzbwe = null;
            this.zzbwf = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzR */
        public zzc zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.name = zzbxlVar.readString();
                        break;
                    case 18:
                        this.zzaGV = zzbxlVar.readString();
                        break;
                    case 24:
                        this.zzbxc = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 37:
                        this.zzbwe = Float.valueOf(zzbxlVar.readFloat());
                        break;
                    case 41:
                        this.zzbwf = Double.valueOf(zzbxlVar.readDouble());
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
            if (this.name != null) {
                zzbxmVar.zzq(1, this.name);
            }
            if (this.zzaGV != null) {
                zzbxmVar.zzq(2, this.zzaGV);
            }
            if (this.zzbxc != null) {
                zzbxmVar.zzb(3, this.zzbxc.longValue());
            }
            if (this.zzbwe != null) {
                zzbxmVar.zzc(4, this.zzbwe.floatValue());
            }
            if (this.zzbwf != null) {
                zzbxmVar.zza(5, this.zzbwf.doubleValue());
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
            if (this.zzaGV != null) {
                zzu += zzbxm.zzr(2, this.zzaGV);
            }
            if (this.zzbxc != null) {
                zzu += zzbxm.zzf(3, this.zzbxc.longValue());
            }
            if (this.zzbwe != null) {
                zzu += zzbxm.zzd(4, this.zzbwe.floatValue());
            }
            return this.zzbwf != null ? zzu + zzbxm.zzb(5, this.zzbwf.doubleValue()) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd extends zzbxn<zzd> {
        public zze[] zzbxd;

        public zzd() {
            zzNE();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (!zzbxr.equals(this.zzbxd, zzdVar.zzbxd)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzdVar.zzcuI == null || zzdVar.zzcuI.isEmpty() : this.zzcuI.equals(zzdVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzbxd)) * 31);
        }

        public zzd zzNE() {
            this.zzbxd = zze.zzNF();
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzS */
        public zzd zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        int zzb = zzbxw.zzb(zzbxlVar, 10);
                        int length = this.zzbxd == null ? 0 : this.zzbxd.length;
                        zze[] zzeVarArr = new zze[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbxd, 0, zzeVarArr, 0, length);
                        }
                        while (length < zzeVarArr.length - 1) {
                            zzeVarArr[length] = new zze();
                            zzbxlVar.zza(zzeVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzeVarArr[length] = new zze();
                        zzbxlVar.zza(zzeVarArr[length]);
                        this.zzbxd = zzeVarArr;
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
            if (this.zzbxd != null && this.zzbxd.length > 0) {
                for (int i = 0; i < this.zzbxd.length; i++) {
                    zze zzeVar = this.zzbxd[i];
                    if (zzeVar != null) {
                        zzbxmVar.zza(1, zzeVar);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbxd != null && this.zzbxd.length > 0) {
                for (int i = 0; i < this.zzbxd.length; i++) {
                    zze zzeVar = this.zzbxd[i];
                    if (zzeVar != null) {
                        zzu += zzbxm.zzc(1, zzeVar);
                    }
                }
            }
            return zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zze extends zzbxn<zze> {
        private static volatile zze[] zzbxe;
        public String zzaS;
        public String zzbb;
        public String zzbhN;
        public String zzbqL;
        public String zzbqM;
        public String zzbqP;
        public String zzbqT;
        public Integer zzbxA;
        public Integer zzbxB;
        public Integer zzbxC;
        public String zzbxD;
        public Long zzbxE;
        public Long zzbxF;
        public Integer zzbxf;
        public zzb[] zzbxg;
        public zzg[] zzbxh;
        public Long zzbxi;
        public Long zzbxj;
        public Long zzbxk;
        public Long zzbxl;
        public Long zzbxm;
        public String zzbxn;
        public String zzbxo;
        public String zzbxp;
        public Integer zzbxq;
        public Long zzbxr;
        public Long zzbxs;
        public String zzbxt;
        public Boolean zzbxu;
        public String zzbxv;
        public Long zzbxw;
        public Integer zzbxx;
        public Boolean zzbxy;
        public zza[] zzbxz;

        public zze() {
            zzNG();
        }

        public static zze[] zzNF() {
            if (zzbxe == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbxe == null) {
                        zzbxe = new zze[0];
                    }
                }
            }
            return zzbxe;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.zzbxf == null) {
                if (zzeVar.zzbxf != null) {
                    return false;
                }
            } else if (!this.zzbxf.equals(zzeVar.zzbxf)) {
                return false;
            }
            if (!zzbxr.equals(this.zzbxg, zzeVar.zzbxg) || !zzbxr.equals(this.zzbxh, zzeVar.zzbxh)) {
                return false;
            }
            if (this.zzbxi == null) {
                if (zzeVar.zzbxi != null) {
                    return false;
                }
            } else if (!this.zzbxi.equals(zzeVar.zzbxi)) {
                return false;
            }
            if (this.zzbxj == null) {
                if (zzeVar.zzbxj != null) {
                    return false;
                }
            } else if (!this.zzbxj.equals(zzeVar.zzbxj)) {
                return false;
            }
            if (this.zzbxk == null) {
                if (zzeVar.zzbxk != null) {
                    return false;
                }
            } else if (!this.zzbxk.equals(zzeVar.zzbxk)) {
                return false;
            }
            if (this.zzbxl == null) {
                if (zzeVar.zzbxl != null) {
                    return false;
                }
            } else if (!this.zzbxl.equals(zzeVar.zzbxl)) {
                return false;
            }
            if (this.zzbxm == null) {
                if (zzeVar.zzbxm != null) {
                    return false;
                }
            } else if (!this.zzbxm.equals(zzeVar.zzbxm)) {
                return false;
            }
            if (this.zzbxn == null) {
                if (zzeVar.zzbxn != null) {
                    return false;
                }
            } else if (!this.zzbxn.equals(zzeVar.zzbxn)) {
                return false;
            }
            if (this.zzbb == null) {
                if (zzeVar.zzbb != null) {
                    return false;
                }
            } else if (!this.zzbb.equals(zzeVar.zzbb)) {
                return false;
            }
            if (this.zzbxo == null) {
                if (zzeVar.zzbxo != null) {
                    return false;
                }
            } else if (!this.zzbxo.equals(zzeVar.zzbxo)) {
                return false;
            }
            if (this.zzbxp == null) {
                if (zzeVar.zzbxp != null) {
                    return false;
                }
            } else if (!this.zzbxp.equals(zzeVar.zzbxp)) {
                return false;
            }
            if (this.zzbxq == null) {
                if (zzeVar.zzbxq != null) {
                    return false;
                }
            } else if (!this.zzbxq.equals(zzeVar.zzbxq)) {
                return false;
            }
            if (this.zzbqM == null) {
                if (zzeVar.zzbqM != null) {
                    return false;
                }
            } else if (!this.zzbqM.equals(zzeVar.zzbqM)) {
                return false;
            }
            if (this.zzaS == null) {
                if (zzeVar.zzaS != null) {
                    return false;
                }
            } else if (!this.zzaS.equals(zzeVar.zzaS)) {
                return false;
            }
            if (this.zzbhN == null) {
                if (zzeVar.zzbhN != null) {
                    return false;
                }
            } else if (!this.zzbhN.equals(zzeVar.zzbhN)) {
                return false;
            }
            if (this.zzbxr == null) {
                if (zzeVar.zzbxr != null) {
                    return false;
                }
            } else if (!this.zzbxr.equals(zzeVar.zzbxr)) {
                return false;
            }
            if (this.zzbxs == null) {
                if (zzeVar.zzbxs != null) {
                    return false;
                }
            } else if (!this.zzbxs.equals(zzeVar.zzbxs)) {
                return false;
            }
            if (this.zzbxt == null) {
                if (zzeVar.zzbxt != null) {
                    return false;
                }
            } else if (!this.zzbxt.equals(zzeVar.zzbxt)) {
                return false;
            }
            if (this.zzbxu == null) {
                if (zzeVar.zzbxu != null) {
                    return false;
                }
            } else if (!this.zzbxu.equals(zzeVar.zzbxu)) {
                return false;
            }
            if (this.zzbxv == null) {
                if (zzeVar.zzbxv != null) {
                    return false;
                }
            } else if (!this.zzbxv.equals(zzeVar.zzbxv)) {
                return false;
            }
            if (this.zzbxw == null) {
                if (zzeVar.zzbxw != null) {
                    return false;
                }
            } else if (!this.zzbxw.equals(zzeVar.zzbxw)) {
                return false;
            }
            if (this.zzbxx == null) {
                if (zzeVar.zzbxx != null) {
                    return false;
                }
            } else if (!this.zzbxx.equals(zzeVar.zzbxx)) {
                return false;
            }
            if (this.zzbqP == null) {
                if (zzeVar.zzbqP != null) {
                    return false;
                }
            } else if (!this.zzbqP.equals(zzeVar.zzbqP)) {
                return false;
            }
            if (this.zzbqL == null) {
                if (zzeVar.zzbqL != null) {
                    return false;
                }
            } else if (!this.zzbqL.equals(zzeVar.zzbqL)) {
                return false;
            }
            if (this.zzbxy == null) {
                if (zzeVar.zzbxy != null) {
                    return false;
                }
            } else if (!this.zzbxy.equals(zzeVar.zzbxy)) {
                return false;
            }
            if (!zzbxr.equals(this.zzbxz, zzeVar.zzbxz)) {
                return false;
            }
            if (this.zzbqT == null) {
                if (zzeVar.zzbqT != null) {
                    return false;
                }
            } else if (!this.zzbqT.equals(zzeVar.zzbqT)) {
                return false;
            }
            if (this.zzbxA == null) {
                if (zzeVar.zzbxA != null) {
                    return false;
                }
            } else if (!this.zzbxA.equals(zzeVar.zzbxA)) {
                return false;
            }
            if (this.zzbxB == null) {
                if (zzeVar.zzbxB != null) {
                    return false;
                }
            } else if (!this.zzbxB.equals(zzeVar.zzbxB)) {
                return false;
            }
            if (this.zzbxC == null) {
                if (zzeVar.zzbxC != null) {
                    return false;
                }
            } else if (!this.zzbxC.equals(zzeVar.zzbxC)) {
                return false;
            }
            if (this.zzbxD == null) {
                if (zzeVar.zzbxD != null) {
                    return false;
                }
            } else if (!this.zzbxD.equals(zzeVar.zzbxD)) {
                return false;
            }
            if (this.zzbxE == null) {
                if (zzeVar.zzbxE != null) {
                    return false;
                }
            } else if (!this.zzbxE.equals(zzeVar.zzbxE)) {
                return false;
            }
            if (this.zzbxF == null) {
                if (zzeVar.zzbxF != null) {
                    return false;
                }
            } else if (!this.zzbxF.equals(zzeVar.zzbxF)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzeVar.zzcuI == null || zzeVar.zzcuI.isEmpty() : this.zzcuI.equals(zzeVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbxF == null ? 0 : this.zzbxF.hashCode()) + (((this.zzbxE == null ? 0 : this.zzbxE.hashCode()) + (((this.zzbxD == null ? 0 : this.zzbxD.hashCode()) + (((this.zzbxC == null ? 0 : this.zzbxC.hashCode()) + (((this.zzbxB == null ? 0 : this.zzbxB.hashCode()) + (((this.zzbxA == null ? 0 : this.zzbxA.hashCode()) + (((this.zzbqT == null ? 0 : this.zzbqT.hashCode()) + (((((this.zzbxy == null ? 0 : this.zzbxy.hashCode()) + (((this.zzbqL == null ? 0 : this.zzbqL.hashCode()) + (((this.zzbqP == null ? 0 : this.zzbqP.hashCode()) + (((this.zzbxx == null ? 0 : this.zzbxx.hashCode()) + (((this.zzbxw == null ? 0 : this.zzbxw.hashCode()) + (((this.zzbxv == null ? 0 : this.zzbxv.hashCode()) + (((this.zzbxu == null ? 0 : this.zzbxu.hashCode()) + (((this.zzbxt == null ? 0 : this.zzbxt.hashCode()) + (((this.zzbxs == null ? 0 : this.zzbxs.hashCode()) + (((this.zzbxr == null ? 0 : this.zzbxr.hashCode()) + (((this.zzbhN == null ? 0 : this.zzbhN.hashCode()) + (((this.zzaS == null ? 0 : this.zzaS.hashCode()) + (((this.zzbqM == null ? 0 : this.zzbqM.hashCode()) + (((this.zzbxq == null ? 0 : this.zzbxq.hashCode()) + (((this.zzbxp == null ? 0 : this.zzbxp.hashCode()) + (((this.zzbxo == null ? 0 : this.zzbxo.hashCode()) + (((this.zzbb == null ? 0 : this.zzbb.hashCode()) + (((this.zzbxn == null ? 0 : this.zzbxn.hashCode()) + (((this.zzbxm == null ? 0 : this.zzbxm.hashCode()) + (((this.zzbxl == null ? 0 : this.zzbxl.hashCode()) + (((this.zzbxk == null ? 0 : this.zzbxk.hashCode()) + (((this.zzbxj == null ? 0 : this.zzbxj.hashCode()) + (((this.zzbxi == null ? 0 : this.zzbxi.hashCode()) + (((((((this.zzbxf == null ? 0 : this.zzbxf.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + zzbxr.hashCode(this.zzbxg)) * 31) + zzbxr.hashCode(this.zzbxh)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + zzbxr.hashCode(this.zzbxz)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zze zzNG() {
            this.zzbxf = null;
            this.zzbxg = zzb.zzNA();
            this.zzbxh = zzg.zzNI();
            this.zzbxi = null;
            this.zzbxj = null;
            this.zzbxk = null;
            this.zzbxl = null;
            this.zzbxm = null;
            this.zzbxn = null;
            this.zzbb = null;
            this.zzbxo = null;
            this.zzbxp = null;
            this.zzbxq = null;
            this.zzbqM = null;
            this.zzaS = null;
            this.zzbhN = null;
            this.zzbxr = null;
            this.zzbxs = null;
            this.zzbxt = null;
            this.zzbxu = null;
            this.zzbxv = null;
            this.zzbxw = null;
            this.zzbxx = null;
            this.zzbqP = null;
            this.zzbqL = null;
            this.zzbxy = null;
            this.zzbxz = zza.zzNy();
            this.zzbqT = null;
            this.zzbxA = null;
            this.zzbxB = null;
            this.zzbxC = null;
            this.zzbxD = null;
            this.zzbxE = null;
            this.zzbxF = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzT */
        public zze zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzbxf = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case 18:
                        int zzb = zzbxw.zzb(zzbxlVar, 18);
                        int length = this.zzbxg == null ? 0 : this.zzbxg.length;
                        zzb[] zzbVarArr = new zzb[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbxg, 0, zzbVarArr, 0, length);
                        }
                        while (length < zzbVarArr.length - 1) {
                            zzbVarArr[length] = new zzb();
                            zzbxlVar.zza(zzbVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzbVarArr[length] = new zzb();
                        zzbxlVar.zza(zzbVarArr[length]);
                        this.zzbxg = zzbVarArr;
                        break;
                    case 26:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 26);
                        int length2 = this.zzbxh == null ? 0 : this.zzbxh.length;
                        zzg[] zzgVarArr = new zzg[zzb2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzbxh, 0, zzgVarArr, 0, length2);
                        }
                        while (length2 < zzgVarArr.length - 1) {
                            zzgVarArr[length2] = new zzg();
                            zzbxlVar.zza(zzgVarArr[length2]);
                            zzbxlVar.zzaeo();
                            length2++;
                        }
                        zzgVarArr[length2] = new zzg();
                        zzbxlVar.zza(zzgVarArr[length2]);
                        this.zzbxh = zzgVarArr;
                        break;
                    case 32:
                        this.zzbxi = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 40:
                        this.zzbxj = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 48:
                        this.zzbxk = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 56:
                        this.zzbxm = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 66:
                        this.zzbxn = zzbxlVar.readString();
                        break;
                    case 74:
                        this.zzbb = zzbxlVar.readString();
                        break;
                    case 82:
                        this.zzbxo = zzbxlVar.readString();
                        break;
                    case 90:
                        this.zzbxp = zzbxlVar.readString();
                        break;
                    case 96:
                        this.zzbxq = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case 106:
                        this.zzbqM = zzbxlVar.readString();
                        break;
                    case 114:
                        this.zzaS = zzbxlVar.readString();
                        break;
                    case 130:
                        this.zzbhN = zzbxlVar.readString();
                        break;
                    case 136:
                        this.zzbxr = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 144:
                        this.zzbxs = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 154:
                        this.zzbxt = zzbxlVar.readString();
                        break;
                    case 160:
                        this.zzbxu = Boolean.valueOf(zzbxlVar.zzaeu());
                        break;
                    case 170:
                        this.zzbxv = zzbxlVar.readString();
                        break;
                    case 176:
                        this.zzbxw = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 184:
                        this.zzbxx = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case 194:
                        this.zzbqP = zzbxlVar.readString();
                        break;
                    case 202:
                        this.zzbqL = zzbxlVar.readString();
                        break;
                    case JfifUtil.MARKER_RST0 /* 208 */:
                        this.zzbxl = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 224:
                        this.zzbxy = Boolean.valueOf(zzbxlVar.zzaeu());
                        break;
                    case 234:
                        int zzb3 = zzbxw.zzb(zzbxlVar, 234);
                        int length3 = this.zzbxz == null ? 0 : this.zzbxz.length;
                        zza[] zzaVarArr = new zza[zzb3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzbxz, 0, zzaVarArr, 0, length3);
                        }
                        while (length3 < zzaVarArr.length - 1) {
                            zzaVarArr[length3] = new zza();
                            zzbxlVar.zza(zzaVarArr[length3]);
                            zzbxlVar.zzaeo();
                            length3++;
                        }
                        zzaVarArr[length3] = new zza();
                        zzbxlVar.zza(zzaVarArr[length3]);
                        this.zzbxz = zzaVarArr;
                        break;
                    case 242:
                        this.zzbqT = zzbxlVar.readString();
                        break;
                    case 248:
                        this.zzbxA = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case 256:
                        this.zzbxB = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case 264:
                        this.zzbxC = Integer.valueOf(zzbxlVar.zzaes());
                        break;
                    case TiffUtil.TIFF_TAG_ORIENTATION /* 274 */:
                        this.zzbxD = zzbxlVar.readString();
                        break;
                    case 280:
                        this.zzbxE = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 288:
                        this.zzbxF = Long.valueOf(zzbxlVar.zzaer());
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
            if (this.zzbxf != null) {
                zzbxmVar.zzJ(1, this.zzbxf.intValue());
            }
            if (this.zzbxg != null && this.zzbxg.length > 0) {
                for (int i = 0; i < this.zzbxg.length; i++) {
                    zzb zzbVar = this.zzbxg[i];
                    if (zzbVar != null) {
                        zzbxmVar.zza(2, zzbVar);
                    }
                }
            }
            if (this.zzbxh != null && this.zzbxh.length > 0) {
                for (int i2 = 0; i2 < this.zzbxh.length; i2++) {
                    zzg zzgVar = this.zzbxh[i2];
                    if (zzgVar != null) {
                        zzbxmVar.zza(3, zzgVar);
                    }
                }
            }
            if (this.zzbxi != null) {
                zzbxmVar.zzb(4, this.zzbxi.longValue());
            }
            if (this.zzbxj != null) {
                zzbxmVar.zzb(5, this.zzbxj.longValue());
            }
            if (this.zzbxk != null) {
                zzbxmVar.zzb(6, this.zzbxk.longValue());
            }
            if (this.zzbxm != null) {
                zzbxmVar.zzb(7, this.zzbxm.longValue());
            }
            if (this.zzbxn != null) {
                zzbxmVar.zzq(8, this.zzbxn);
            }
            if (this.zzbb != null) {
                zzbxmVar.zzq(9, this.zzbb);
            }
            if (this.zzbxo != null) {
                zzbxmVar.zzq(10, this.zzbxo);
            }
            if (this.zzbxp != null) {
                zzbxmVar.zzq(11, this.zzbxp);
            }
            if (this.zzbxq != null) {
                zzbxmVar.zzJ(12, this.zzbxq.intValue());
            }
            if (this.zzbqM != null) {
                zzbxmVar.zzq(13, this.zzbqM);
            }
            if (this.zzaS != null) {
                zzbxmVar.zzq(14, this.zzaS);
            }
            if (this.zzbhN != null) {
                zzbxmVar.zzq(16, this.zzbhN);
            }
            if (this.zzbxr != null) {
                zzbxmVar.zzb(17, this.zzbxr.longValue());
            }
            if (this.zzbxs != null) {
                zzbxmVar.zzb(18, this.zzbxs.longValue());
            }
            if (this.zzbxt != null) {
                zzbxmVar.zzq(19, this.zzbxt);
            }
            if (this.zzbxu != null) {
                zzbxmVar.zzg(20, this.zzbxu.booleanValue());
            }
            if (this.zzbxv != null) {
                zzbxmVar.zzq(21, this.zzbxv);
            }
            if (this.zzbxw != null) {
                zzbxmVar.zzb(22, this.zzbxw.longValue());
            }
            if (this.zzbxx != null) {
                zzbxmVar.zzJ(23, this.zzbxx.intValue());
            }
            if (this.zzbqP != null) {
                zzbxmVar.zzq(24, this.zzbqP);
            }
            if (this.zzbqL != null) {
                zzbxmVar.zzq(25, this.zzbqL);
            }
            if (this.zzbxl != null) {
                zzbxmVar.zzb(26, this.zzbxl.longValue());
            }
            if (this.zzbxy != null) {
                zzbxmVar.zzg(28, this.zzbxy.booleanValue());
            }
            if (this.zzbxz != null && this.zzbxz.length > 0) {
                for (int i3 = 0; i3 < this.zzbxz.length; i3++) {
                    zza zzaVar = this.zzbxz[i3];
                    if (zzaVar != null) {
                        zzbxmVar.zza(29, zzaVar);
                    }
                }
            }
            if (this.zzbqT != null) {
                zzbxmVar.zzq(30, this.zzbqT);
            }
            if (this.zzbxA != null) {
                zzbxmVar.zzJ(31, this.zzbxA.intValue());
            }
            if (this.zzbxB != null) {
                zzbxmVar.zzJ(32, this.zzbxB.intValue());
            }
            if (this.zzbxC != null) {
                zzbxmVar.zzJ(33, this.zzbxC.intValue());
            }
            if (this.zzbxD != null) {
                zzbxmVar.zzq(34, this.zzbxD);
            }
            if (this.zzbxE != null) {
                zzbxmVar.zzb(35, this.zzbxE.longValue());
            }
            if (this.zzbxF != null) {
                zzbxmVar.zzb(36, this.zzbxF.longValue());
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbxf != null) {
                zzu += zzbxm.zzL(1, this.zzbxf.intValue());
            }
            if (this.zzbxg != null && this.zzbxg.length > 0) {
                int i = zzu;
                for (int i2 = 0; i2 < this.zzbxg.length; i2++) {
                    zzb zzbVar = this.zzbxg[i2];
                    if (zzbVar != null) {
                        i += zzbxm.zzc(2, zzbVar);
                    }
                }
                zzu = i;
            }
            if (this.zzbxh != null && this.zzbxh.length > 0) {
                int i3 = zzu;
                for (int i4 = 0; i4 < this.zzbxh.length; i4++) {
                    zzg zzgVar = this.zzbxh[i4];
                    if (zzgVar != null) {
                        i3 += zzbxm.zzc(3, zzgVar);
                    }
                }
                zzu = i3;
            }
            if (this.zzbxi != null) {
                zzu += zzbxm.zzf(4, this.zzbxi.longValue());
            }
            if (this.zzbxj != null) {
                zzu += zzbxm.zzf(5, this.zzbxj.longValue());
            }
            if (this.zzbxk != null) {
                zzu += zzbxm.zzf(6, this.zzbxk.longValue());
            }
            if (this.zzbxm != null) {
                zzu += zzbxm.zzf(7, this.zzbxm.longValue());
            }
            if (this.zzbxn != null) {
                zzu += zzbxm.zzr(8, this.zzbxn);
            }
            if (this.zzbb != null) {
                zzu += zzbxm.zzr(9, this.zzbb);
            }
            if (this.zzbxo != null) {
                zzu += zzbxm.zzr(10, this.zzbxo);
            }
            if (this.zzbxp != null) {
                zzu += zzbxm.zzr(11, this.zzbxp);
            }
            if (this.zzbxq != null) {
                zzu += zzbxm.zzL(12, this.zzbxq.intValue());
            }
            if (this.zzbqM != null) {
                zzu += zzbxm.zzr(13, this.zzbqM);
            }
            if (this.zzaS != null) {
                zzu += zzbxm.zzr(14, this.zzaS);
            }
            if (this.zzbhN != null) {
                zzu += zzbxm.zzr(16, this.zzbhN);
            }
            if (this.zzbxr != null) {
                zzu += zzbxm.zzf(17, this.zzbxr.longValue());
            }
            if (this.zzbxs != null) {
                zzu += zzbxm.zzf(18, this.zzbxs.longValue());
            }
            if (this.zzbxt != null) {
                zzu += zzbxm.zzr(19, this.zzbxt);
            }
            if (this.zzbxu != null) {
                zzu += zzbxm.zzh(20, this.zzbxu.booleanValue());
            }
            if (this.zzbxv != null) {
                zzu += zzbxm.zzr(21, this.zzbxv);
            }
            if (this.zzbxw != null) {
                zzu += zzbxm.zzf(22, this.zzbxw.longValue());
            }
            if (this.zzbxx != null) {
                zzu += zzbxm.zzL(23, this.zzbxx.intValue());
            }
            if (this.zzbqP != null) {
                zzu += zzbxm.zzr(24, this.zzbqP);
            }
            if (this.zzbqL != null) {
                zzu += zzbxm.zzr(25, this.zzbqL);
            }
            if (this.zzbxl != null) {
                zzu += zzbxm.zzf(26, this.zzbxl.longValue());
            }
            if (this.zzbxy != null) {
                zzu += zzbxm.zzh(28, this.zzbxy.booleanValue());
            }
            if (this.zzbxz != null && this.zzbxz.length > 0) {
                for (int i5 = 0; i5 < this.zzbxz.length; i5++) {
                    zza zzaVar = this.zzbxz[i5];
                    if (zzaVar != null) {
                        zzu += zzbxm.zzc(29, zzaVar);
                    }
                }
            }
            if (this.zzbqT != null) {
                zzu += zzbxm.zzr(30, this.zzbqT);
            }
            if (this.zzbxA != null) {
                zzu += zzbxm.zzL(31, this.zzbxA.intValue());
            }
            if (this.zzbxB != null) {
                zzu += zzbxm.zzL(32, this.zzbxB.intValue());
            }
            if (this.zzbxC != null) {
                zzu += zzbxm.zzL(33, this.zzbxC.intValue());
            }
            if (this.zzbxD != null) {
                zzu += zzbxm.zzr(34, this.zzbxD);
            }
            if (this.zzbxE != null) {
                zzu += zzbxm.zzf(35, this.zzbxE.longValue());
            }
            return this.zzbxF != null ? zzu + zzbxm.zzf(36, this.zzbxF.longValue()) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzf extends zzbxn<zzf> {
        public long[] zzbxG;
        public long[] zzbxH;

        public zzf() {
            zzNH();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzfVar = (zzf) obj;
            if (!zzbxr.equals(this.zzbxG, zzfVar.zzbxG) || !zzbxr.equals(this.zzbxH, zzfVar.zzbxH)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzfVar.zzcuI == null || zzfVar.zzcuI.isEmpty() : this.zzcuI.equals(zzfVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzbxG)) * 31) + zzbxr.hashCode(this.zzbxH)) * 31);
        }

        public zzf zzNH() {
            this.zzbxG = zzbxw.zzcuX;
            this.zzbxH = zzbxw.zzcuX;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzU */
        public zzf zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        int zzb = zzbxw.zzb(zzbxlVar, 8);
                        int length = this.zzbxG == null ? 0 : this.zzbxG.length;
                        long[] jArr = new long[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbxG, 0, jArr, 0, length);
                        }
                        while (length < jArr.length - 1) {
                            jArr[length] = zzbxlVar.zzaeq();
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        jArr[length] = zzbxlVar.zzaeq();
                        this.zzbxG = jArr;
                        break;
                    case 10:
                        int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position = zzbxlVar.getPosition();
                        int i = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaeq();
                            i++;
                        }
                        zzbxlVar.zzrc(position);
                        int length2 = this.zzbxG == null ? 0 : this.zzbxG.length;
                        long[] jArr2 = new long[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzbxG, 0, jArr2, 0, length2);
                        }
                        while (length2 < jArr2.length) {
                            jArr2[length2] = zzbxlVar.zzaeq();
                            length2++;
                        }
                        this.zzbxG = jArr2;
                        zzbxlVar.zzrb(zzra);
                        break;
                    case 16:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 16);
                        int length3 = this.zzbxH == null ? 0 : this.zzbxH.length;
                        long[] jArr3 = new long[zzb2 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzbxH, 0, jArr3, 0, length3);
                        }
                        while (length3 < jArr3.length - 1) {
                            jArr3[length3] = zzbxlVar.zzaeq();
                            zzbxlVar.zzaeo();
                            length3++;
                        }
                        jArr3[length3] = zzbxlVar.zzaeq();
                        this.zzbxH = jArr3;
                        break;
                    case 18:
                        int zzra2 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position2 = zzbxlVar.getPosition();
                        int i2 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaeq();
                            i2++;
                        }
                        zzbxlVar.zzrc(position2);
                        int length4 = this.zzbxH == null ? 0 : this.zzbxH.length;
                        long[] jArr4 = new long[i2 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzbxH, 0, jArr4, 0, length4);
                        }
                        while (length4 < jArr4.length) {
                            jArr4[length4] = zzbxlVar.zzaeq();
                            length4++;
                        }
                        this.zzbxH = jArr4;
                        zzbxlVar.zzrb(zzra2);
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
            if (this.zzbxG != null && this.zzbxG.length > 0) {
                for (int i = 0; i < this.zzbxG.length; i++) {
                    zzbxmVar.zza(1, this.zzbxG[i]);
                }
            }
            if (this.zzbxH != null && this.zzbxH.length > 0) {
                for (int i2 = 0; i2 < this.zzbxH.length; i2++) {
                    zzbxmVar.zza(2, this.zzbxH[i2]);
                }
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int i;
            int zzu = super.zzu();
            if (this.zzbxG == null || this.zzbxG.length <= 0) {
                i = zzu;
            } else {
                int i2 = 0;
                for (int i3 = 0; i3 < this.zzbxG.length; i3++) {
                    i2 += zzbxm.zzbe(this.zzbxG[i3]);
                }
                i = zzu + i2 + (this.zzbxG.length * 1);
            }
            if (this.zzbxH == null || this.zzbxH.length <= 0) {
                return i;
            }
            int i4 = 0;
            for (int i5 = 0; i5 < this.zzbxH.length; i5++) {
                i4 += zzbxm.zzbe(this.zzbxH[i5]);
            }
            return i + i4 + (this.zzbxH.length * 1);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzg extends zzbxn<zzg> {
        private static volatile zzg[] zzbxI;
        public String name;
        public String zzaGV;
        public Float zzbwe;
        public Double zzbwf;
        public Long zzbxJ;
        public Long zzbxc;

        public zzg() {
            zzNJ();
        }

        public static zzg[] zzNI() {
            if (zzbxI == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbxI == null) {
                        zzbxI = new zzg[0];
                    }
                }
            }
            return zzbxI;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzg)) {
                return false;
            }
            zzg zzgVar = (zzg) obj;
            if (this.zzbxJ == null) {
                if (zzgVar.zzbxJ != null) {
                    return false;
                }
            } else if (!this.zzbxJ.equals(zzgVar.zzbxJ)) {
                return false;
            }
            if (this.name == null) {
                if (zzgVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzgVar.name)) {
                return false;
            }
            if (this.zzaGV == null) {
                if (zzgVar.zzaGV != null) {
                    return false;
                }
            } else if (!this.zzaGV.equals(zzgVar.zzaGV)) {
                return false;
            }
            if (this.zzbxc == null) {
                if (zzgVar.zzbxc != null) {
                    return false;
                }
            } else if (!this.zzbxc.equals(zzgVar.zzbxc)) {
                return false;
            }
            if (this.zzbwe == null) {
                if (zzgVar.zzbwe != null) {
                    return false;
                }
            } else if (!this.zzbwe.equals(zzgVar.zzbwe)) {
                return false;
            }
            if (this.zzbwf == null) {
                if (zzgVar.zzbwf != null) {
                    return false;
                }
            } else if (!this.zzbwf.equals(zzgVar.zzbwf)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzgVar.zzcuI == null || zzgVar.zzcuI.isEmpty() : this.zzcuI.equals(zzgVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbwf == null ? 0 : this.zzbwf.hashCode()) + (((this.zzbwe == null ? 0 : this.zzbwe.hashCode()) + (((this.zzbxc == null ? 0 : this.zzbxc.hashCode()) + (((this.zzaGV == null ? 0 : this.zzaGV.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + (((this.zzbxJ == null ? 0 : this.zzbxJ.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zzg zzNJ() {
            this.zzbxJ = null;
            this.name = null;
            this.zzaGV = null;
            this.zzbxc = null;
            this.zzbwe = null;
            this.zzbwf = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzV */
        public zzg zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzbxJ = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 18:
                        this.name = zzbxlVar.readString();
                        break;
                    case 26:
                        this.zzaGV = zzbxlVar.readString();
                        break;
                    case 32:
                        this.zzbxc = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 45:
                        this.zzbwe = Float.valueOf(zzbxlVar.readFloat());
                        break;
                    case 49:
                        this.zzbwf = Double.valueOf(zzbxlVar.readDouble());
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
            if (this.zzbxJ != null) {
                zzbxmVar.zzb(1, this.zzbxJ.longValue());
            }
            if (this.name != null) {
                zzbxmVar.zzq(2, this.name);
            }
            if (this.zzaGV != null) {
                zzbxmVar.zzq(3, this.zzaGV);
            }
            if (this.zzbxc != null) {
                zzbxmVar.zzb(4, this.zzbxc.longValue());
            }
            if (this.zzbwe != null) {
                zzbxmVar.zzc(5, this.zzbwe.floatValue());
            }
            if (this.zzbwf != null) {
                zzbxmVar.zza(6, this.zzbwf.doubleValue());
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbxJ != null) {
                zzu += zzbxm.zzf(1, this.zzbxJ.longValue());
            }
            if (this.name != null) {
                zzu += zzbxm.zzr(2, this.name);
            }
            if (this.zzaGV != null) {
                zzu += zzbxm.zzr(3, this.zzaGV);
            }
            if (this.zzbxc != null) {
                zzu += zzbxm.zzf(4, this.zzbxc.longValue());
            }
            if (this.zzbwe != null) {
                zzu += zzbxm.zzd(5, this.zzbwe.floatValue());
            }
            return this.zzbwf != null ? zzu + zzbxm.zzb(6, this.zzbwf.doubleValue()) : zzu;
        }
    }
}
