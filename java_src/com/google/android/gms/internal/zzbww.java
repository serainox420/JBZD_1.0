package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbww extends zzbxn<zzbww> {
    public String zzcua;
    public String zzcub;
    public String zzcuc;

    public zzbww() {
        zzaem();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbww)) {
            return false;
        }
        zzbww zzbwwVar = (zzbww) obj;
        if (this.zzcua == null) {
            if (zzbwwVar.zzcua != null) {
                return false;
            }
        } else if (!this.zzcua.equals(zzbwwVar.zzcua)) {
            return false;
        }
        if (this.zzcub == null) {
            if (zzbwwVar.zzcub != null) {
                return false;
            }
        } else if (!this.zzcub.equals(zzbwwVar.zzcub)) {
            return false;
        }
        if (this.zzcuc == null) {
            if (zzbwwVar.zzcuc != null) {
                return false;
            }
        } else if (!this.zzcuc.equals(zzbwwVar.zzcuc)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwwVar.zzcuI == null || zzbwwVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwwVar.zzcuI);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.zzcuc == null ? 0 : this.zzcuc.hashCode()) + (((this.zzcub == null ? 0 : this.zzcub.hashCode()) + (((this.zzcua == null ? 0 : this.zzcua.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31;
        if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
            i = this.zzcuI.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcua != null && !this.zzcua.equals("")) {
            zzbxmVar.zzq(1, this.zzcua);
        }
        if (this.zzcub != null && !this.zzcub.equals("")) {
            zzbxmVar.zzq(2, this.zzcub);
        }
        if (this.zzcuc != null && !this.zzcuc.equals("")) {
            zzbxmVar.zzq(3, this.zzcuc);
        }
        super.zza(zzbxmVar);
    }

    public zzbww zzaem() {
        this.zzcua = "";
        this.zzcub = "";
        this.zzcuc = "";
        this.zzcuI = null;
        this.zzcuR = -1;
        return this;
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzay */
    public zzbww zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 10:
                    this.zzcua = zzbxlVar.readString();
                    break;
                case 18:
                    this.zzcub = zzbxlVar.readString();
                    break;
                case 26:
                    this.zzcuc = zzbxlVar.readString();
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
        if (this.zzcua != null && !this.zzcua.equals("")) {
            zzu += zzbxm.zzr(1, this.zzcua);
        }
        if (this.zzcub != null && !this.zzcub.equals("")) {
            zzu += zzbxm.zzr(2, this.zzcub);
        }
        return (this.zzcuc == null || this.zzcuc.equals("")) ? zzu : zzu + zzbxm.zzr(3, this.zzcuc);
    }
}
