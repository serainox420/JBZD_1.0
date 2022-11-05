package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbxf extends zzbxn<zzbxf> {
    public String zzaJT = "";

    public zzbxf() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxf)) {
            return false;
        }
        zzbxf zzbxfVar = (zzbxf) obj;
        if (this.zzaJT == null) {
            if (zzbxfVar.zzaJT != null) {
                return false;
            }
        } else if (!this.zzaJT.equals(zzbxfVar.zzaJT)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbxfVar.zzcuI == null || zzbxfVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbxfVar.zzcuI);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.zzaJT == null ? 0 : this.zzaJT.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31;
        if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
            i = this.zzcuI.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzaJT != null && !this.zzaJT.equals("")) {
            zzbxmVar.zzq(1, this.zzaJT);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaH */
    public zzbxf zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 10:
                    this.zzaJT = zzbxlVar.readString();
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
        return (this.zzaJT == null || this.zzaJT.equals("")) ? zzu : zzu + zzbxm.zzr(1, this.zzaJT);
    }
}
