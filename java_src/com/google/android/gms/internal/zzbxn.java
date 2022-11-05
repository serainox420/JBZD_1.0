package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbxn;
import java.io.IOException;
/* loaded from: classes2.dex */
public abstract class zzbxn<M extends zzbxn<M>> extends zzbxt {
    protected zzbxp zzcuI;

    private void zza(int i, zzbxv zzbxvVar) {
        zzbxq zzbxqVar = null;
        if (this.zzcuI == null) {
            this.zzcuI = new zzbxp();
        } else {
            zzbxqVar = this.zzcuI.zzro(i);
        }
        if (zzbxqVar == null) {
            zzbxqVar = new zzbxq();
            this.zzcuI.zza(i, zzbxqVar);
        }
        zzbxqVar.zza(zzbxvVar);
    }

    public final <T> T zza(zzbxo<M, T> zzbxoVar) {
        zzbxq zzro;
        if (this.zzcuI == null || (zzro = this.zzcuI.zzro(zzbxw.zzrs(zzbxoVar.tag))) == null) {
            return null;
        }
        return (T) zzro.zzb(zzbxoVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcuI == null) {
            return;
        }
        for (int i = 0; i < this.zzcuI.size(); i++) {
            this.zzcuI.zzrp(i).zza(zzbxmVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zza(zzbxl zzbxlVar, int i) throws IOException {
        int position = zzbxlVar.getPosition();
        if (!zzbxlVar.zzqY(i)) {
            return false;
        }
        zza(zzbxw.zzrs(i), new zzbxv(i, zzbxlVar.zzI(position, zzbxlVar.getPosition() - position)));
        return true;
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaeH */
    public M clone() throws CloneNotSupportedException {
        M m = (M) super.clone();
        zzbxr.zza(this, m);
        return m;
    }

    @Override // com.google.android.gms.internal.zzbxt
    public /* synthetic */ zzbxt zzaeI() throws CloneNotSupportedException {
        return (zzbxn) clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbxt
    public int zzu() {
        if (this.zzcuI != null) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzcuI.size(); i2++) {
                i += this.zzcuI.zzrp(i2).zzu();
            }
            return i;
        }
        return 0;
    }
}
