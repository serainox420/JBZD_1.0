package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbws extends zzbxn<zzbws> {
    public String moduleId;
    public int version;
    public String zzbxN;
    public long zzctH;
    public long zzctI;

    public zzbws() {
        zzael();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbws)) {
            return false;
        }
        zzbws zzbwsVar = (zzbws) obj;
        if (this.zzctH != zzbwsVar.zzctH || this.zzctI != zzbwsVar.zzctI || this.version != zzbwsVar.version) {
            return false;
        }
        if (this.zzbxN == null) {
            if (zzbwsVar.zzbxN != null) {
                return false;
            }
        } else if (!this.zzbxN.equals(zzbwsVar.zzbxN)) {
            return false;
        }
        if (this.moduleId == null) {
            if (zzbwsVar.moduleId != null) {
                return false;
            }
        } else if (!this.moduleId.equals(zzbwsVar.moduleId)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwsVar.zzcuI == null || zzbwsVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwsVar.zzcuI);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.moduleId == null ? 0 : this.moduleId.hashCode()) + (((this.zzbxN == null ? 0 : this.zzbxN.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzctH ^ (this.zzctH >>> 32)))) * 31) + ((int) (this.zzctI ^ (this.zzctI >>> 32)))) * 31) + this.version) * 31)) * 31)) * 31;
        if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
            i = this.zzcuI.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzctH != 0) {
            zzbxmVar.zzb(1, this.zzctH);
        }
        if (this.zzctI != 0) {
            zzbxmVar.zzb(2, this.zzctI);
        }
        if (this.version != 0) {
            zzbxmVar.zzJ(3, this.version);
        }
        if (this.zzbxN != null && !this.zzbxN.equals("")) {
            zzbxmVar.zzq(4, this.zzbxN);
        }
        if (this.moduleId != null && !this.moduleId.equals("")) {
            zzbxmVar.zzq(5, this.moduleId);
        }
        super.zza(zzbxmVar);
    }

    public zzbws zzael() {
        this.zzctH = 0L;
        this.zzctI = 0L;
        this.version = 0;
        this.zzbxN = "";
        this.moduleId = "";
        this.zzcuI = null;
        this.zzcuR = -1;
        return this;
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzap */
    public zzbws zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 8:
                    this.zzctH = zzbxlVar.zzaer();
                    break;
                case 16:
                    this.zzctI = zzbxlVar.zzaer();
                    break;
                case 24:
                    this.version = zzbxlVar.zzaes();
                    break;
                case 34:
                    this.zzbxN = zzbxlVar.readString();
                    break;
                case 42:
                    this.moduleId = zzbxlVar.readString();
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
        if (this.zzctH != 0) {
            zzu += zzbxm.zzf(1, this.zzctH);
        }
        if (this.zzctI != 0) {
            zzu += zzbxm.zzf(2, this.zzctI);
        }
        if (this.version != 0) {
            zzu += zzbxm.zzL(3, this.version);
        }
        if (this.zzbxN != null && !this.zzbxN.equals("")) {
            zzu += zzbxm.zzr(4, this.zzbxN);
        }
        return (this.moduleId == null || this.moduleId.equals("")) ? zzu : zzu + zzbxm.zzr(5, this.moduleId);
    }
}
