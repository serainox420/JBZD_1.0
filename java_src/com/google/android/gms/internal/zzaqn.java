package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzaqn {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        public C0254zza[] zzbhg;

        /* renamed from: com.google.android.gms.internal.zzaqn$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0254zza extends zzbxn<C0254zza> {
            private static volatile C0254zza[] zzbhh;
            public int viewId;
            public String zzbhi;
            public String zzbhj;

            public C0254zza() {
                zzGZ();
            }

            public static C0254zza[] zzGY() {
                if (zzbhh == null) {
                    synchronized (zzbxr.zzcuQ) {
                        if (zzbhh == null) {
                            zzbhh = new C0254zza[0];
                        }
                    }
                }
                return zzbhh;
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof C0254zza)) {
                    return false;
                }
                C0254zza c0254zza = (C0254zza) obj;
                if (this.zzbhi == null) {
                    if (c0254zza.zzbhi != null) {
                        return false;
                    }
                } else if (!this.zzbhi.equals(c0254zza.zzbhi)) {
                    return false;
                }
                if (this.zzbhj == null) {
                    if (c0254zza.zzbhj != null) {
                        return false;
                    }
                } else if (!this.zzbhj.equals(c0254zza.zzbhj)) {
                    return false;
                }
                if (this.viewId != c0254zza.viewId) {
                    return false;
                }
                return (this.zzcuI == null || this.zzcuI.isEmpty()) ? c0254zza.zzcuI == null || c0254zza.zzcuI.isEmpty() : this.zzcuI.equals(c0254zza.zzcuI);
            }

            public int hashCode() {
                int i = 0;
                int hashCode = ((((this.zzbhj == null ? 0 : this.zzbhj.hashCode()) + (((this.zzbhi == null ? 0 : this.zzbhi.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + this.viewId) * 31;
                if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                    i = this.zzcuI.hashCode();
                }
                return hashCode + i;
            }

            @Override // com.google.android.gms.internal.zzbxt
            /* renamed from: zzC */
            public C0254zza zzb(zzbxl zzbxlVar) throws IOException {
                while (true) {
                    int zzaeo = zzbxlVar.zzaeo();
                    switch (zzaeo) {
                        case 0:
                            break;
                        case 10:
                            this.zzbhi = zzbxlVar.readString();
                            break;
                        case 18:
                            this.zzbhj = zzbxlVar.readString();
                            break;
                        case 24:
                            this.viewId = zzbxlVar.zzaes();
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

            public C0254zza zzGZ() {
                this.zzbhi = "";
                this.zzbhj = "";
                this.viewId = 0;
                this.zzcuI = null;
                this.zzcuR = -1;
                return this;
            }

            @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
            public void zza(zzbxm zzbxmVar) throws IOException {
                if (this.zzbhi != null && !this.zzbhi.equals("")) {
                    zzbxmVar.zzq(1, this.zzbhi);
                }
                if (this.zzbhj != null && !this.zzbhj.equals("")) {
                    zzbxmVar.zzq(2, this.zzbhj);
                }
                if (this.viewId != 0) {
                    zzbxmVar.zzJ(3, this.viewId);
                }
                super.zza(zzbxmVar);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
            public int zzu() {
                int zzu = super.zzu();
                if (this.zzbhi != null && !this.zzbhi.equals("")) {
                    zzu += zzbxm.zzr(1, this.zzbhi);
                }
                if (this.zzbhj != null && !this.zzbhj.equals("")) {
                    zzu += zzbxm.zzr(2, this.zzbhj);
                }
                return this.viewId != 0 ? zzu + zzbxm.zzL(3, this.viewId) : zzu;
            }
        }

        public zza() {
            zzGX();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (!zzbxr.equals(this.zzbhg, zzaVar.zzbhg)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzbhg)) * 31);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzB */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        int zzb = zzbxw.zzb(zzbxlVar, 10);
                        int length = this.zzbhg == null ? 0 : this.zzbhg.length;
                        C0254zza[] c0254zzaArr = new C0254zza[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbhg, 0, c0254zzaArr, 0, length);
                        }
                        while (length < c0254zzaArr.length - 1) {
                            c0254zzaArr[length] = new C0254zza();
                            zzbxlVar.zza(c0254zzaArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        c0254zzaArr[length] = new C0254zza();
                        zzbxlVar.zza(c0254zzaArr[length]);
                        this.zzbhg = c0254zzaArr;
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

        public zza zzGX() {
            this.zzbhg = C0254zza.zzGY();
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzbhg != null && this.zzbhg.length > 0) {
                for (int i = 0; i < this.zzbhg.length; i++) {
                    C0254zza c0254zza = this.zzbhg[i];
                    if (c0254zza != null) {
                        zzbxmVar.zza(1, c0254zza);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbhg != null && this.zzbhg.length > 0) {
                for (int i = 0; i < this.zzbhg.length; i++) {
                    C0254zza c0254zza = this.zzbhg[i];
                    if (c0254zza != null) {
                        zzu += zzbxm.zzc(1, c0254zza);
                    }
                }
            }
            return zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> {
        private static volatile zzb[] zzbhk;
        public String name;
        public zzd zzbhl;

        public zzb() {
            zzHb();
        }

        public static zzb[] zzHa() {
            if (zzbhk == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzbhk == null) {
                        zzbhk = new zzb[0];
                    }
                }
            }
            return zzbhk;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.name == null) {
                if (zzbVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzbVar.name)) {
                return false;
            }
            if (this.zzbhl == null) {
                if (zzbVar.zzbhl != null) {
                    return false;
                }
            } else if (!this.zzbhl.equals(zzbVar.zzbhl)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbVar.zzcuI == null || zzbVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbhl == null ? 0 : this.zzbhl.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzD */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.name = zzbxlVar.readString();
                        break;
                    case 18:
                        if (this.zzbhl == null) {
                            this.zzbhl = new zzd();
                        }
                        zzbxlVar.zza(this.zzbhl);
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

        public zzb zzHb() {
            this.name = "";
            this.zzbhl = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.name != null && !this.name.equals("")) {
                zzbxmVar.zzq(1, this.name);
            }
            if (this.zzbhl != null) {
                zzbxmVar.zza(2, this.zzbhl);
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
            return this.zzbhl != null ? zzu + zzbxm.zzc(2, this.zzbhl) : zzu;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzbxn<zzc> {
        public String type;
        public zzb[] zzbhm;

        public zzc() {
            zzHc();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.type == null) {
                if (zzcVar.type != null) {
                    return false;
                }
            } else if (!this.type.equals(zzcVar.type)) {
                return false;
            }
            if (!zzbxr.equals(this.zzbhm, zzcVar.zzbhm)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzcVar.zzcuI == null || zzcVar.zzcuI.isEmpty() : this.zzcuI.equals(zzcVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.type == null ? 0 : this.type.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + zzbxr.hashCode(this.zzbhm)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzE */
        public zzc zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.type = zzbxlVar.readString();
                        break;
                    case 18:
                        int zzb = zzbxw.zzb(zzbxlVar, 18);
                        int length = this.zzbhm == null ? 0 : this.zzbhm.length;
                        zzb[] zzbVarArr = new zzb[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzbhm, 0, zzbVarArr, 0, length);
                        }
                        while (length < zzbVarArr.length - 1) {
                            zzbVarArr[length] = new zzb();
                            zzbxlVar.zza(zzbVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzbVarArr[length] = new zzb();
                        zzbxlVar.zza(zzbVarArr[length]);
                        this.zzbhm = zzbVarArr;
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

        public zzc zzHc() {
            this.type = "";
            this.zzbhm = zzb.zzHa();
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.type != null && !this.type.equals("")) {
                zzbxmVar.zzq(1, this.type);
            }
            if (this.zzbhm != null && this.zzbhm.length > 0) {
                for (int i = 0; i < this.zzbhm.length; i++) {
                    zzb zzbVar = this.zzbhm[i];
                    if (zzbVar != null) {
                        zzbxmVar.zza(2, zzbVar);
                    }
                }
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.type != null && !this.type.equals("")) {
                zzu += zzbxm.zzr(1, this.type);
            }
            if (this.zzbhm == null || this.zzbhm.length <= 0) {
                return zzu;
            }
            int i = zzu;
            for (int i2 = 0; i2 < this.zzbhm.length; i2++) {
                zzb zzbVar = this.zzbhm[i2];
                if (zzbVar != null) {
                    i += zzbxm.zzc(2, zzbVar);
                }
            }
            return i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd extends zzbxn<zzd> {
        public String zzaGV;
        public boolean zzbhn;
        public long zzbho;
        public double zzbhp;
        public zzc zzbhq;

        public zzd() {
            zzHd();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (this.zzbhn != zzdVar.zzbhn) {
                return false;
            }
            if (this.zzaGV == null) {
                if (zzdVar.zzaGV != null) {
                    return false;
                }
            } else if (!this.zzaGV.equals(zzdVar.zzaGV)) {
                return false;
            }
            if (this.zzbho != zzdVar.zzbho || Double.doubleToLongBits(this.zzbhp) != Double.doubleToLongBits(zzdVar.zzbhp)) {
                return false;
            }
            if (this.zzbhq == null) {
                if (zzdVar.zzbhq != null) {
                    return false;
                }
            } else if (!this.zzbhq.equals(zzdVar.zzbhq)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzdVar.zzcuI == null || zzdVar.zzcuI.isEmpty() : this.zzcuI.equals(zzdVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = (((this.zzaGV == null ? 0 : this.zzaGV.hashCode()) + (((this.zzbhn ? 1231 : 1237) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + ((int) (this.zzbho ^ (this.zzbho >>> 32)));
            long doubleToLongBits = Double.doubleToLongBits(this.zzbhp);
            int hashCode2 = ((this.zzbhq == null ? 0 : this.zzbhq.hashCode()) + (((hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode2 + i;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzF */
        public zzd zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzbhn = zzbxlVar.zzaeu();
                        break;
                    case 18:
                        this.zzaGV = zzbxlVar.readString();
                        break;
                    case 24:
                        this.zzbho = zzbxlVar.zzaer();
                        break;
                    case 33:
                        this.zzbhp = zzbxlVar.readDouble();
                        break;
                    case 42:
                        if (this.zzbhq == null) {
                            this.zzbhq = new zzc();
                        }
                        zzbxlVar.zza(this.zzbhq);
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

        public zzd zzHd() {
            this.zzbhn = false;
            this.zzaGV = "";
            this.zzbho = 0L;
            this.zzbhp = 0.0d;
            this.zzbhq = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzbhn) {
                zzbxmVar.zzg(1, this.zzbhn);
            }
            if (this.zzaGV != null && !this.zzaGV.equals("")) {
                zzbxmVar.zzq(2, this.zzaGV);
            }
            if (this.zzbho != 0) {
                zzbxmVar.zzb(3, this.zzbho);
            }
            if (Double.doubleToLongBits(this.zzbhp) != Double.doubleToLongBits(0.0d)) {
                zzbxmVar.zza(4, this.zzbhp);
            }
            if (this.zzbhq != null) {
                zzbxmVar.zza(5, this.zzbhq);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzbhn) {
                zzu += zzbxm.zzh(1, this.zzbhn);
            }
            if (this.zzaGV != null && !this.zzaGV.equals("")) {
                zzu += zzbxm.zzr(2, this.zzaGV);
            }
            if (this.zzbho != 0) {
                zzu += zzbxm.zzf(3, this.zzbho);
            }
            if (Double.doubleToLongBits(this.zzbhp) != Double.doubleToLongBits(0.0d)) {
                zzu += zzbxm.zzb(4, this.zzbhp);
            }
            return this.zzbhq != null ? zzu + zzbxm.zzc(5, this.zzbhq) : zzu;
        }
    }
}
