package com.google.android.exoplayer2.extractor;

import com.facebook.imagepipeline.memory.BitmapCounterProvider;
import com.facebook.imageutils.JfifUtil;
import com.google.android.gms.safetynet.SafetyNetStatusCodes;
/* compiled from: MpegAudioHeader.java */
/* loaded from: classes2.dex */
public final class k {
    private static final String[] h = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};
    private static final int[] i = {44100, 48000, 32000};
    private static final int[] j = {32, 64, 96, 128, 160, JfifUtil.MARKER_SOFn, 224, 256, 288, 320, 352, BitmapCounterProvider.MAX_BITMAP_COUNT, 416, 448};
    private static final int[] k = {32, 48, 56, 64, 80, 96, 112, 128, 144, 160, 176, JfifUtil.MARKER_SOFn, 224, 256};
    private static final int[] l = {32, 48, 56, 64, 80, 96, 112, 128, 160, JfifUtil.MARKER_SOFn, 224, 256, 320, BitmapCounterProvider.MAX_BITMAP_COUNT};
    private static final int[] m = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, JfifUtil.MARKER_SOFn, 224, 256, 320};
    private static final int[] n = {8, 16, 24, 32, 40, 48, 56, 64, 80, 96, 112, 128, 144, 160};

    /* renamed from: a  reason: collision with root package name */
    public int f3289a;
    public String b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;

    public static int a(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
            return -1;
        }
        int i9 = i[i6];
        if (i3 == 2) {
            i7 = i9 / 2;
        } else {
            i7 = i3 == 0 ? i9 / 4 : i9;
        }
        int i10 = (i2 >>> 9) & 1;
        if (i4 == 3) {
            return ((((i3 == 3 ? j[i5 - 1] : k[i5 - 1]) * SafetyNetStatusCodes.SAFE_BROWSING_UNSUPPORTED_THREAT_TYPES) / i7) + i10) * 4;
        }
        if (i3 == 3) {
            i8 = i4 == 2 ? l[i5 - 1] : m[i5 - 1];
        } else {
            i8 = n[i5 - 1];
        }
        if (i3 == 3) {
            return ((144000 * i8) / i7) + i10;
        }
        return (((i4 == 1 ? 72000 : 144000) * i8) / i7) + i10;
    }

    public static boolean a(int i2, k kVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = 2;
        if ((i2 & (-2097152)) == -2097152 && (i3 = (i2 >>> 19) & 3) != 1 && (i4 = (i2 >>> 17) & 3) != 0) {
            int i9 = (i2 >>> 12) & 15;
            if (i9 == 0 || i9 == 15) {
                return false;
            }
            int i10 = (i2 >>> 10) & 3;
            if (i10 == 3) {
                return false;
            }
            int i11 = i[i10];
            if (i3 == 2) {
                i11 /= 2;
            } else if (i3 == 0) {
                i11 /= 4;
            }
            int i12 = (i2 >>> 9) & 1;
            if (i4 == 3) {
                i7 = i3 == 3 ? j[i9 - 1] : k[i9 - 1];
                i6 = (((i7 * SafetyNetStatusCodes.SAFE_BROWSING_UNSUPPORTED_THREAT_TYPES) / i11) + i12) * 4;
                i5 = BitmapCounterProvider.MAX_BITMAP_COUNT;
            } else if (i3 == 3) {
                i7 = i4 == 2 ? l[i9 - 1] : m[i9 - 1];
                i5 = 1152;
                i6 = i12 + ((144000 * i7) / i11);
            } else {
                int i13 = n[i9 - 1];
                i5 = i4 == 1 ? 576 : 1152;
                i6 = i12 + (((i4 == 1 ? 72000 : 144000) * i13) / i11);
                i7 = i13;
            }
            String str = h[3 - i4];
            if (((i2 >> 6) & 3) == 3) {
                i8 = 1;
            }
            kVar.a(i3, str, i6, i11, i8, i7 * 1000, i5);
            return true;
        }
        return false;
    }

    private void a(int i2, String str, int i3, int i4, int i5, int i6, int i7) {
        this.f3289a = i2;
        this.b = str;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
        this.g = i7;
    }
}
