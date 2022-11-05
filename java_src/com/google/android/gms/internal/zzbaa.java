package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class zzbaa {
    private static final String TAG = zzbaa.class.getSimpleName();
    int[] zzbDD;
    int zzbDf;

    public zzbaa(DataHolder dataHolder, int i) {
        int[] zzK;
        if (dataHolder != null && dataHolder.getStatusCode() == 0 && (zzK = zzK(dataHolder.zzg("", i, dataHolder.zzcI(i)))) != null && zzK.length >= 3 && zzK[0] == 1 && zzK[1] == 1936614772) {
            this.zzbDD = new int[zzK.length];
            System.arraycopy(zzK, 0, this.zzbDD, 0, zzK.length);
            this.zzbDf = this.zzbDD[2];
        }
    }

    private static long zzJ(byte[] bArr) {
        return ((bArr[3] & 255) | ((bArr[2] & 255) << 8) | ((bArr[1] & 255) << 16) | ((bArr[0] & 255) << 24)) & 4294967295L;
    }

    public static int[] zzK(byte[] bArr) {
        if (bArr == null || bArr.length % 4 != 0) {
            return null;
        }
        int[] iArr = new int[bArr.length / 4];
        for (int i = 0; i < bArr.length; i += 4) {
            iArr[i / 4] = (int) (((bArr[i + 3] & 255) | ((bArr[i + 2] & 255) << 8) | ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24)) & 4294967295L);
        }
        return iArr;
    }

    private static int zza(int[] iArr, long j) {
        int i = 3;
        int length = iArr.length - 1;
        while (i <= length) {
            int i2 = ((length - i) / 2) + i;
            long zzax = zzax(iArr[i2]);
            if (zzax == j) {
                return i2;
            }
            if (zzax < j) {
                i = i2 + 1;
            } else {
                length = i2 - 1;
            }
        }
        return -1;
    }

    private static long zzax(long j) {
        return 4294967295L & j;
    }

    public int getThreatType() {
        return this.zzbDf;
    }

    public boolean zzI(byte[] bArr) {
        if (this.zzbDD == null) {
            return false;
        }
        return zza(this.zzbDD, zzJ(bArr)) != -1;
    }
}
