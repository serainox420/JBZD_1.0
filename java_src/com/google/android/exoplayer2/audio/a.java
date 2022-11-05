package com.google.android.exoplayer2.audio;

import com.facebook.imagepipeline.memory.BitmapCounterProvider;
import com.facebook.imageutils.JfifUtil;
import com.flurry.android.Constants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.k;
import com.google.android.exoplayer2.util.l;
import java.nio.ByteBuffer;
/* compiled from: Ac3Util.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3157a = {1, 2, 3, 6};
    private static final int[] b = {48000, 44100, 32000};
    private static final int[] c = {24000, 22050, 16000};
    private static final int[] d = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, JfifUtil.MARKER_SOFn, 224, 256, 320, BitmapCounterProvider.MAX_BITMAP_COUNT, 448, 512, 576, 640};
    private static final int[] f = {69, 87, 104, 121, 139, 174, JfifUtil.MARKER_RST0, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static Format a(l lVar, String str, String str2, DrmInitData drmInitData) {
        int i = b[(lVar.f() & JfifUtil.MARKER_SOFn) >> 6];
        int f2 = lVar.f();
        int i2 = d[(f2 & 56) >> 3];
        if ((f2 & 4) != 0) {
            i2++;
        }
        return Format.a(str, "audio/ac3", null, -1, -1, i2, i, null, drmInitData, 0, str2);
    }

    public static Format b(l lVar, String str, String str2, DrmInitData drmInitData) {
        lVar.d(2);
        int i = b[(lVar.f() & JfifUtil.MARKER_SOFn) >> 6];
        int f2 = lVar.f();
        int i2 = d[(f2 & 14) >> 1];
        if ((f2 & 1) != 0) {
            i2++;
        }
        return Format.a(str, "audio/eac3", null, -1, -1, i2, i, null, drmInitData, 0, str2);
    }

    public static Format a(k kVar, String str, String str2, DrmInitData drmInitData) {
        int i = 1;
        kVar.b(32);
        int c2 = kVar.c(2);
        kVar.b(14);
        int c3 = kVar.c(3);
        if ((c3 & 1) != 0 && c3 != 1) {
            kVar.b(2);
        }
        if ((c3 & 4) != 0) {
            kVar.b(2);
        }
        if (c3 == 2) {
            kVar.b(2);
        }
        boolean c4 = kVar.c();
        int i2 = d[c3];
        if (!c4) {
            i = 0;
        }
        return Format.a(str, "audio/ac3", null, -1, -1, i2 + i, b[c2], null, drmInitData, 0, str2);
    }

    public static Format b(k kVar, String str, String str2, DrmInitData drmInitData) {
        int i;
        kVar.b(32);
        int c2 = kVar.c(2);
        if (c2 == 3) {
            i = c[kVar.c(2)];
        } else {
            kVar.b(2);
            i = b[c2];
        }
        return Format.a(str, "audio/eac3", null, -1, -1, d[kVar.c(3)] + (kVar.c() ? 1 : 0), i, null, drmInitData, 0, str2);
    }

    public static int a(byte[] bArr) {
        if (bArr.length < 5) {
            return -1;
        }
        return a((bArr[4] & 192) >> 6, bArr[4] & 63);
    }

    public static int b(byte[] bArr) {
        return (((bArr[2] & 7) << 8) + (bArr[3] & Constants.UNKNOWN) + 1) * 2;
    }

    public static int a() {
        return 1536;
    }

    public static int c(byte[] bArr) {
        return (((bArr[4] & 192) >> 6) == 3 ? 6 : f3157a[(bArr[4] & 48) >> 4]) * 256;
    }

    public static int a(ByteBuffer byteBuffer) {
        return (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) == 3 ? 6 : f3157a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4]) * 256;
    }

    private static int a(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0 || i >= b.length || i2 < 0 || i3 >= f.length) {
            return -1;
        }
        int i4 = b[i];
        if (i4 == 44100) {
            return (f[i3] + (i2 % 2)) * 2;
        }
        int i5 = e[i3];
        if (i4 == 32000) {
            return i5 * 6;
        }
        return i5 * 4;
    }
}
