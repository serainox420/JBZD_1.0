package com.google.android.gms.internal;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbxk extends zzbxn<zzbxk> {
    public int zzcsS = 0;
    public long zzcsT = 0;
    public float zzcux = BitmapDescriptorFactory.HUE_RED;
    public int zzctY = 0;

    public zzbxk() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxk)) {
            return false;
        }
        zzbxk zzbxkVar = (zzbxk) obj;
        if (this.zzcsS != zzbxkVar.zzcsS || this.zzcsT != zzbxkVar.zzcsT || Float.floatToIntBits(this.zzcux) != Float.floatToIntBits(zzbxkVar.zzcux) || this.zzctY != zzbxkVar.zzctY) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbxkVar.zzcuI == null || zzbxkVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbxkVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + ((int) (this.zzcsT ^ (this.zzcsT >>> 32)))) * 31) + Float.floatToIntBits(this.zzcux)) * 31) + this.zzctY) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.zzcsT != 0) {
            zzbxmVar.zzb(2, this.zzcsT);
        }
        if (Float.floatToIntBits(this.zzcux) != Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED)) {
            zzbxmVar.zzc(3, this.zzcux);
        }
        if (this.zzctY != 0) {
            zzbxmVar.zzJ(4, this.zzctY);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaM */
    public zzbxk zzb(zzbxl zzbxlVar) throws IOException {
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
                        case 3:
                            this.zzcsS = zzaes;
                            continue;
                    }
                case 16:
                    this.zzcsT = zzbxlVar.zzaer();
                    break;
                case 29:
                    this.zzcux = zzbxlVar.readFloat();
                    break;
                case 32:
                    this.zzctY = zzbxlVar.zzaes();
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
        if (this.zzcsT != 0) {
            zzu += zzbxm.zzf(2, this.zzcsT);
        }
        if (Float.floatToIntBits(this.zzcux) != Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED)) {
            zzu += zzbxm.zzd(3, this.zzcux);
        }
        return this.zzctY != 0 ? zzu + zzbxm.zzL(4, this.zzctY) : zzu;
    }
}
