package com.google.android.gms.internal;

import com.google.android.gms.games.GamesActivityResultCodes;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbwp extends zzbxn<zzbwp> {
    public static final zzbxo<Object, zzbwp> zzctd = zzbxo.zza(11, zzbwp.class, 855033290);
    private static final zzbwp[] zzcte = new zzbwp[0];
    public String zzctf;
    public zzbws zzctg;
    public int zzcth;
    public int zzcti;
    public int zzctj;
    public zzbxh zzctk;
    public zzbwq zzctl;
    public String[] zzctm;
    public zzbww zzctn;

    public zzbwp() {
        zzaei();
    }

    public static zzbwp zzac(byte[] bArr) throws zzbxs {
        return (zzbwp) zzbxt.zza(new zzbwp(), bArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbwp)) {
            return false;
        }
        zzbwp zzbwpVar = (zzbwp) obj;
        if (this.zzctf == null) {
            if (zzbwpVar.zzctf != null) {
                return false;
            }
        } else if (!this.zzctf.equals(zzbwpVar.zzctf)) {
            return false;
        }
        if (this.zzctg == null) {
            if (zzbwpVar.zzctg != null) {
                return false;
            }
        } else if (!this.zzctg.equals(zzbwpVar.zzctg)) {
            return false;
        }
        if (this.zzcth != zzbwpVar.zzcth || this.zzcti != zzbwpVar.zzcti || this.zzctj != zzbwpVar.zzctj) {
            return false;
        }
        if (this.zzctk == null) {
            if (zzbwpVar.zzctk != null) {
                return false;
            }
        } else if (!this.zzctk.equals(zzbwpVar.zzctk)) {
            return false;
        }
        if (this.zzctl == null) {
            if (zzbwpVar.zzctl != null) {
                return false;
            }
        } else if (!this.zzctl.equals(zzbwpVar.zzctl)) {
            return false;
        }
        if (!zzbxr.equals(this.zzctm, zzbwpVar.zzctm)) {
            return false;
        }
        if (this.zzctn == null) {
            if (zzbwpVar.zzctn != null) {
                return false;
            }
        } else if (!this.zzctn.equals(zzbwpVar.zzctn)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwpVar.zzcuI == null || zzbwpVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwpVar.zzcuI);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.zzctn == null ? 0 : this.zzctn.hashCode()) + (((((this.zzctl == null ? 0 : this.zzctl.hashCode()) + (((this.zzctk == null ? 0 : this.zzctk.hashCode()) + (((((((((this.zzctg == null ? 0 : this.zzctg.hashCode()) + (((this.zzctf == null ? 0 : this.zzctf.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + this.zzcth) * 31) + this.zzcti) * 31) + this.zzctj) * 31)) * 31)) * 31) + zzbxr.hashCode(this.zzctm)) * 31)) * 31;
        if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
            i = this.zzcuI.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.zzctf != null && !this.zzctf.equals("")) {
            zzbxmVar.zzq(1, this.zzctf);
        }
        if (this.zzctg != null) {
            zzbxmVar.zza(2, this.zzctg);
        }
        if (this.zzcth != 0) {
            zzbxmVar.zzJ(4, this.zzcth);
        }
        if (this.zzcti != 0) {
            zzbxmVar.zzJ(5, this.zzcti);
        }
        if (this.zzctj != 0) {
            zzbxmVar.zzJ(6, this.zzctj);
        }
        if (this.zzctk != null) {
            zzbxmVar.zza(7, this.zzctk);
        }
        if (this.zzctl != null) {
            zzbxmVar.zza(8, this.zzctl);
        }
        if (this.zzctm != null && this.zzctm.length > 0) {
            for (int i = 0; i < this.zzctm.length; i++) {
                String str = this.zzctm[i];
                if (str != null) {
                    zzbxmVar.zzq(9, str);
                }
            }
        }
        if (this.zzctn != null) {
            zzbxmVar.zza(10, this.zzctn);
        }
        super.zza(zzbxmVar);
    }

    public zzbwp zzaei() {
        this.zzctf = "";
        this.zzctg = null;
        this.zzcth = 0;
        this.zzcti = 0;
        this.zzctj = 0;
        this.zzctk = null;
        this.zzctl = null;
        this.zzctm = zzbxw.zzcvb;
        this.zzctn = null;
        this.zzcuI = null;
        this.zzcuR = -1;
        return this;
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzam */
    public zzbwp zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 10:
                    this.zzctf = zzbxlVar.readString();
                    break;
                case 18:
                    if (this.zzctg == null) {
                        this.zzctg = new zzbws();
                    }
                    zzbxlVar.zza(this.zzctg);
                    break;
                case 32:
                    int zzaes = zzbxlVar.zzaes();
                    switch (zzaes) {
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
                            this.zzcth = zzaes;
                            continue;
                    }
                case 40:
                    int zzaes2 = zzbxlVar.zzaes();
                    switch (zzaes2) {
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
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 10000:
                        case 10001:
                        case GamesActivityResultCodes.RESULT_SIGN_IN_FAILED /* 10002 */:
                        case GamesActivityResultCodes.RESULT_LICENSE_FAILED /* 10003 */:
                        case GamesActivityResultCodes.RESULT_APP_MISCONFIGURED /* 10004 */:
                        case GamesActivityResultCodes.RESULT_LEFT_ROOM /* 10005 */:
                        case GamesActivityResultCodes.RESULT_NETWORK_FAILURE /* 10006 */:
                        case GamesActivityResultCodes.RESULT_SEND_REQUEST_FAILED /* 10007 */:
                        case GamesActivityResultCodes.RESULT_INVALID_ROOM /* 10008 */:
                        case 10009:
                        case 99999:
                            this.zzcti = zzaes2;
                            continue;
                    }
                case 48:
                    int zzaes3 = zzbxlVar.zzaes();
                    switch (zzaes3) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                            this.zzctj = zzaes3;
                            continue;
                    }
                case 58:
                    if (this.zzctk == null) {
                        this.zzctk = new zzbxh();
                    }
                    zzbxlVar.zza(this.zzctk);
                    break;
                case 66:
                    if (this.zzctl == null) {
                        this.zzctl = new zzbwq();
                    }
                    zzbxlVar.zza(this.zzctl);
                    break;
                case 74:
                    int zzb = zzbxw.zzb(zzbxlVar, 74);
                    int length = this.zzctm == null ? 0 : this.zzctm.length;
                    String[] strArr = new String[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzctm, 0, strArr, 0, length);
                    }
                    while (length < strArr.length - 1) {
                        strArr[length] = zzbxlVar.readString();
                        zzbxlVar.zzaeo();
                        length++;
                    }
                    strArr[length] = zzbxlVar.readString();
                    this.zzctm = strArr;
                    break;
                case 82:
                    if (this.zzctn == null) {
                        this.zzctn = new zzbww();
                    }
                    zzbxlVar.zza(this.zzctn);
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
        if (this.zzctf != null && !this.zzctf.equals("")) {
            zzu += zzbxm.zzr(1, this.zzctf);
        }
        if (this.zzctg != null) {
            zzu += zzbxm.zzc(2, this.zzctg);
        }
        if (this.zzcth != 0) {
            zzu += zzbxm.zzL(4, this.zzcth);
        }
        if (this.zzcti != 0) {
            zzu += zzbxm.zzL(5, this.zzcti);
        }
        if (this.zzctj != 0) {
            zzu += zzbxm.zzL(6, this.zzctj);
        }
        if (this.zzctk != null) {
            zzu += zzbxm.zzc(7, this.zzctk);
        }
        if (this.zzctl != null) {
            zzu += zzbxm.zzc(8, this.zzctl);
        }
        if (this.zzctm != null && this.zzctm.length > 0) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzctm.length; i3++) {
                String str = this.zzctm[i3];
                if (str != null) {
                    i2++;
                    i += zzbxm.zzkb(str);
                }
            }
            zzu = zzu + i + (i2 * 1);
        }
        return this.zzctn != null ? zzu + zzbxm.zzc(10, this.zzctn) : zzu;
    }
}
