package com.google.android.gms.internal;

import com.pubmatic.sdk.common.CommonConstants;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbwm extends zzbxn<zzbwm> {
    public int zzcsS = 0;
    public long zzcsT = 0;
    public int[] zzcsU = zzbxw.zzcuW;

    public zzbwm() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbwm)) {
            return false;
        }
        zzbwm zzbwmVar = (zzbwm) obj;
        if (this.zzcsS != zzbwmVar.zzcsS || this.zzcsT != zzbwmVar.zzcsT || !zzbxr.equals(this.zzcsU, zzbwmVar.zzcsU)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwmVar.zzcuI == null || zzbwmVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwmVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + ((int) (this.zzcsT ^ (this.zzcsT >>> 32)))) * 31) + zzbxr.hashCode(this.zzcsU)) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzcsS != 0) {
            zzbxmVar.zzJ(1, this.zzcsS);
        }
        if (this.zzcsT != 0) {
            zzbxmVar.zzb(2, this.zzcsT);
        }
        if (this.zzcsU != null && this.zzcsU.length > 0) {
            for (int i = 0; i < this.zzcsU.length; i++) {
                zzbxmVar.zzJ(3, this.zzcsU[i]);
            }
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzai */
    public zzbwm zzb(zzbxl zzbxlVar) throws IOException {
        int i;
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
                case 24:
                    int zzb = zzbxw.zzb(zzbxlVar, 24);
                    int[] iArr = new int[zzb];
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < zzb) {
                        if (i2 != 0) {
                            zzbxlVar.zzaeo();
                        }
                        int zzaes2 = zzbxlVar.zzaes();
                        switch (zzaes2) {
                            case CommonConstants.PubError.REQUEST_ERROR /* -1000 */:
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                                i = i3 + 1;
                                iArr[i3] = zzaes2;
                                break;
                            default:
                                i = i3;
                                break;
                        }
                        i2++;
                        i3 = i;
                    }
                    if (i3 != 0) {
                        int length = this.zzcsU == null ? 0 : this.zzcsU.length;
                        if (length != 0 || i3 != iArr.length) {
                            int[] iArr2 = new int[length + i3];
                            if (length != 0) {
                                System.arraycopy(this.zzcsU, 0, iArr2, 0, length);
                            }
                            System.arraycopy(iArr, 0, iArr2, length, i3);
                            this.zzcsU = iArr2;
                            break;
                        } else {
                            this.zzcsU = iArr;
                            break;
                        }
                    } else {
                        break;
                    }
                case 26:
                    int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                    int position = zzbxlVar.getPosition();
                    int i4 = 0;
                    while (zzbxlVar.zzaeC() > 0) {
                        switch (zzbxlVar.zzaes()) {
                            case CommonConstants.PubError.REQUEST_ERROR /* -1000 */:
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                                i4++;
                                break;
                        }
                    }
                    if (i4 != 0) {
                        zzbxlVar.zzrc(position);
                        int length2 = this.zzcsU == null ? 0 : this.zzcsU.length;
                        int[] iArr3 = new int[i4 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzcsU, 0, iArr3, 0, length2);
                        }
                        while (zzbxlVar.zzaeC() > 0) {
                            int zzaes3 = zzbxlVar.zzaes();
                            switch (zzaes3) {
                                case CommonConstants.PubError.REQUEST_ERROR /* -1000 */:
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                case 14:
                                case 15:
                                    iArr3[length2] = zzaes3;
                                    length2++;
                                    break;
                            }
                        }
                        this.zzcsU = iArr3;
                    }
                    zzbxlVar.zzrb(zzra);
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
        if (this.zzcsU == null || this.zzcsU.length <= 0) {
            return zzu;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.zzcsU.length; i2++) {
            i += zzbxm.zzrg(this.zzcsU[i2]);
        }
        return zzu + i + (this.zzcsU.length * 1);
    }
}
