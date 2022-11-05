package com.google.android.gms.internal;

import com.loopme.common.StaticParams;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public interface zzbxy {

    /* loaded from: classes2.dex */
    public static final class zza extends zzbxn<zza> implements Cloneable {
        public String[] zzcvg;
        public String[] zzcvh;
        public int[] zzcvi;
        public long[] zzcvj;
        public long[] zzcvk;

        public zza() {
            zzaeV();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (!zzbxr.equals(this.zzcvg, zzaVar.zzcvg) || !zzbxr.equals(this.zzcvh, zzaVar.zzcvh) || !zzbxr.equals(this.zzcvi, zzaVar.zzcvi) || !zzbxr.equals(this.zzcvj, zzaVar.zzcvj) || !zzbxr.equals(this.zzcvk, zzaVar.zzcvk)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzaVar.zzcuI == null || zzaVar.zzcuI.isEmpty() : this.zzcuI.equals(zzaVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((((((getClass().getName().hashCode() + 527) * 31) + zzbxr.hashCode(this.zzcvg)) * 31) + zzbxr.hashCode(this.zzcvh)) * 31) + zzbxr.hashCode(this.zzcvi)) * 31) + zzbxr.hashCode(this.zzcvj)) * 31) + zzbxr.hashCode(this.zzcvk)) * 31);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcvg != null && this.zzcvg.length > 0) {
                for (int i = 0; i < this.zzcvg.length; i++) {
                    String str = this.zzcvg[i];
                    if (str != null) {
                        zzbxmVar.zzq(1, str);
                    }
                }
            }
            if (this.zzcvh != null && this.zzcvh.length > 0) {
                for (int i2 = 0; i2 < this.zzcvh.length; i2++) {
                    String str2 = this.zzcvh[i2];
                    if (str2 != null) {
                        zzbxmVar.zzq(2, str2);
                    }
                }
            }
            if (this.zzcvi != null && this.zzcvi.length > 0) {
                for (int i3 = 0; i3 < this.zzcvi.length; i3++) {
                    zzbxmVar.zzJ(3, this.zzcvi[i3]);
                }
            }
            if (this.zzcvj != null && this.zzcvj.length > 0) {
                for (int i4 = 0; i4 < this.zzcvj.length; i4++) {
                    zzbxmVar.zzb(4, this.zzcvj[i4]);
                }
            }
            if (this.zzcvk != null && this.zzcvk.length > 0) {
                for (int i5 = 0; i5 < this.zzcvk.length; i5++) {
                    zzbxmVar.zzb(5, this.zzcvk[i5]);
                }
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaP */
        public zza zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        int zzb = zzbxw.zzb(zzbxlVar, 10);
                        int length = this.zzcvg == null ? 0 : this.zzcvg.length;
                        String[] strArr = new String[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzcvg, 0, strArr, 0, length);
                        }
                        while (length < strArr.length - 1) {
                            strArr[length] = zzbxlVar.readString();
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        strArr[length] = zzbxlVar.readString();
                        this.zzcvg = strArr;
                        break;
                    case 18:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 18);
                        int length2 = this.zzcvh == null ? 0 : this.zzcvh.length;
                        String[] strArr2 = new String[zzb2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzcvh, 0, strArr2, 0, length2);
                        }
                        while (length2 < strArr2.length - 1) {
                            strArr2[length2] = zzbxlVar.readString();
                            zzbxlVar.zzaeo();
                            length2++;
                        }
                        strArr2[length2] = zzbxlVar.readString();
                        this.zzcvh = strArr2;
                        break;
                    case 24:
                        int zzb3 = zzbxw.zzb(zzbxlVar, 24);
                        int length3 = this.zzcvi == null ? 0 : this.zzcvi.length;
                        int[] iArr = new int[zzb3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzcvi, 0, iArr, 0, length3);
                        }
                        while (length3 < iArr.length - 1) {
                            iArr[length3] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length3++;
                        }
                        iArr[length3] = zzbxlVar.zzaes();
                        this.zzcvi = iArr;
                        break;
                    case 26:
                        int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position = zzbxlVar.getPosition();
                        int i = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i++;
                        }
                        zzbxlVar.zzrc(position);
                        int length4 = this.zzcvi == null ? 0 : this.zzcvi.length;
                        int[] iArr2 = new int[i + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzcvi, 0, iArr2, 0, length4);
                        }
                        while (length4 < iArr2.length) {
                            iArr2[length4] = zzbxlVar.zzaes();
                            length4++;
                        }
                        this.zzcvi = iArr2;
                        zzbxlVar.zzrb(zzra);
                        break;
                    case 32:
                        int zzb4 = zzbxw.zzb(zzbxlVar, 32);
                        int length5 = this.zzcvj == null ? 0 : this.zzcvj.length;
                        long[] jArr = new long[zzb4 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.zzcvj, 0, jArr, 0, length5);
                        }
                        while (length5 < jArr.length - 1) {
                            jArr[length5] = zzbxlVar.zzaer();
                            zzbxlVar.zzaeo();
                            length5++;
                        }
                        jArr[length5] = zzbxlVar.zzaer();
                        this.zzcvj = jArr;
                        break;
                    case 34:
                        int zzra2 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position2 = zzbxlVar.getPosition();
                        int i2 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaer();
                            i2++;
                        }
                        zzbxlVar.zzrc(position2);
                        int length6 = this.zzcvj == null ? 0 : this.zzcvj.length;
                        long[] jArr2 = new long[i2 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.zzcvj, 0, jArr2, 0, length6);
                        }
                        while (length6 < jArr2.length) {
                            jArr2[length6] = zzbxlVar.zzaer();
                            length6++;
                        }
                        this.zzcvj = jArr2;
                        zzbxlVar.zzrb(zzra2);
                        break;
                    case 40:
                        int zzb5 = zzbxw.zzb(zzbxlVar, 40);
                        int length7 = this.zzcvk == null ? 0 : this.zzcvk.length;
                        long[] jArr3 = new long[zzb5 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.zzcvk, 0, jArr3, 0, length7);
                        }
                        while (length7 < jArr3.length - 1) {
                            jArr3[length7] = zzbxlVar.zzaer();
                            zzbxlVar.zzaeo();
                            length7++;
                        }
                        jArr3[length7] = zzbxlVar.zzaer();
                        this.zzcvk = jArr3;
                        break;
                    case 42:
                        int zzra3 = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position3 = zzbxlVar.getPosition();
                        int i3 = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaer();
                            i3++;
                        }
                        zzbxlVar.zzrc(position3);
                        int length8 = this.zzcvk == null ? 0 : this.zzcvk.length;
                        long[] jArr4 = new long[i3 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.zzcvk, 0, jArr4, 0, length8);
                        }
                        while (length8 < jArr4.length) {
                            jArr4[length8] = zzbxlVar.zzaer();
                            length8++;
                        }
                        this.zzcvk = jArr4;
                        zzbxlVar.zzrb(zzra3);
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

        @Override // com.google.android.gms.internal.zzbxn
        public /* synthetic */ zza zzaeH() throws CloneNotSupportedException {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public /* synthetic */ zzbxt zzaeI() throws CloneNotSupportedException {
            return (zza) clone();
        }

        public zza zzaeV() {
            this.zzcvg = zzbxw.zzcvb;
            this.zzcvh = zzbxw.zzcvb;
            this.zzcvi = zzbxw.zzcuW;
            this.zzcvj = zzbxw.zzcuX;
            this.zzcvk = zzbxw.zzcuX;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        /* renamed from: zzaeW */
        public zza clone() {
            try {
                zza zzaVar = (zza) super.clone();
                if (this.zzcvg != null && this.zzcvg.length > 0) {
                    zzaVar.zzcvg = (String[]) this.zzcvg.clone();
                }
                if (this.zzcvh != null && this.zzcvh.length > 0) {
                    zzaVar.zzcvh = (String[]) this.zzcvh.clone();
                }
                if (this.zzcvi != null && this.zzcvi.length > 0) {
                    zzaVar.zzcvi = (int[]) this.zzcvi.clone();
                }
                if (this.zzcvj != null && this.zzcvj.length > 0) {
                    zzaVar.zzcvj = (long[]) this.zzcvj.clone();
                }
                if (this.zzcvk != null && this.zzcvk.length > 0) {
                    zzaVar.zzcvk = (long[]) this.zzcvk.clone();
                }
                return zzaVar;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int i;
            int zzu = super.zzu();
            if (this.zzcvg == null || this.zzcvg.length <= 0) {
                i = zzu;
            } else {
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzcvg.length; i4++) {
                    String str = this.zzcvg[i4];
                    if (str != null) {
                        i3++;
                        i2 += zzbxm.zzkb(str);
                    }
                }
                i = zzu + i2 + (i3 * 1);
            }
            if (this.zzcvh != null && this.zzcvh.length > 0) {
                int i5 = 0;
                int i6 = 0;
                for (int i7 = 0; i7 < this.zzcvh.length; i7++) {
                    String str2 = this.zzcvh[i7];
                    if (str2 != null) {
                        i6++;
                        i5 += zzbxm.zzkb(str2);
                    }
                }
                i = i + i5 + (i6 * 1);
            }
            if (this.zzcvi != null && this.zzcvi.length > 0) {
                int i8 = 0;
                for (int i9 = 0; i9 < this.zzcvi.length; i9++) {
                    i8 += zzbxm.zzrg(this.zzcvi[i9]);
                }
                i = i + i8 + (this.zzcvi.length * 1);
            }
            if (this.zzcvj != null && this.zzcvj.length > 0) {
                int i10 = 0;
                for (int i11 = 0; i11 < this.zzcvj.length; i11++) {
                    i10 += zzbxm.zzbf(this.zzcvj[i11]);
                }
                i = i + i10 + (this.zzcvj.length * 1);
            }
            if (this.zzcvk == null || this.zzcvk.length <= 0) {
                return i;
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.zzcvk.length; i13++) {
                i12 += zzbxm.zzbf(this.zzcvk[i13]);
            }
            return i + i12 + (this.zzcvk.length * 1);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzbxn<zzb> implements Cloneable {
        public String version;
        public int zzcvl;
        public String zzcvm;

        public zzb() {
            zzaeX();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.zzcvl != zzbVar.zzcvl) {
                return false;
            }
            if (this.zzcvm == null) {
                if (zzbVar.zzcvm != null) {
                    return false;
                }
            } else if (!this.zzcvm.equals(zzbVar.zzcvm)) {
                return false;
            }
            if (this.version == null) {
                if (zzbVar.version != null) {
                    return false;
                }
            } else if (!this.version.equals(zzbVar.version)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbVar.zzcuI == null || zzbVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.version == null ? 0 : this.version.hashCode()) + (((this.zzcvm == null ? 0 : this.zzcvm.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.zzcvl) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcvl != 0) {
                zzbxmVar.zzJ(1, this.zzcvl);
            }
            if (this.zzcvm != null && !this.zzcvm.equals("")) {
                zzbxmVar.zzq(2, this.zzcvm);
            }
            if (this.version != null && !this.version.equals("")) {
                zzbxmVar.zzq(3, this.version);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaQ */
        public zzb zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzcvl = zzbxlVar.zzaes();
                        break;
                    case 18:
                        this.zzcvm = zzbxlVar.readString();
                        break;
                    case 26:
                        this.version = zzbxlVar.readString();
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

        @Override // com.google.android.gms.internal.zzbxn
        public /* synthetic */ zzb zzaeH() throws CloneNotSupportedException {
            return (zzb) clone();
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public /* synthetic */ zzbxt zzaeI() throws CloneNotSupportedException {
            return (zzb) clone();
        }

        public zzb zzaeX() {
            this.zzcvl = 0;
            this.zzcvm = "";
            this.version = "";
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        /* renamed from: zzaeY */
        public zzb clone() {
            try {
                return (zzb) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzcvl != 0) {
                zzu += zzbxm.zzL(1, this.zzcvl);
            }
            if (this.zzcvm != null && !this.zzcvm.equals("")) {
                zzu += zzbxm.zzr(2, this.zzcvm);
            }
            return (this.version == null || this.version.equals("")) ? zzu : zzu + zzbxm.zzr(3, this.version);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzbxn<zzc> implements Cloneable {
        public byte[] zzcvn;
        public String zzcvo;
        public byte[][] zzcvp;
        public boolean zzcvq;

        public zzc() {
            zzaeZ();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (!Arrays.equals(this.zzcvn, zzcVar.zzcvn)) {
                return false;
            }
            if (this.zzcvo == null) {
                if (zzcVar.zzcvo != null) {
                    return false;
                }
            } else if (!this.zzcvo.equals(zzcVar.zzcvo)) {
                return false;
            }
            if (!zzbxr.zza(this.zzcvp, zzcVar.zzcvp) || this.zzcvq != zzcVar.zzcvq) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzcVar.zzcuI == null || zzcVar.zzcuI.isEmpty() : this.zzcuI.equals(zzcVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzcvq ? 1231 : 1237) + (((((this.zzcvo == null ? 0 : this.zzcvo.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + Arrays.hashCode(this.zzcvn)) * 31)) * 31) + zzbxr.zzb(this.zzcvp)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (!Arrays.equals(this.zzcvn, zzbxw.zzcvd)) {
                zzbxmVar.zzb(1, this.zzcvn);
            }
            if (this.zzcvp != null && this.zzcvp.length > 0) {
                for (int i = 0; i < this.zzcvp.length; i++) {
                    byte[] bArr = this.zzcvp[i];
                    if (bArr != null) {
                        zzbxmVar.zzb(2, bArr);
                    }
                }
            }
            if (this.zzcvq) {
                zzbxmVar.zzg(3, this.zzcvq);
            }
            if (this.zzcvo != null && !this.zzcvo.equals("")) {
                zzbxmVar.zzq(4, this.zzcvo);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaR */
        public zzc zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzcvn = zzbxlVar.readBytes();
                        break;
                    case 18:
                        int zzb = zzbxw.zzb(zzbxlVar, 18);
                        int length = this.zzcvp == null ? 0 : this.zzcvp.length;
                        byte[][] bArr = new byte[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzcvp, 0, bArr, 0, length);
                        }
                        while (length < bArr.length - 1) {
                            bArr[length] = zzbxlVar.readBytes();
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        bArr[length] = zzbxlVar.readBytes();
                        this.zzcvp = bArr;
                        break;
                    case 24:
                        this.zzcvq = zzbxlVar.zzaeu();
                        break;
                    case 34:
                        this.zzcvo = zzbxlVar.readString();
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

        @Override // com.google.android.gms.internal.zzbxn
        public /* synthetic */ zzc zzaeH() throws CloneNotSupportedException {
            return (zzc) clone();
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public /* synthetic */ zzbxt zzaeI() throws CloneNotSupportedException {
            return (zzc) clone();
        }

        public zzc zzaeZ() {
            this.zzcvn = zzbxw.zzcvd;
            this.zzcvo = "";
            this.zzcvp = zzbxw.zzcvc;
            this.zzcvq = false;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        /* renamed from: zzafa */
        public zzc clone() {
            try {
                zzc zzcVar = (zzc) super.clone();
                if (this.zzcvp != null && this.zzcvp.length > 0) {
                    zzcVar.zzcvp = (byte[][]) this.zzcvp.clone();
                }
                return zzcVar;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (!Arrays.equals(this.zzcvn, zzbxw.zzcvd)) {
                zzu += zzbxm.zzc(1, this.zzcvn);
            }
            if (this.zzcvp != null && this.zzcvp.length > 0) {
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < this.zzcvp.length; i3++) {
                    byte[] bArr = this.zzcvp[i3];
                    if (bArr != null) {
                        i2++;
                        i += zzbxm.zzai(bArr);
                    }
                }
                zzu = zzu + i + (i2 * 1);
            }
            if (this.zzcvq) {
                zzu += zzbxm.zzh(3, this.zzcvq);
            }
            return (this.zzcvo == null || this.zzcvo.equals("")) ? zzu : zzu + zzbxm.zzr(4, this.zzcvo);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd extends zzbxn<zzd> implements Cloneable {
        public String tag;
        public boolean zzced;
        public String zzcvA;
        public zza zzcvB;
        public String zzcvC;
        public long zzcvD;
        public zzc zzcvE;
        public byte[] zzcvF;
        public String zzcvG;
        public int zzcvH;
        public int[] zzcvI;
        public long zzcvJ;
        public zzf zzcvK;
        public long zzcvr;
        public long zzcvs;
        public long zzcvt;
        public int zzcvu;
        public zze[] zzcvv;
        public byte[] zzcvw;
        public zzb zzcvx;
        public byte[] zzcvy;
        public String zzcvz;
        public int zzri;

        public zzd() {
            zzafb();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (this.zzcvr != zzdVar.zzcvr || this.zzcvs != zzdVar.zzcvs || this.zzcvt != zzdVar.zzcvt) {
                return false;
            }
            if (this.tag == null) {
                if (zzdVar.tag != null) {
                    return false;
                }
            } else if (!this.tag.equals(zzdVar.tag)) {
                return false;
            }
            if (this.zzcvu != zzdVar.zzcvu || this.zzri != zzdVar.zzri || this.zzced != zzdVar.zzced || !zzbxr.equals(this.zzcvv, zzdVar.zzcvv) || !Arrays.equals(this.zzcvw, zzdVar.zzcvw)) {
                return false;
            }
            if (this.zzcvx == null) {
                if (zzdVar.zzcvx != null) {
                    return false;
                }
            } else if (!this.zzcvx.equals(zzdVar.zzcvx)) {
                return false;
            }
            if (!Arrays.equals(this.zzcvy, zzdVar.zzcvy)) {
                return false;
            }
            if (this.zzcvz == null) {
                if (zzdVar.zzcvz != null) {
                    return false;
                }
            } else if (!this.zzcvz.equals(zzdVar.zzcvz)) {
                return false;
            }
            if (this.zzcvA == null) {
                if (zzdVar.zzcvA != null) {
                    return false;
                }
            } else if (!this.zzcvA.equals(zzdVar.zzcvA)) {
                return false;
            }
            if (this.zzcvB == null) {
                if (zzdVar.zzcvB != null) {
                    return false;
                }
            } else if (!this.zzcvB.equals(zzdVar.zzcvB)) {
                return false;
            }
            if (this.zzcvC == null) {
                if (zzdVar.zzcvC != null) {
                    return false;
                }
            } else if (!this.zzcvC.equals(zzdVar.zzcvC)) {
                return false;
            }
            if (this.zzcvD != zzdVar.zzcvD) {
                return false;
            }
            if (this.zzcvE == null) {
                if (zzdVar.zzcvE != null) {
                    return false;
                }
            } else if (!this.zzcvE.equals(zzdVar.zzcvE)) {
                return false;
            }
            if (!Arrays.equals(this.zzcvF, zzdVar.zzcvF)) {
                return false;
            }
            if (this.zzcvG == null) {
                if (zzdVar.zzcvG != null) {
                    return false;
                }
            } else if (!this.zzcvG.equals(zzdVar.zzcvG)) {
                return false;
            }
            if (this.zzcvH != zzdVar.zzcvH || !zzbxr.equals(this.zzcvI, zzdVar.zzcvI) || this.zzcvJ != zzdVar.zzcvJ) {
                return false;
            }
            if (this.zzcvK == null) {
                if (zzdVar.zzcvK != null) {
                    return false;
                }
            } else if (!this.zzcvK.equals(zzdVar.zzcvK)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzdVar.zzcuI == null || zzdVar.zzcuI.isEmpty() : this.zzcuI.equals(zzdVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzcvK == null ? 0 : this.zzcvK.hashCode()) + (((((((((this.zzcvG == null ? 0 : this.zzcvG.hashCode()) + (((((this.zzcvE == null ? 0 : this.zzcvE.hashCode()) + (((((this.zzcvC == null ? 0 : this.zzcvC.hashCode()) + (((this.zzcvB == null ? 0 : this.zzcvB.hashCode()) + (((this.zzcvA == null ? 0 : this.zzcvA.hashCode()) + (((this.zzcvz == null ? 0 : this.zzcvz.hashCode()) + (((((this.zzcvx == null ? 0 : this.zzcvx.hashCode()) + (((((((this.zzced ? 1231 : 1237) + (((((((this.tag == null ? 0 : this.tag.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzcvr ^ (this.zzcvr >>> 32)))) * 31) + ((int) (this.zzcvs ^ (this.zzcvs >>> 32)))) * 31) + ((int) (this.zzcvt ^ (this.zzcvt >>> 32)))) * 31)) * 31) + this.zzcvu) * 31) + this.zzri) * 31)) * 31) + zzbxr.hashCode(this.zzcvv)) * 31) + Arrays.hashCode(this.zzcvw)) * 31)) * 31) + Arrays.hashCode(this.zzcvy)) * 31)) * 31)) * 31)) * 31)) * 31) + ((int) (this.zzcvD ^ (this.zzcvD >>> 32)))) * 31)) * 31) + Arrays.hashCode(this.zzcvF)) * 31)) * 31) + this.zzcvH) * 31) + zzbxr.hashCode(this.zzcvI)) * 31) + ((int) (this.zzcvJ ^ (this.zzcvJ >>> 32)))) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcvr != 0) {
                zzbxmVar.zzb(1, this.zzcvr);
            }
            if (this.tag != null && !this.tag.equals("")) {
                zzbxmVar.zzq(2, this.tag);
            }
            if (this.zzcvv != null && this.zzcvv.length > 0) {
                for (int i = 0; i < this.zzcvv.length; i++) {
                    zze zzeVar = this.zzcvv[i];
                    if (zzeVar != null) {
                        zzbxmVar.zza(3, zzeVar);
                    }
                }
            }
            if (!Arrays.equals(this.zzcvw, zzbxw.zzcvd)) {
                zzbxmVar.zzb(4, this.zzcvw);
            }
            if (!Arrays.equals(this.zzcvy, zzbxw.zzcvd)) {
                zzbxmVar.zzb(6, this.zzcvy);
            }
            if (this.zzcvB != null) {
                zzbxmVar.zza(7, this.zzcvB);
            }
            if (this.zzcvz != null && !this.zzcvz.equals("")) {
                zzbxmVar.zzq(8, this.zzcvz);
            }
            if (this.zzcvx != null) {
                zzbxmVar.zza(9, this.zzcvx);
            }
            if (this.zzced) {
                zzbxmVar.zzg(10, this.zzced);
            }
            if (this.zzcvu != 0) {
                zzbxmVar.zzJ(11, this.zzcvu);
            }
            if (this.zzri != 0) {
                zzbxmVar.zzJ(12, this.zzri);
            }
            if (this.zzcvA != null && !this.zzcvA.equals("")) {
                zzbxmVar.zzq(13, this.zzcvA);
            }
            if (this.zzcvC != null && !this.zzcvC.equals("")) {
                zzbxmVar.zzq(14, this.zzcvC);
            }
            if (this.zzcvD != StaticParams.FETCH_TIMEOUT) {
                zzbxmVar.zzd(15, this.zzcvD);
            }
            if (this.zzcvE != null) {
                zzbxmVar.zza(16, this.zzcvE);
            }
            if (this.zzcvs != 0) {
                zzbxmVar.zzb(17, this.zzcvs);
            }
            if (!Arrays.equals(this.zzcvF, zzbxw.zzcvd)) {
                zzbxmVar.zzb(18, this.zzcvF);
            }
            if (this.zzcvH != 0) {
                zzbxmVar.zzJ(19, this.zzcvH);
            }
            if (this.zzcvI != null && this.zzcvI.length > 0) {
                for (int i2 = 0; i2 < this.zzcvI.length; i2++) {
                    zzbxmVar.zzJ(20, this.zzcvI[i2]);
                }
            }
            if (this.zzcvt != 0) {
                zzbxmVar.zzb(21, this.zzcvt);
            }
            if (this.zzcvJ != 0) {
                zzbxmVar.zzb(22, this.zzcvJ);
            }
            if (this.zzcvK != null) {
                zzbxmVar.zza(23, this.zzcvK);
            }
            if (this.zzcvG != null && !this.zzcvG.equals("")) {
                zzbxmVar.zzq(24, this.zzcvG);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaS */
        public zzd zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        this.zzcvr = zzbxlVar.zzaer();
                        break;
                    case 18:
                        this.tag = zzbxlVar.readString();
                        break;
                    case 26:
                        int zzb = zzbxw.zzb(zzbxlVar, 26);
                        int length = this.zzcvv == null ? 0 : this.zzcvv.length;
                        zze[] zzeVarArr = new zze[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzcvv, 0, zzeVarArr, 0, length);
                        }
                        while (length < zzeVarArr.length - 1) {
                            zzeVarArr[length] = new zze();
                            zzbxlVar.zza(zzeVarArr[length]);
                            zzbxlVar.zzaeo();
                            length++;
                        }
                        zzeVarArr[length] = new zze();
                        zzbxlVar.zza(zzeVarArr[length]);
                        this.zzcvv = zzeVarArr;
                        break;
                    case 34:
                        this.zzcvw = zzbxlVar.readBytes();
                        break;
                    case 50:
                        this.zzcvy = zzbxlVar.readBytes();
                        break;
                    case 58:
                        if (this.zzcvB == null) {
                            this.zzcvB = new zza();
                        }
                        zzbxlVar.zza(this.zzcvB);
                        break;
                    case 66:
                        this.zzcvz = zzbxlVar.readString();
                        break;
                    case 74:
                        if (this.zzcvx == null) {
                            this.zzcvx = new zzb();
                        }
                        zzbxlVar.zza(this.zzcvx);
                        break;
                    case 80:
                        this.zzced = zzbxlVar.zzaeu();
                        break;
                    case 88:
                        this.zzcvu = zzbxlVar.zzaes();
                        break;
                    case 96:
                        this.zzri = zzbxlVar.zzaes();
                        break;
                    case 106:
                        this.zzcvA = zzbxlVar.readString();
                        break;
                    case 114:
                        this.zzcvC = zzbxlVar.readString();
                        break;
                    case 120:
                        this.zzcvD = zzbxlVar.zzaew();
                        break;
                    case 130:
                        if (this.zzcvE == null) {
                            this.zzcvE = new zzc();
                        }
                        zzbxlVar.zza(this.zzcvE);
                        break;
                    case 136:
                        this.zzcvs = zzbxlVar.zzaer();
                        break;
                    case 146:
                        this.zzcvF = zzbxlVar.readBytes();
                        break;
                    case 152:
                        int zzaes = zzbxlVar.zzaes();
                        switch (zzaes) {
                            case 0:
                            case 1:
                            case 2:
                                this.zzcvH = zzaes;
                                continue;
                        }
                    case 160:
                        int zzb2 = zzbxw.zzb(zzbxlVar, 160);
                        int length2 = this.zzcvI == null ? 0 : this.zzcvI.length;
                        int[] iArr = new int[zzb2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzcvI, 0, iArr, 0, length2);
                        }
                        while (length2 < iArr.length - 1) {
                            iArr[length2] = zzbxlVar.zzaes();
                            zzbxlVar.zzaeo();
                            length2++;
                        }
                        iArr[length2] = zzbxlVar.zzaes();
                        this.zzcvI = iArr;
                        break;
                    case 162:
                        int zzra = zzbxlVar.zzra(zzbxlVar.zzaex());
                        int position = zzbxlVar.getPosition();
                        int i = 0;
                        while (zzbxlVar.zzaeC() > 0) {
                            zzbxlVar.zzaes();
                            i++;
                        }
                        zzbxlVar.zzrc(position);
                        int length3 = this.zzcvI == null ? 0 : this.zzcvI.length;
                        int[] iArr2 = new int[i + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzcvI, 0, iArr2, 0, length3);
                        }
                        while (length3 < iArr2.length) {
                            iArr2[length3] = zzbxlVar.zzaes();
                            length3++;
                        }
                        this.zzcvI = iArr2;
                        zzbxlVar.zzrb(zzra);
                        break;
                    case 168:
                        this.zzcvt = zzbxlVar.zzaer();
                        break;
                    case 176:
                        this.zzcvJ = zzbxlVar.zzaer();
                        break;
                    case 186:
                        if (this.zzcvK == null) {
                            this.zzcvK = new zzf();
                        }
                        zzbxlVar.zza(this.zzcvK);
                        break;
                    case 194:
                        this.zzcvG = zzbxlVar.readString();
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

        @Override // com.google.android.gms.internal.zzbxn
        public /* synthetic */ zzd zzaeH() throws CloneNotSupportedException {
            return (zzd) clone();
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public /* synthetic */ zzbxt zzaeI() throws CloneNotSupportedException {
            return (zzd) clone();
        }

        public zzd zzafb() {
            this.zzcvr = 0L;
            this.zzcvs = 0L;
            this.zzcvt = 0L;
            this.tag = "";
            this.zzcvu = 0;
            this.zzri = 0;
            this.zzced = false;
            this.zzcvv = zze.zzafd();
            this.zzcvw = zzbxw.zzcvd;
            this.zzcvx = null;
            this.zzcvy = zzbxw.zzcvd;
            this.zzcvz = "";
            this.zzcvA = "";
            this.zzcvB = null;
            this.zzcvC = "";
            this.zzcvD = StaticParams.FETCH_TIMEOUT;
            this.zzcvE = null;
            this.zzcvF = zzbxw.zzcvd;
            this.zzcvG = "";
            this.zzcvH = 0;
            this.zzcvI = zzbxw.zzcuW;
            this.zzcvJ = 0L;
            this.zzcvK = null;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        /* renamed from: zzafc */
        public zzd clone() {
            try {
                zzd zzdVar = (zzd) super.clone();
                if (this.zzcvv != null && this.zzcvv.length > 0) {
                    zzdVar.zzcvv = new zze[this.zzcvv.length];
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= this.zzcvv.length) {
                            break;
                        }
                        if (this.zzcvv[i2] != null) {
                            zzdVar.zzcvv[i2] = (zze) this.zzcvv[i2].clone();
                        }
                        i = i2 + 1;
                    }
                }
                if (this.zzcvx != null) {
                    zzdVar.zzcvx = (zzb) this.zzcvx.clone();
                }
                if (this.zzcvB != null) {
                    zzdVar.zzcvB = (zza) this.zzcvB.clone();
                }
                if (this.zzcvE != null) {
                    zzdVar.zzcvE = (zzc) this.zzcvE.clone();
                }
                if (this.zzcvI != null && this.zzcvI.length > 0) {
                    zzdVar.zzcvI = (int[]) this.zzcvI.clone();
                }
                if (this.zzcvK != null) {
                    zzdVar.zzcvK = (zzf) this.zzcvK.clone();
                }
                return zzdVar;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzcvr != 0) {
                zzu += zzbxm.zzf(1, this.zzcvr);
            }
            if (this.tag != null && !this.tag.equals("")) {
                zzu += zzbxm.zzr(2, this.tag);
            }
            if (this.zzcvv != null && this.zzcvv.length > 0) {
                int i = zzu;
                for (int i2 = 0; i2 < this.zzcvv.length; i2++) {
                    zze zzeVar = this.zzcvv[i2];
                    if (zzeVar != null) {
                        i += zzbxm.zzc(3, zzeVar);
                    }
                }
                zzu = i;
            }
            if (!Arrays.equals(this.zzcvw, zzbxw.zzcvd)) {
                zzu += zzbxm.zzc(4, this.zzcvw);
            }
            if (!Arrays.equals(this.zzcvy, zzbxw.zzcvd)) {
                zzu += zzbxm.zzc(6, this.zzcvy);
            }
            if (this.zzcvB != null) {
                zzu += zzbxm.zzc(7, this.zzcvB);
            }
            if (this.zzcvz != null && !this.zzcvz.equals("")) {
                zzu += zzbxm.zzr(8, this.zzcvz);
            }
            if (this.zzcvx != null) {
                zzu += zzbxm.zzc(9, this.zzcvx);
            }
            if (this.zzced) {
                zzu += zzbxm.zzh(10, this.zzced);
            }
            if (this.zzcvu != 0) {
                zzu += zzbxm.zzL(11, this.zzcvu);
            }
            if (this.zzri != 0) {
                zzu += zzbxm.zzL(12, this.zzri);
            }
            if (this.zzcvA != null && !this.zzcvA.equals("")) {
                zzu += zzbxm.zzr(13, this.zzcvA);
            }
            if (this.zzcvC != null && !this.zzcvC.equals("")) {
                zzu += zzbxm.zzr(14, this.zzcvC);
            }
            if (this.zzcvD != StaticParams.FETCH_TIMEOUT) {
                zzu += zzbxm.zzh(15, this.zzcvD);
            }
            if (this.zzcvE != null) {
                zzu += zzbxm.zzc(16, this.zzcvE);
            }
            if (this.zzcvs != 0) {
                zzu += zzbxm.zzf(17, this.zzcvs);
            }
            if (!Arrays.equals(this.zzcvF, zzbxw.zzcvd)) {
                zzu += zzbxm.zzc(18, this.zzcvF);
            }
            if (this.zzcvH != 0) {
                zzu += zzbxm.zzL(19, this.zzcvH);
            }
            if (this.zzcvI != null && this.zzcvI.length > 0) {
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzcvI.length; i4++) {
                    i3 += zzbxm.zzrg(this.zzcvI[i4]);
                }
                zzu = zzu + i3 + (this.zzcvI.length * 2);
            }
            if (this.zzcvt != 0) {
                zzu += zzbxm.zzf(21, this.zzcvt);
            }
            if (this.zzcvJ != 0) {
                zzu += zzbxm.zzf(22, this.zzcvJ);
            }
            if (this.zzcvK != null) {
                zzu += zzbxm.zzc(23, this.zzcvK);
            }
            return (this.zzcvG == null || this.zzcvG.equals("")) ? zzu : zzu + zzbxm.zzr(24, this.zzcvG);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zze extends zzbxn<zze> implements Cloneable {
        private static volatile zze[] zzcvL;
        public String value;
        public String zzaB;

        public zze() {
            zzafe();
        }

        public static zze[] zzafd() {
            if (zzcvL == null) {
                synchronized (zzbxr.zzcuQ) {
                    if (zzcvL == null) {
                        zzcvL = new zze[0];
                    }
                }
            }
            return zzcvL;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.zzaB == null) {
                if (zzeVar.zzaB != null) {
                    return false;
                }
            } else if (!this.zzaB.equals(zzeVar.zzaB)) {
                return false;
            }
            if (this.value == null) {
                if (zzeVar.value != null) {
                    return false;
                }
            } else if (!this.value.equals(zzeVar.value)) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzeVar.zzcuI == null || zzeVar.zzcuI.isEmpty() : this.zzcuI.equals(zzeVar.zzcuI);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.value == null ? 0 : this.value.hashCode()) + (((this.zzaB == null ? 0 : this.zzaB.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
            if (this.zzcuI != null && !this.zzcuI.isEmpty()) {
                i = this.zzcuI.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzaB != null && !this.zzaB.equals("")) {
                zzbxmVar.zzq(1, this.zzaB);
            }
            if (this.value != null && !this.value.equals("")) {
                zzbxmVar.zzq(2, this.value);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaT */
        public zze zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 10:
                        this.zzaB = zzbxlVar.readString();
                        break;
                    case 18:
                        this.value = zzbxlVar.readString();
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

        @Override // com.google.android.gms.internal.zzbxn
        public /* synthetic */ zze zzaeH() throws CloneNotSupportedException {
            return (zze) clone();
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public /* synthetic */ zzbxt zzaeI() throws CloneNotSupportedException {
            return (zze) clone();
        }

        public zze zzafe() {
            this.zzaB = "";
            this.value = "";
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        /* renamed from: zzaff */
        public zze clone() {
            try {
                return (zze) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzaB != null && !this.zzaB.equals("")) {
                zzu += zzbxm.zzr(1, this.zzaB);
            }
            return (this.value == null || this.value.equals("")) ? zzu : zzu + zzbxm.zzr(2, this.value);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzf extends zzbxn<zzf> implements Cloneable {
        public int zzcvM;
        public int zzcvN;

        public zzf() {
            zzafg();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzfVar = (zzf) obj;
            if (this.zzcvM != zzfVar.zzcvM || this.zzcvN != zzfVar.zzcvN) {
                return false;
            }
            return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzfVar.zzcuI == null || zzfVar.zzcuI.isEmpty() : this.zzcuI.equals(zzfVar.zzcuI);
        }

        public int hashCode() {
            return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + this.zzcvM) * 31) + this.zzcvN) * 31);
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public void zza(zzbxm zzbxmVar) throws IOException {
            if (this.zzcvM != -1) {
                zzbxmVar.zzJ(1, this.zzcvM);
            }
            if (this.zzcvN != 0) {
                zzbxmVar.zzJ(2, this.zzcvN);
            }
            super.zza(zzbxmVar);
        }

        @Override // com.google.android.gms.internal.zzbxt
        /* renamed from: zzaU */
        public zzf zzb(zzbxl zzbxlVar) throws IOException {
            while (true) {
                int zzaeo = zzbxlVar.zzaeo();
                switch (zzaeo) {
                    case 0:
                        break;
                    case 8:
                        int zzaes = zzbxlVar.zzaes();
                        switch (zzaes) {
                            case -1:
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
                                this.zzcvM = zzaes;
                                continue;
                        }
                    case 16:
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
                            case 100:
                                this.zzcvN = zzaes2;
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

        @Override // com.google.android.gms.internal.zzbxn
        public /* synthetic */ zzf zzaeH() throws CloneNotSupportedException {
            return (zzf) clone();
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public /* synthetic */ zzbxt zzaeI() throws CloneNotSupportedException {
            return (zzf) clone();
        }

        public zzf zzafg() {
            this.zzcvM = -1;
            this.zzcvN = 0;
            this.zzcuI = null;
            this.zzcuR = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        /* renamed from: zzafh */
        public zzf clone() {
            try {
                return (zzf) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
        public int zzu() {
            int zzu = super.zzu();
            if (this.zzcvM != -1) {
                zzu += zzbxm.zzL(1, this.zzcvM);
            }
            return this.zzcvN != 0 ? zzu + zzbxm.zzL(2, this.zzcvN) : zzu;
        }
    }
}
