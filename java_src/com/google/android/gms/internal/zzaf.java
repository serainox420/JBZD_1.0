package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public interface zzaf {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> {
        public String zzaS = null;
        public Long zzaT = null;
        public String stackTrace = null;
        public String zzaU = null;
        public String zzaV = null;
        public Long zzaW = null;
        public Long zzaX = null;
        public String zzaY = null;
        public Long zzaZ = null;
        public String zzba = null;

        public zza() {
            this.zzcuR = -1;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzaS != null) {
                zzbxmVar.zzq(1, this.zzaS);
            }
            if (this.zzaT != null) {
                zzbxmVar.zzb(2, this.zzaT.longValue());
            }
            if (this.stackTrace != null) {
                zzbxmVar.zzq(3, this.stackTrace);
            }
            if (this.zzaU != null) {
                zzbxmVar.zzq(4, this.zzaU);
            }
            if (this.zzaV != null) {
                zzbxmVar.zzq(5, this.zzaV);
            }
            if (this.zzaW != null) {
                zzbxmVar.zzb(6, this.zzaW.longValue());
            }
            if (this.zzaX != null) {
                zzbxmVar.zzb(7, this.zzaX.longValue());
            }
            if (this.zzaY != null) {
                zzbxmVar.zzq(8, this.zzaY);
            }
            if (this.zzaZ != null) {
                zzbxmVar.zzb(9, this.zzaZ.longValue());
            }
            if (this.zzba != null) {
                zzbxmVar.zzq(10, this.zzba);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zze */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzaS = zzbxlVar.readString();
                        break;
                    case 16:
                        this.zzaT = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 26:
                        this.stackTrace = zzbxlVar.readString();
                        break;
                    case 34:
                        this.zzaU = zzbxlVar.readString();
                        break;
                    case 42:
                        this.zzaV = zzbxlVar.readString();
                        break;
                    case 48:
                        this.zzaW = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 56:
                        this.zzaX = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 66:
                        this.zzaY = zzbxlVar.readString();
                        break;
                    case 72:
                        this.zzaZ = Long.valueOf(zzbxlVar.zzaer());
                        break;
                    case 82:
                        this.zzba = zzbxlVar.readString();
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
            if (this.zzaS != null) {
                zzu += zzbxm.zzr(1, this.zzaS);
            }
            if (this.zzaT != null) {
                zzu += zzbxm.zzf(2, this.zzaT.longValue());
            }
            if (this.stackTrace != null) {
                zzu += zzbxm.zzr(3, this.stackTrace);
            }
            if (this.zzaU != null) {
                zzu += zzbxm.zzr(4, this.zzaU);
            }
            if (this.zzaV != null) {
                zzu += zzbxm.zzr(5, this.zzaV);
            }
            if (this.zzaW != null) {
                zzu += zzbxm.zzf(6, this.zzaW.longValue());
            }
            if (this.zzaX != null) {
                zzu += zzbxm.zzf(7, this.zzaX.longValue());
            }
            if (this.zzaY != null) {
                zzu += zzbxm.zzr(8, this.zzaY);
            }
            if (this.zzaZ != null) {
                zzu += zzbxm.zzf(9, this.zzaZ.longValue());
            }
            return this.zzba != null ? zzu + zzbxm.zzr(10, this.zzba) : zzu;
        }
    }
}
