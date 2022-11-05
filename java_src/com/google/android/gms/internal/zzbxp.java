package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public final class zzbxp implements Cloneable {
    private static final zzbxq zzcuK = new zzbxq();
    private int mSize;
    private boolean zzcuL;
    private int[] zzcuM;
    private zzbxq[] zzcuN;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbxp() {
        this(10);
    }

    zzbxp(int i) {
        this.zzcuL = false;
        int idealIntArraySize = idealIntArraySize(i);
        this.zzcuM = new int[idealIntArraySize];
        this.zzcuN = new zzbxq[idealIntArraySize];
        this.mSize = 0;
    }

    private int idealByteArraySize(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            if (i <= (1 << i2) - 12) {
                return (1 << i2) - 12;
            }
        }
        return i;
    }

    private int idealIntArraySize(int i) {
        return idealByteArraySize(i * 4) / 4;
    }

    private boolean zza(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean zza(zzbxq[] zzbxqVarArr, zzbxq[] zzbxqVarArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!zzbxqVarArr[i2].equals(zzbxqVarArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    private int zzrq(int i) {
        int i2 = 0;
        int i3 = this.mSize - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) >>> 1;
            int i5 = this.zzcuM[i4];
            if (i5 < i) {
                i2 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i3 = i4 - 1;
            }
        }
        return i2 ^ (-1);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxp)) {
            return false;
        }
        zzbxp zzbxpVar = (zzbxp) obj;
        if (size() != zzbxpVar.size()) {
            return false;
        }
        return zza(this.zzcuM, zzbxpVar.zzcuM, this.mSize) && zza(this.zzcuN, zzbxpVar.zzcuN, this.mSize);
    }

    public int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.mSize; i2++) {
            i = (((i * 31) + this.zzcuM[i2]) * 31) + this.zzcuN[i2].hashCode();
        }
        return i;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int size() {
        return this.mSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(int i, zzbxq zzbxqVar) {
        int zzrq = zzrq(i);
        if (zzrq >= 0) {
            this.zzcuN[zzrq] = zzbxqVar;
            return;
        }
        int i2 = zzrq ^ (-1);
        if (i2 < this.mSize && this.zzcuN[i2] == zzcuK) {
            this.zzcuM[i2] = i;
            this.zzcuN[i2] = zzbxqVar;
            return;
        }
        if (this.mSize >= this.zzcuM.length) {
            int idealIntArraySize = idealIntArraySize(this.mSize + 1);
            int[] iArr = new int[idealIntArraySize];
            zzbxq[] zzbxqVarArr = new zzbxq[idealIntArraySize];
            System.arraycopy(this.zzcuM, 0, iArr, 0, this.zzcuM.length);
            System.arraycopy(this.zzcuN, 0, zzbxqVarArr, 0, this.zzcuN.length);
            this.zzcuM = iArr;
            this.zzcuN = zzbxqVarArr;
        }
        if (this.mSize - i2 != 0) {
            System.arraycopy(this.zzcuM, i2, this.zzcuM, i2 + 1, this.mSize - i2);
            System.arraycopy(this.zzcuN, i2, this.zzcuN, i2 + 1, this.mSize - i2);
        }
        this.zzcuM[i2] = i;
        this.zzcuN[i2] = zzbxqVar;
        this.mSize++;
    }

    /* renamed from: zzaeJ */
    public final zzbxp clone() {
        int size = size();
        zzbxp zzbxpVar = new zzbxp(size);
        System.arraycopy(this.zzcuM, 0, zzbxpVar.zzcuM, 0, size);
        for (int i = 0; i < size; i++) {
            if (this.zzcuN[i] != null) {
                zzbxpVar.zzcuN[i] = (zzbxq) this.zzcuN[i].clone();
            }
        }
        zzbxpVar.mSize = size;
        return zzbxpVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbxq zzro(int i) {
        int zzrq = zzrq(i);
        if (zzrq < 0 || this.zzcuN[zzrq] == zzcuK) {
            return null;
        }
        return this.zzcuN[zzrq];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbxq zzrp(int i) {
        return this.zzcuN[i];
    }
}
