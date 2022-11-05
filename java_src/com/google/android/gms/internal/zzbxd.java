package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbxd extends zzbxn<zzbxd> {
    public int zzcsS = 0;

    public zzbxd() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxd)) {
            return false;
        }
        zzbxd zzbxdVar = (zzbxd) obj;
        if (this.zzcsS != zzbxdVar.zzcsS) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbxdVar.zzcuI == null || zzbxdVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbxdVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaF */
    public zzbxd zzb(zzbxl zzbxlVar) throws IOException {
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
        return this.zzcsS != 0 ? zzu + zzbxm.zzL(1, this.zzcsS) : zzu;
    }
}
