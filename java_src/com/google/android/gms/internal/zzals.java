package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzals extends zzbxn<zzals> {
    public int versionCode;
    public long zzaOD;
    public String zzaOF;
    public long zzaOG;
    public int zzaOH;

    public zzals() {
        zzBp();
    }

    public static zzals zzu(byte[] bArr) throws zzbxs {
        return (zzals) zzbxt.zza(new zzals(), bArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzals)) {
            return false;
        }
        zzals zzalsVar = (zzals) obj;
        if (this.versionCode != zzalsVar.versionCode) {
            return false;
        }
        if (this.zzaOF == null) {
            if (zzalsVar.zzaOF != null) {
                return false;
            }
        } else if (!this.zzaOF.equals(zzalsVar.zzaOF)) {
            return false;
        }
        if (this.zzaOG != zzalsVar.zzaOG || this.zzaOD != zzalsVar.zzaOD || this.zzaOH != zzalsVar.zzaOH) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzalsVar.zzcuI == null || zzalsVar.zzcuI.isEmpty() : this.zzcuI.equals(zzalsVar.zzcuI);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((((((((this.zzaOF == null ? 0 : this.zzaOF.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.versionCode) * 31)) * 31) + ((int) (this.zzaOG ^ (this.zzaOG >>> 32)))) * 31) + ((int) (this.zzaOD ^ (this.zzaOD >>> 32)))) * 31) + this.zzaOH) * 31;
        if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
            i = this.zzcuI.hashCode();
        }
        return hashCode + i;
    }

    public zzals zzBp() {
        this.versionCode = 1;
        this.zzaOF = "";
        this.zzaOG = -1L;
        this.zzaOD = -1L;
        this.zzaOH = -1;
        this.zzcuI = null;
        this.zzcuR = -1;
        return this;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        zzbxmVar.zzJ(1, this.versionCode);
        zzbxmVar.zzq(2, this.zzaOF);
        zzbxmVar.zzd(3, this.zzaOG);
        zzbxmVar.zzd(4, this.zzaOD);
        if (this.zzaOH != -1) {
            zzbxmVar.zzJ(5, this.zzaOH);
        }
        super.zza(zzbxmVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public int zzu() {
        int zzu = super.zzu() + zzbxm.zzL(1, this.versionCode) + zzbxm.zzr(2, this.zzaOF) + zzbxm.zzh(3, this.zzaOG) + zzbxm.zzh(4, this.zzaOD);
        return this.zzaOH != -1 ? zzu + zzbxm.zzL(5, this.zzaOH) : zzu;
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzz */
    public zzals zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 8:
                    this.versionCode = zzbxlVar.zzaes();
                    break;
                case 18:
                    this.zzaOF = zzbxlVar.readString();
                    break;
                case 24:
                    this.zzaOG = zzbxlVar.zzaew();
                    break;
                case 32:
                    this.zzaOD = zzbxlVar.zzaew();
                    break;
                case 40:
                    this.zzaOH = zzbxlVar.zzaes();
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
