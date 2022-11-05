package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzbxx {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        public int score;
        public boolean zzcve;
        public String zzcvf;

        public zza() {
            zzaeU();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.zzcve != zzaVar.zzcve || this.score != zzaVar.score) {
                return false;
            }
            if (this.zzcvf == null) {
                if (zzaVar.zzcvf != null) {
                    return false;
                }
            } else if (!this.zzcvf.equals(zzaVar.zzcvf)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzcvf == null ? 0 : this.zzcvf.hashCode()) + (((((this.zzcve ? 1231 : 1237) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + this.score) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcve) {
                zzbxmVar.zzg(1, this.zzcve);
            }
            if (this.score != 0) {
                zzbxmVar.zzJ(2, this.score);
            }
            if (this.zzcvf != null && !this.zzcvf.equals("")) {
                zzbxmVar.zzq(3, this.zzcvf);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaO */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzcve = zzbxlVar.zzaeu();
                        break;
                    case 16:
                        this.score = zzbxlVar.zzaes();
                        break;
                    case 26:
                        this.zzcvf = zzbxlVar.readString();
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

        public zza zzaeU() {
            this.zzcve = false;
            this.score = 0;
            this.zzcvf = "";
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzcve) {
                zzu += zzbxm.zzh(1, this.zzcve);
            }
            if (this.score != 0) {
                zzu += zzbxm.zzL(2, this.score);
            }
            return (this.zzcvf == null || this.zzcvf.equals("")) ? zzu : zzu + zzbxm.zzr(3, this.zzcvf);
        }
    }
}
