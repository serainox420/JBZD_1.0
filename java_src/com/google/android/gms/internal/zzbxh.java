package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbxh extends zzbxn<zzbxh> {
    public int type;
    public long zzaKx;
    public long zzaKy;

    public zzbxh() {
        zzaen();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxh)) {
            return false;
        }
        zzbxh zzbxhVar = (zzbxh) obj;
        if (this.type != zzbxhVar.type || this.zzaKx != zzbxhVar.zzaKx || this.zzaKy != zzbxhVar.zzaKy) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbxhVar.zzcuI == null || zzbxhVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbxhVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + ((int) (this.zzaKx ^ (this.zzaKx >>> 32)))) * 31) + ((int) (this.zzaKy ^ (this.zzaKy >>> 32)))) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.type != 3) {
            zzbxmVar.zzJ(1, this.type);
        }
        if (this.zzaKx != 0) {
            zzbxmVar.zzb(2, this.zzaKx);
        }
        if (this.zzaKy != 0) {
            zzbxmVar.zzb(3, this.zzaKy);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaJ */
    public zzbxh zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 8:
                    int zzaes = zzbxlVar.zzaes();
                    switch (zzaes) {
                        case 1:
                        case 2:
                        case 3:
                            this.type = zzaes;
                            continue;
                    }
                case 16:
                    this.zzaKx = zzbxlVar.zzaer();
                    break;
                case 24:
                    this.zzaKy = zzbxlVar.zzaer();
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

    public zzbxh zzaen() {
        this.type = 3;
        this.zzaKx = 0L;
        this.zzaKy = 0L;
        this.zzcuI = null;
        this.zzcuR = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public int zzu() {
        int zzu = super.zzu();
        if (this.type != 3) {
            zzu += zzbxm.zzL(1, this.type);
        }
        if (this.zzaKx != 0) {
            zzu += zzbxm.zzf(2, this.zzaKx);
        }
        return this.zzaKy != 0 ? zzu + zzbxm.zzf(3, this.zzaKy) : zzu;
    }
}
