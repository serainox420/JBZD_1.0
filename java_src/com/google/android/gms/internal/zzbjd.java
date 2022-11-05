package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaj;
import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzbjd {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        public long zzbNe;
        public zzaj.zzj zzbNf;
        public zzaj.zzf zzlr;

        public zza() {
            zzTv();
        }

        public static zza zzQ(byte[] bArr) throws zzbxs {
            return (zza) zzbxt.zza(new zza(), bArr);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.zzbNe != zzaVar.zzbNe) {
                return false;
            }
            if (this.zzlr == null) {
                if (zzaVar.zzlr != null) {
                    return false;
                }
            } else if (!this.zzlr.equals(zzaVar.zzlr)) {
                return false;
            }
            if (this.zzbNf == null) {
                if (zzaVar.zzbNf != null) {
                    return false;
                }
            } else if (!this.zzbNf.equals(zzaVar.zzbNf)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzbNf == null ? 0 : this.zzbNf.hashCode()) + (((this.zzlr == null ? 0 : this.zzlr.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzbNe ^ (this.zzbNe >>> 32)))) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        public zza zzTv() {
            this.zzbNe = 0L;
            this.zzlr = null;
            this.zzbNf = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzW */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzbNe = zzbxlVar.zzaer();
                        break;
                    case 18:
                        if (this.zzlr == null) {
                            this.zzlr = new zzaj.zzf();
                        }
                        zzbxlVar.zza(this.zzlr);
                        break;
                    case 26:
                        if (this.zzbNf == null) {
                            this.zzbNf = new zzaj.zzj();
                        }
                        zzbxlVar.zza(this.zzbNf);
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
            zzbxmVar.zzb(1, this.zzbNe);
            if (this.zzlr != null) {
                zzbxmVar.zza(2, this.zzlr);
            }
            if (this.zzbNf != null) {
                zzbxmVar.zza(3, this.zzbNf);
            }
            super.zza(zzbxmVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu() + zzbxm.zzf(1, this.zzbNe);
            if (this.zzlr != null) {
                zzu += zzbxm.zzc(2, this.zzlr);
            }
            return this.zzbNf != null ? zzu + zzbxm.zzc(3, this.zzbNf) : zzu;
        }
    }
}
