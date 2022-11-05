package com.google.android.exoplayer2.util;

import android.util.Pair;
import com.google.android.gms.safetynet.SafetyNetStatusCodes;
import java.util.ArrayList;
/* compiled from: CodecSpecificDataUtil.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f3502a = {0, 0, 0, 1};
    private static final int[] b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, SafetyNetStatusCodes.SAFE_BROWSING_UNSUPPORTED_THREAT_TYPES, 11025, 8000, 7350};
    private static final int[] c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Pair<Integer, Integer> a(byte[] bArr) {
        int i;
        int i2;
        int c2;
        int i3;
        boolean z = true;
        k kVar = new k(bArr);
        int c3 = kVar.c(5);
        int c4 = kVar.c(4);
        if (c4 == 15) {
            i = kVar.c(24);
        } else {
            a.a(c4 < 13);
            i = b[c4];
        }
        int c5 = kVar.c(4);
        if (c3 == 5 || c3 == 29) {
            int c6 = kVar.c(4);
            if (c6 == 15) {
                i = kVar.c(24);
            } else {
                a.a(c6 < 13);
                i = b[c6];
            }
            if (kVar.c(5) == 22) {
                i2 = i;
                c2 = kVar.c(4);
                i3 = c[c2];
                if (i3 == -1) {
                    z = false;
                }
                a.a(z);
                return Pair.create(Integer.valueOf(i2), Integer.valueOf(i3));
            }
        }
        i2 = i;
        c2 = c5;
        i3 = c[c2];
        if (i3 == -1) {
        }
        a.a(z);
        return Pair.create(Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static byte[] a(int i, int i2) {
        int i3 = -1;
        for (int i4 = 0; i4 < b.length; i4++) {
            if (i == b[i4]) {
                i3 = i4;
            }
        }
        int i5 = -1;
        for (int i6 = 0; i6 < c.length; i6++) {
            if (i2 == c[i6]) {
                i5 = i6;
            }
        }
        if (i == -1 || i5 == -1) {
            throw new IllegalArgumentException("Invalid sample rate or number of channels: " + i + ", " + i2);
        }
        return a(2, i3, i5);
    }

    public static byte[] a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[f3502a.length + i2];
        System.arraycopy(f3502a, 0, bArr2, 0, f3502a.length);
        System.arraycopy(bArr, i, bArr2, f3502a.length, i2);
        return bArr2;
    }

    public static byte[][] b(byte[] bArr) {
        if (!b(bArr, 0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        do {
            arrayList.add(Integer.valueOf(i));
            i = a(bArr, i + f3502a.length);
        } while (i != -1);
        byte[][] bArr2 = new byte[arrayList.size()];
        int i2 = 0;
        while (i2 < arrayList.size()) {
            int intValue = ((Integer) arrayList.get(i2)).intValue();
            byte[] bArr3 = new byte[(i2 < arrayList.size() + (-1) ? ((Integer) arrayList.get(i2 + 1)).intValue() : bArr.length) - intValue];
            System.arraycopy(bArr, intValue, bArr3, 0, bArr3.length);
            bArr2[i2] = bArr3;
            i2++;
        }
        return bArr2;
    }

    private static int a(byte[] bArr, int i) {
        int length = bArr.length - f3502a.length;
        for (int i2 = i; i2 <= length; i2++) {
            if (b(bArr, i2)) {
                return i2;
            }
        }
        return -1;
    }

    private static boolean b(byte[] bArr, int i) {
        if (bArr.length - i <= f3502a.length) {
            return false;
        }
        for (int i2 = 0; i2 < f3502a.length; i2++) {
            if (bArr[i + i2] != f3502a[i2]) {
                return false;
            }
        }
        return true;
    }
}
