package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class zzbwo extends zzbxn<zzbwo> {
    public int zzcsS = 0;
    public long zzcsT = 0;
    public zza[] zzctb = zza.zzaeh();

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        private static volatile zza[] zzctc;
        public String zzaGP = "";
        public String type = "";
        public byte[] content = zzbxw.zzcvd;

        public zza() {
            this.zzcuR = -1;
        }

        public static zza zzab(byte[] bArr) throws zzbxs {
            return (zza) zzbxt.zza(new zza(), bArr);
        }

        public static zza[] zzaeh() {
            if (zzctc == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzctc == null) {
                        zzctc = new zza[0];
                    }
                }
            }
            return zzctc;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.zzaGP == null) {
                if (zzaVar.zzaGP != null) {
                    return false;
                }
            } else if (!this.zzaGP.equals(zzaVar.zzaGP)) {
                return false;
            }
            if (this.type == null) {
                if (zzaVar.type != null) {
                    return false;
                }
            } else if (!this.type.equals(zzaVar.type)) {
                return false;
            }
            if (!Arrays.equals(this.content, zzaVar.content)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.type == null ? 0 : this.type.hashCode()) + (((this.zzaGP == null ? 0 : this.zzaGP.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + Arrays.hashCode(this.content)) * 31;
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
            if (this.type != null && !this.type.equals("")) {
                zzbxmVar.zzq(2, this.type);
            }
            if (!Arrays.equals(this.content, zzbxw.zzcvd)) {
                zzbxmVar.zzb(3, this.content);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzal */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzaGP = zzbxlVar.readString();
                        break;
                    case 18:
                        this.type = zzbxlVar.readString();
                        break;
                    case 26:
                        this.content = zzbxlVar.readBytes();
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
            if (this.type != null && !this.type.equals("")) {
                zzu += zzbxm.zzr(2, this.type);
            }
            return !Arrays.equals(this.content, zzbxw.zzcvd) ? zzu + zzbxm.zzc(3, this.content) : zzu;
        }
    }

    public zzbwo() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbwo)) {
            return false;
        }
        zzbwo zzbwoVar = (zzbwo) obj;
        if (this.zzcsS != zzbwoVar.zzcsS || this.zzcsT != zzbwoVar.zzcsT || !zzbxr.equals(this.zzctb, zzbwoVar.zzctb)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwoVar.zzcuI == null || zzbwoVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwoVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + ((int) (this.zzcsT ^ (this.zzcsT >>> 32)))) * 31) + zzbxr.hashCode(this.zzctb)) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.zzcsT != 0) {
            zzbxmVar.zzb(3, this.zzcsT);
        }
        if (this.zzctb != null && this.zzctb.length > 0) {
            for (int i = 0; i < this.zzctb.length; i++) {
                zza zzaVar = this.zzctb[i];
                if (zzaVar != null) {
                    zzbxmVar.zza(4, zzaVar);
                }
            }
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzak */
    public zzbwo zzb(zzbxl zzbxlVar) throws IOException {
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
                            this.zzcsS = zzaes;
                            continue;
                    }
                case 24:
                    this.zzcsT = zzbxlVar.zzaer();
                    break;
                case 34:
                    int zzb = zzbxw.zzb(zzbxlVar, 34);
                    int length = this.zzctb == null ? 0 : this.zzctb.length;
                    zza[] zzaVarArr = new zza[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzctb, 0, zzaVarArr, 0, length);
                    }
                    while (length < zzaVarArr.length - 1) {
                        zzaVarArr[length] = new zza();
                        zzbxlVar.zza(zzaVarArr[length]);
                        zzbxlVar.zzaeo();
                        length++;
                    }
                    zzaVarArr[length] = new zza();
                    zzbxlVar.zza(zzaVarArr[length]);
                    this.zzctb = zzaVarArr;
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
        if (this.zzcsS != 0) {
            zzu += zzbxm.zzL(1, this.zzcsS);
        }
        if (this.zzcsT != 0) {
            zzu += zzbxm.zzf(3, this.zzcsT);
        }
        if (this.zzctb == null || this.zzctb.length <= 0) {
            return zzu;
        }
        int i = zzu;
        for (int i2 = 0; i2 < this.zzctb.length; i2++) {
            zza zzaVar = this.zzctb[i2];
            if (zzaVar != null) {
                i += zzbxm.zzc(4, zzaVar);
            }
        }
        return i;
    }
}
