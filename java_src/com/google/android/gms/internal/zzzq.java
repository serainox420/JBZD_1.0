package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2.dex */
public class zzzq {
    private static long zzI(long j) {
        return (j >>> 47) ^ j;
    }

    private static long zza(byte[] bArr, int i, int i2) {
        long j = 0;
        int min = Math.min(i2, 8);
        for (int i3 = 0; i3 < min; i3++) {
            j |= (bArr[i + i3] & 255) << (i3 * 8);
        }
        return j;
    }

    private static long zza(byte[] bArr, long j) {
        int length = bArr.length & (-8);
        int length2 = bArr.length & 7;
        long length3 = j ^ (bArr.length * (-4132994306676758123L));
        int i = 0;
        while (i < length) {
            long zzI = (length3 ^ (zzI(zzb(bArr, i) * (-4132994306676758123L)) * (-4132994306676758123L))) * (-4132994306676758123L);
            i += 8;
            length3 = zzI;
        }
        if (length2 != 0) {
            length3 = (length3 ^ zza(bArr, length, length2)) * (-4132994306676758123L);
        }
        return zzI(zzI(length3) * (-4132994306676758123L));
    }

    private static void zza(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long zzb = zzb(bArr, i);
        long zzb2 = zzb(bArr, i + 8);
        long zzb3 = zzb(bArr, i + 16);
        long zzb4 = zzb(bArr, i + 24);
        long j3 = zzb + j;
        long rotateRight = Long.rotateRight(j2 + j3 + zzb4, 51);
        long j4 = zzb2 + j3 + zzb3;
        jArr[0] = j4 + zzb4;
        jArr[1] = j3 + Long.rotateRight(j4, 23) + rotateRight;
    }

    private static long zzb(byte[] bArr, int i) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }

    private static long zzc(long j, long j2) {
        long j3 = (j2 ^ j) * (-4132994306676758123L);
        long j4 = ((j3 ^ (j3 >>> 47)) ^ j) * (-4132994306676758123L);
        return (j4 ^ (j4 >>> 47)) * (-4132994306676758123L);
    }

    public static long zzn(byte[] bArr) {
        long j = -6505348102511208375L;
        long zza = bArr.length <= 32 ? zza(bArr, -1397348546323613475L) : bArr.length <= 64 ? zzo(bArr) : zzp(bArr);
        long zzb = bArr.length >= 8 ? zzb(bArr, 0) : -6505348102511208375L;
        if (bArr.length >= 9) {
            j = zzb(bArr, bArr.length - 8);
        }
        long zzc = zzc(zza + j, zzb);
        return (zzc == 0 || zzc == 1) ? zzc - 2 : zzc;
    }

    private static long zzo(byte[] bArr) {
        int length = bArr.length;
        long zzb = zzb(bArr, 24);
        long zzb2 = zzb(bArr, 0) + ((length + zzb(bArr, length - 16)) * (-6505348102511208375L));
        long rotateRight = Long.rotateRight(zzb2 + zzb, 52);
        long rotateRight2 = Long.rotateRight(zzb2, 37);
        long zzb3 = zzb2 + zzb(bArr, 8);
        long rotateRight3 = rotateRight2 + Long.rotateRight(zzb3, 7);
        long zzb4 = zzb3 + zzb(bArr, 16);
        long j = zzb + zzb4;
        long rotateRight4 = Long.rotateRight(zzb4, 31) + rotateRight + rotateRight3;
        long zzb5 = zzb(bArr, 16) + zzb(bArr, length - 32);
        long zzb6 = zzb(bArr, length - 8);
        long rotateRight5 = Long.rotateRight(zzb5 + zzb6, 52);
        long rotateRight6 = Long.rotateRight(zzb5, 37);
        long zzb7 = zzb5 + zzb(bArr, length - 24);
        long zzb8 = zzb(bArr, length - 16) + zzb7;
        long j2 = zzb8 + zzb6;
        return zzI((zzI(((Long.rotateRight(zzb8, 31) + rotateRight5 + rotateRight6 + Long.rotateRight(zzb7, 7) + j) * (-4288712594273399085L)) + ((j2 + rotateRight4) * (-6505348102511208375L))) * (-6505348102511208375L)) + rotateRight4) * (-4288712594273399085L);
    }

    private static long zzp(byte[] bArr) {
        int length = bArr.length;
        long zzb = zzb(bArr, 0);
        long zzb2 = zzb(bArr, length - 16) ^ (-8261664234251669945L);
        long zzb3 = zzb(bArr, length - 56) ^ (-6505348102511208375L);
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        zza(bArr, length - 64, length, zzb2, jArr);
        zza(bArr, length - 32, length * (-8261664234251669945L), -6505348102511208375L, jArr2);
        long zzI = zzb3 + (zzI(jArr[1]) * (-8261664234251669945L));
        long rotateRight = (-8261664234251669945L) * Long.rotateRight(zzI + zzb, 39);
        long rotateRight2 = Long.rotateRight(zzb2, 33) * (-8261664234251669945L);
        int i = (length - 1) & (-64);
        int i2 = 0;
        long j = rotateRight;
        while (true) {
            long rotateRight3 = (Long.rotateRight(((j + rotateRight2) + jArr[0]) + zzb(bArr, i2 + 16), 37) * (-8261664234251669945L)) ^ jArr2[1];
            rotateRight2 = (Long.rotateRight((jArr[1] + rotateRight2) + zzb(bArr, i2 + 48), 42) * (-8261664234251669945L)) ^ jArr[0];
            long rotateRight4 = Long.rotateRight(zzI ^ jArr2[0], 33);
            zza(bArr, i2, jArr[1] * (-8261664234251669945L), jArr2[0] + rotateRight3, jArr);
            zza(bArr, i2 + 32, rotateRight4 + jArr2[1], rotateRight2, jArr2);
            i2 += 64;
            i -= 64;
            if (i == 0) {
                return zzc(zzc(jArr[0], jArr2[0]) + (zzI(rotateRight2) * (-8261664234251669945L)) + rotateRight3, zzc(jArr[1], jArr2[1]) + rotateRight4);
            }
            zzI = rotateRight3;
            j = rotateRight4;
        }
    }
}
