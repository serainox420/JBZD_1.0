package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbwu extends zzbxn<zzbwu> {
    public int zzcsS = 0;
    public String packageName = "";

    public zzbwu() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbwu)) {
            return false;
        }
        zzbwu zzbwuVar = (zzbwu) obj;
        if (this.zzcsS != zzbwuVar.zzcsS) {
            return false;
        }
        if (this.packageName == null) {
            if (zzbwuVar.packageName != null) {
                return false;
            }
        } else if (!this.packageName.equals(zzbwuVar.packageName)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwuVar.zzcuI == null || zzbwuVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwuVar.zzcuI);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.packageName == null ? 0 : this.packageName.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31)) * 31;
        if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
            i = this.zzcuI.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.packageName != null && !this.packageName.equals("")) {
            zzbxmVar.zzq(2, this.packageName);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzar */
    public zzbwu zzb(zzbxl zzbxlVar) throws IOException {
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
                            this.zzcsS = zzaes;
                            continue;
                    }
                case 18:
                    this.packageName = zzbxlVar.readString();
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
        return (this.packageName == null || this.packageName.equals("")) ? zzu : zzu + zzbxm.zzr(2, this.packageName);
    }
}
