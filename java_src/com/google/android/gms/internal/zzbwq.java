package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbwq extends zzbxn<zzbwq> {
    public zzbwq() {
        zzaej();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbwq)) {
            return false;
        }
        zzbwq zzbwqVar = (zzbwq) obj;
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwqVar.zzcuI == null || zzbwqVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwqVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((getClass().getName().hashCode() + 527) * 31);
    }

    public zzbwq zzaej() {
        this.zzcuI = null;
        this.zzcuR = -1;
        return this;
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzan */
    public zzbwq zzb(zzbxl zzbxlVar) throws IOException {
        int zzaeo;
        do {
            zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    return this;
            }
        } while (super.zza(zzbxlVar, zzaeo));
        return this;
    }
}
