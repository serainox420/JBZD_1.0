package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbwr extends zzbxn<zzbwr> {
    private static volatile zzbwr[] zzcto;
    public zzbxf zzctA;
    public zzbxk zzctB;
    public zzbxj zzctC;
    public zzbwu zzctD;
    public zzbwz zzctE;
    public zzbxd zzctF;
    public zzbxg zzctG;
    public zzbxi zzctq;
    public zzbwx zzctr;
    public zzbxb zzcts;
    public zzbwm zzctt;
    public zzbxe zzctu;
    public zzbxc zzctv;
    public zzbxa zzctw;
    public zzbwn zzctx;
    public zzbwo zzcty;
    public zzbwy zzctz;
    public int type = 0;
    public zzbwr[] zzctp = zzaek();

    public zzbwr() {
        this.zzcuR = -1;
    }

    public static zzbwr zzad(byte[] bArr) throws zzbxs {
        return (zzbwr) zzbxt.zza(new zzbwr(), bArr);
    }

    public static zzbwr[] zzaek() {
        if (zzcto == null) {
            synchronized (zzbxr.zzcuQ) {
                if (zzcto == null) {
                    zzcto = new zzbwr[0];
                }
            }
        }
        return zzcto;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbwr)) {
            return false;
        }
        zzbwr zzbwrVar = (zzbwr) obj;
        if (this.type != zzbwrVar.type || !zzbxr.equals(this.zzctp, zzbwrVar.zzctp)) {
            return false;
        }
        if (this.zzctq == null) {
            if (zzbwrVar.zzctq != null) {
                return false;
            }
        } else if (!this.zzctq.equals(zzbwrVar.zzctq)) {
            return false;
        }
        if (this.zzctr == null) {
            if (zzbwrVar.zzctr != null) {
                return false;
            }
        } else if (!this.zzctr.equals(zzbwrVar.zzctr)) {
            return false;
        }
        if (this.zzcts == null) {
            if (zzbwrVar.zzcts != null) {
                return false;
            }
        } else if (!this.zzcts.equals(zzbwrVar.zzcts)) {
            return false;
        }
        if (this.zzctt == null) {
            if (zzbwrVar.zzctt != null) {
                return false;
            }
        } else if (!this.zzctt.equals(zzbwrVar.zzctt)) {
            return false;
        }
        if (this.zzctu == null) {
            if (zzbwrVar.zzctu != null) {
                return false;
            }
        } else if (!this.zzctu.equals(zzbwrVar.zzctu)) {
            return false;
        }
        if (this.zzctv == null) {
            if (zzbwrVar.zzctv != null) {
                return false;
            }
        } else if (!this.zzctv.equals(zzbwrVar.zzctv)) {
            return false;
        }
        if (this.zzctw == null) {
            if (zzbwrVar.zzctw != null) {
                return false;
            }
        } else if (!this.zzctw.equals(zzbwrVar.zzctw)) {
            return false;
        }
        if (this.zzctx == null) {
            if (zzbwrVar.zzctx != null) {
                return false;
            }
        } else if (!this.zzctx.equals(zzbwrVar.zzctx)) {
            return false;
        }
        if (this.zzcty == null) {
            if (zzbwrVar.zzcty != null) {
                return false;
            }
        } else if (!this.zzcty.equals(zzbwrVar.zzcty)) {
            return false;
        }
        if (this.zzctz == null) {
            if (zzbwrVar.zzctz != null) {
                return false;
            }
        } else if (!this.zzctz.equals(zzbwrVar.zzctz)) {
            return false;
        }
        if (this.zzctA == null) {
            if (zzbwrVar.zzctA != null) {
                return false;
            }
        } else if (!this.zzctA.equals(zzbwrVar.zzctA)) {
            return false;
        }
        if (this.zzctB == null) {
            if (zzbwrVar.zzctB != null) {
                return false;
            }
        } else if (!this.zzctB.equals(zzbwrVar.zzctB)) {
            return false;
        }
        if (this.zzctC == null) {
            if (zzbwrVar.zzctC != null) {
                return false;
            }
        } else if (!this.zzctC.equals(zzbwrVar.zzctC)) {
            return false;
        }
        if (this.zzctD == null) {
            if (zzbwrVar.zzctD != null) {
                return false;
            }
        } else if (!this.zzctD.equals(zzbwrVar.zzctD)) {
            return false;
        }
        if (this.zzctE == null) {
            if (zzbwrVar.zzctE != null) {
                return false;
            }
        } else if (!this.zzctE.equals(zzbwrVar.zzctE)) {
            return false;
        }
        if (this.zzctF == null) {
            if (zzbwrVar.zzctF != null) {
                return false;
            }
        } else if (!this.zzctF.equals(zzbwrVar.zzctF)) {
            return false;
        }
        if (this.zzctG == null) {
            if (zzbwrVar.zzctG != null) {
                return false;
            }
        } else if (!this.zzctG.equals(zzbwrVar.zzctG)) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwrVar.zzcuI == null || zzbwrVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwrVar.zzcuI);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.zzctG == null ? 0 : this.zzctG.hashCode()) + (((this.zzctF == null ? 0 : this.zzctF.hashCode()) + (((this.zzctE == null ? 0 : this.zzctE.hashCode()) + (((this.zzctD == null ? 0 : this.zzctD.hashCode()) + (((this.zzctC == null ? 0 : this.zzctC.hashCode()) + (((this.zzctB == null ? 0 : this.zzctB.hashCode()) + (((this.zzctA == null ? 0 : this.zzctA.hashCode()) + (((this.zzctz == null ? 0 : this.zzctz.hashCode()) + (((this.zzcty == null ? 0 : this.zzcty.hashCode()) + (((this.zzctx == null ? 0 : this.zzctx.hashCode()) + (((this.zzctw == null ? 0 : this.zzctw.hashCode()) + (((this.zzctv == null ? 0 : this.zzctv.hashCode()) + (((this.zzctu == null ? 0 : this.zzctu.hashCode()) + (((this.zzctt == null ? 0 : this.zzctt.hashCode()) + (((this.zzcts == null ? 0 : this.zzcts.hashCode()) + (((this.zzctr == null ? 0 : this.zzctr.hashCode()) + (((this.zzctq == null ? 0 : this.zzctq.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + zzbxr.hashCode(this.zzctp)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
            i = this.zzcuI.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.type != 0) {
            zzbxmVar.zzJ(1, this.type);
        }
        if (this.zzctp != null && this.zzctp.length > 0) {
            for (int i = 0; i < this.zzctp.length; i++) {
                zzbwr zzbwrVar = this.zzctp[i];
                if (zzbwrVar != null) {
                    zzbxmVar.zza(2, zzbwrVar);
                }
            }
        }
        if (this.zzctq != null) {
            zzbxmVar.zza(3, this.zzctq);
        }
        if (this.zzctr != null) {
            zzbxmVar.zza(4, this.zzctr);
        }
        if (this.zzcts != null) {
            zzbxmVar.zza(5, this.zzcts);
        }
        if (this.zzctt != null) {
            zzbxmVar.zza(6, this.zzctt);
        }
        if (this.zzctu != null) {
            zzbxmVar.zza(7, this.zzctu);
        }
        if (this.zzctv != null) {
            zzbxmVar.zza(8, this.zzctv);
        }
        if (this.zzctw != null) {
            zzbxmVar.zza(9, this.zzctw);
        }
        if (this.zzctx != null) {
            zzbxmVar.zza(10, this.zzctx);
        }
        if (this.zzcty != null) {
            zzbxmVar.zza(11, this.zzcty);
        }
        if (this.zzctz != null) {
            zzbxmVar.zza(12, this.zzctz);
        }
        if (this.zzctA != null) {
            zzbxmVar.zza(13, this.zzctA);
        }
        if (this.zzctB != null) {
            zzbxmVar.zza(14, this.zzctB);
        }
        if (this.zzctC != null) {
            zzbxmVar.zza(15, this.zzctC);
        }
        if (this.zzctD != null) {
            zzbxmVar.zza(16, this.zzctD);
        }
        if (this.zzctE != null) {
            zzbxmVar.zza(17, this.zzctE);
        }
        if (this.zzctF != null) {
            zzbxmVar.zza(18, this.zzctF);
        }
        if (this.zzctG != null) {
            zzbxmVar.zza(19, this.zzctG);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzao */
    public zzbwr zzb(zzbxl zzbxlVar) throws IOException {
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
                            this.type = zzaes;
                            continue;
                    }
                case 18:
                    int zzb = zzbxw.zzb(zzbxlVar, 18);
                    int length = this.zzctp == null ? 0 : this.zzctp.length;
                    zzbwr[] zzbwrVarArr = new zzbwr[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzctp, 0, zzbwrVarArr, 0, length);
                    }
                    while (length < zzbwrVarArr.length - 1) {
                        zzbwrVarArr[length] = new zzbwr();
                        zzbxlVar.zza(zzbwrVarArr[length]);
                        zzbxlVar.zzaeo();
                        length++;
                    }
                    zzbwrVarArr[length] = new zzbwr();
                    zzbxlVar.zza(zzbwrVarArr[length]);
                    this.zzctp = zzbwrVarArr;
                    break;
                case 26:
                    if (this.zzctq == null) {
                        this.zzctq = new zzbxi();
                    }
                    zzbxlVar.zza(this.zzctq);
                    break;
                case 34:
                    if (this.zzctr == null) {
                        this.zzctr = new zzbwx();
                    }
                    zzbxlVar.zza(this.zzctr);
                    break;
                case 42:
                    if (this.zzcts == null) {
                        this.zzcts = new zzbxb();
                    }
                    zzbxlVar.zza(this.zzcts);
                    break;
                case 50:
                    if (this.zzctt == null) {
                        this.zzctt = new zzbwm();
                    }
                    zzbxlVar.zza(this.zzctt);
                    break;
                case 58:
                    if (this.zzctu == null) {
                        this.zzctu = new zzbxe();
                    }
                    zzbxlVar.zza(this.zzctu);
                    break;
                case 66:
                    if (this.zzctv == null) {
                        this.zzctv = new zzbxc();
                    }
                    zzbxlVar.zza(this.zzctv);
                    break;
                case 74:
                    if (this.zzctw == null) {
                        this.zzctw = new zzbxa();
                    }
                    zzbxlVar.zza(this.zzctw);
                    break;
                case 82:
                    if (this.zzctx == null) {
                        this.zzctx = new zzbwn();
                    }
                    zzbxlVar.zza(this.zzctx);
                    break;
                case 90:
                    if (this.zzcty == null) {
                        this.zzcty = new zzbwo();
                    }
                    zzbxlVar.zza(this.zzcty);
                    break;
                case 98:
                    if (this.zzctz == null) {
                        this.zzctz = new zzbwy();
                    }
                    zzbxlVar.zza(this.zzctz);
                    break;
                case 106:
                    if (this.zzctA == null) {
                        this.zzctA = new zzbxf();
                    }
                    zzbxlVar.zza(this.zzctA);
                    break;
                case 114:
                    if (this.zzctB == null) {
                        this.zzctB = new zzbxk();
                    }
                    zzbxlVar.zza(this.zzctB);
                    break;
                case 122:
                    if (this.zzctC == null) {
                        this.zzctC = new zzbxj();
                    }
                    zzbxlVar.zza(this.zzctC);
                    break;
                case 130:
                    if (this.zzctD == null) {
                        this.zzctD = new zzbwu();
                    }
                    zzbxlVar.zza(this.zzctD);
                    break;
                case 138:
                    if (this.zzctE == null) {
                        this.zzctE = new zzbwz();
                    }
                    zzbxlVar.zza(this.zzctE);
                    break;
                case 146:
                    if (this.zzctF == null) {
                        this.zzctF = new zzbxd();
                    }
                    zzbxlVar.zza(this.zzctF);
                    break;
                case 154:
                    if (this.zzctG == null) {
                        this.zzctG = new zzbxg();
                    }
                    zzbxlVar.zza(this.zzctG);
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
        if (this.type != 0) {
            zzu += zzbxm.zzL(1, this.type);
        }
        if (this.zzctp != null && this.zzctp.length > 0) {
            int i = zzu;
            for (int i2 = 0; i2 < this.zzctp.length; i2++) {
                zzbwr zzbwrVar = this.zzctp[i2];
                if (zzbwrVar != null) {
                    i += zzbxm.zzc(2, zzbwrVar);
                }
            }
            zzu = i;
        }
        if (this.zzctq != null) {
            zzu += zzbxm.zzc(3, this.zzctq);
        }
        if (this.zzctr != null) {
            zzu += zzbxm.zzc(4, this.zzctr);
        }
        if (this.zzcts != null) {
            zzu += zzbxm.zzc(5, this.zzcts);
        }
        if (this.zzctt != null) {
            zzu += zzbxm.zzc(6, this.zzctt);
        }
        if (this.zzctu != null) {
            zzu += zzbxm.zzc(7, this.zzctu);
        }
        if (this.zzctv != null) {
            zzu += zzbxm.zzc(8, this.zzctv);
        }
        if (this.zzctw != null) {
            zzu += zzbxm.zzc(9, this.zzctw);
        }
        if (this.zzctx != null) {
            zzu += zzbxm.zzc(10, this.zzctx);
        }
        if (this.zzcty != null) {
            zzu += zzbxm.zzc(11, this.zzcty);
        }
        if (this.zzctz != null) {
            zzu += zzbxm.zzc(12, this.zzctz);
        }
        if (this.zzctA != null) {
            zzu += zzbxm.zzc(13, this.zzctA);
        }
        if (this.zzctB != null) {
            zzu += zzbxm.zzc(14, this.zzctB);
        }
        if (this.zzctC != null) {
            zzu += zzbxm.zzc(15, this.zzctC);
        }
        if (this.zzctD != null) {
            zzu += zzbxm.zzc(16, this.zzctD);
        }
        if (this.zzctE != null) {
            zzu += zzbxm.zzc(17, this.zzctE);
        }
        if (this.zzctF != null) {
            zzu += zzbxm.zzc(18, this.zzctF);
        }
        return this.zzctG != null ? zzu + zzbxm.zzc(19, this.zzctG) : zzu;
    }
}
