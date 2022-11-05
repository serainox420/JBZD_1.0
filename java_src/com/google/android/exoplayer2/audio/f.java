package com.google.android.exoplayer2.audio;

import com.facebook.imagepipeline.memory.BitmapCounterProvider;
import com.facebook.imageutils.JfifUtil;
import com.flurry.android.Constants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.k;
import com.google.android.gms.safetynet.SafetyNetStatusCodes;
import com.google.android.gms.vision.barcode.Barcode;
import java.nio.ByteBuffer;
/* compiled from: DtsUtil.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3168a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, SafetyNetStatusCodes.SAFE_BROWSING_UNSUPPORTED_THREAT_TYPES, 24000, 48000, -1, -1};
    private static final int[] c = {64, 112, 128, JfifUtil.MARKER_SOFn, 224, 256, BitmapCounterProvider.MAX_BITMAP_COUNT, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, Barcode.PDF417, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    public static Format a(byte[] bArr, String str, String str2, DrmInitData drmInitData) {
        k kVar = new k(bArr);
        kVar.b(60);
        int i = f3168a[kVar.c(6)];
        int i2 = b[kVar.c(4)];
        int c2 = kVar.c(5);
        int i3 = c2 >= c.length ? -1 : (c[c2] * 1000) / 2;
        kVar.b(10);
        return Format.a(str, "audio/vnd.dts", null, i3, -1, i + (kVar.c(2) > 0 ? 1 : 0), i2, null, drmInitData, 0, str2);
    }

    public static int a(byte[] bArr) {
        return ((((bArr[4] & 1) << 6) | ((bArr[5] & 252) >> 2)) + 1) * 32;
    }

    public static int a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        return ((((byteBuffer.get(position + 5) & 252) >> 2) | ((byteBuffer.get(position + 4) & 1) << 6)) + 1) * 32;
    }

    public static int b(byte[] bArr) {
        return (((bArr[5] & 2) << 12) | ((bArr[6] & Constants.UNKNOWN) << 4) | ((bArr[7] & 240) >> 4)) + 1;
    }
}
