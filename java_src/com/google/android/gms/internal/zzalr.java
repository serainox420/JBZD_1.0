package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzalr extends zzbxn<zzalr> {
    public int versionCode;
    public long zzaOC;
    public long zzaOD;
    public long zzaOE;

    public zzalr() {
        zzBo();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzalr)) {
            return false;
        }
        zzalr zzalrVar = (zzalr) obj;
        if (this.versionCode != zzalrVar.versionCode || this.zzaOC != zzalrVar.zzaOC || this.zzaOD != zzalrVar.zzaOD || this.zzaOE != zzalrVar.zzaOE) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzalrVar.zzcuI == null || zzalrVar.zzcuI.isEmpty() : this.zzcuI.equals(zzalrVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((((getClass().getName().hashCode() + 527) * 31) + this.versionCode) * 31) + ((int) (this.zzaOC ^ (this.zzaOC >>> 32)))) * 31) + ((int) (this.zzaOD ^ (this.zzaOD >>> 32)))) * 31) + ((int) (this.zzaOE ^ (this.zzaOE >>> 32)))) * 31);
    }

    public zzalr zzBo() {
        this.versionCode = 1;
        this.zzaOC = -1L;
        this.zzaOD = -1L;
        this.zzaOE = -1L;
        this.zzcuI = null;
        this.zzcuR = -1;
        return this;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        zzbxmVar.zzJ(1, this.versionCode);
        zzbxmVar.zzd(2, this.zzaOC);
        zzbxmVar.zzd(3, this.zzaOD);
        zzbxmVar.zzd(4, this.zzaOE);
        super.zza(zzbxmVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public int zzu() {
        return super.zzu() + zzbxm.zzL(1, this.versionCode) + zzbxm.zzh(2, this.zzaOC) + zzbxm.zzh(3, this.zzaOD) + zzbxm.zzh(4, this.zzaOE);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzy */
    public zzalr zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 8:
                    this.versionCode = zzbxlVar.zzaes();
                    break;
                case 16:
                    this.zzaOC = zzbxlVar.zzaew();
                    break;
                case 24:
                    this.zzaOD = zzbxlVar.zzaew();
                    break;
                case 32:
                    this.zzaOE = zzbxlVar.zzaew();
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
}
