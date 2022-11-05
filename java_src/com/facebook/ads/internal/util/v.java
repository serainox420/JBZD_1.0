package com.facebook.ads.internal.util;

import android.graphics.Bitmap;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v implements k {

    /* renamed from: a  reason: collision with root package name */
    private static final short[] f2252a = {512, 512, 456, 512, 328, 456, 335, 512, 405, 328, 271, 456, 388, 335, 292, 512, 454, 405, 364, 328, 298, 271, 496, 456, 420, 388, 360, 335, 312, 292, 273, 512, 482, 454, 428, 405, 383, 364, 345, 328, 312, 298, 284, 271, 259, 496, 475, 456, 437, 420, 404, 388, 374, 360, 347, 335, 323, 312, 302, 292, 282, 273, 265, 512, 497, 482, 468, 454, 441, 428, 417, 405, 394, 383, 373, 364, 354, 345, 337, 328, 320, 312, 305, 298, 291, 284, 278, 271, 265, 259, 507, 496, 485, 475, 465, 456, 446, 437, 428, 420, 412, 404, 396, 388, 381, 374, 367, 360, 354, 347, 341, 335, 329, 323, 318, 312, 307, 302, 297, 292, 287, 282, 278, 273, 269, 265, 261, 512, 505, 497, 489, 482, 475, 468, 461, 454, 447, 441, 435, 428, 422, 417, 411, 405, 399, 394, 389, 383, 378, 373, 368, 364, 359, 354, 350, 345, 341, 337, 332, 328, 324, 320, 316, 312, 309, 305, 301, 298, 294, 291, 287, 284, 281, 278, 274, 271, 268, 265, 262, 259, 257, 507, 501, 496, 491, 485, 480, 475, 470, 465, 460, 456, 451, 446, 442, 437, 433, 428, 424, 420, 416, 412, 408, 404, 400, 396, 392, 388, 385, 381, 377, 374, 370, 367, 363, 360, 357, 354, 350, 347, 344, 341, 338, 335, 332, 329, 326, 323, 320, 318, 315, 312, 310, 307, 304, 302, 299, 297, 294, 292, 289, 287, 285, 282, 280, 278, 275, 273, 271, 269, 267, 265, 263, 261, 259};
    private static final byte[] b = {9, 11, 12, 13, 13, 14, 14, 15, 15, 15, 15, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24};

    /* loaded from: classes.dex */
    private static class a implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        private final int[] f2253a;
        private final int b;
        private final int c;
        private final int d;
        private final int e;
        private final int f;
        private final int g;

        public a(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
            this.f2253a = iArr;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            v.b(this.f2253a, this.b, this.c, this.d, this.e, this.f, this.g);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i - 1;
        int i8 = i2 - 1;
        int i9 = (i3 * 2) + 1;
        short s = f2252a[i3];
        byte b2 = b[i3];
        int[] iArr2 = new int[i9];
        if (i6 != 1) {
            if (i6 != 2) {
                return;
            }
            int i10 = ((i5 + 1) * i) / i4;
            for (int i11 = (i5 * i) / i4; i11 < i10; i11++) {
                long j = 0;
                long j2 = 0;
                long j3 = 0;
                long j4 = 0;
                long j5 = 0;
                long j6 = 0;
                long j7 = 0;
                for (int i12 = 0; i12 <= i3; i12++) {
                    iArr2[i12] = iArr[i11];
                    j7 += ((iArr[i11] >>> 16) & 255) * (i12 + 1);
                    j6 += ((iArr[i11] >>> 8) & 255) * (i12 + 1);
                    j5 += (iArr[i11] & 255) * (i12 + 1);
                    j4 += (iArr[i11] >>> 16) & 255;
                    j3 += (iArr[i11] >>> 8) & 255;
                    j2 += iArr[i11] & 255;
                }
                long j8 = 0;
                long j9 = 0;
                int i13 = i11;
                for (int i14 = 1; i14 <= i3; i14++) {
                    if (i14 <= i8) {
                        i13 += i;
                    }
                    iArr2[i14 + i3] = iArr[i13];
                    j7 += ((iArr[i13] >>> 16) & 255) * ((i3 + 1) - i14);
                    j6 += ((iArr[i13] >>> 8) & 255) * ((i3 + 1) - i14);
                    j5 += (iArr[i13] & 255) * ((i3 + 1) - i14);
                    j9 += (iArr[i13] >>> 16) & 255;
                    j8 += (iArr[i13] >>> 8) & 255;
                    j += iArr[i13] & 255;
                }
                int i15 = i3 > i8 ? i8 : i3;
                int i16 = (i15 * i) + i11;
                int i17 = i3;
                int i18 = 0;
                int i19 = i15;
                int i20 = i11;
                while (i18 < i2) {
                    iArr[i20] = (int) ((iArr[i20] & DrawableConstants.CtaButton.BACKGROUND_COLOR) | ((((s * j7) >>> b2) & 255) << 16) | ((((s * j6) >>> b2) & 255) << 8) | (((s * j5) >>> b2) & 255));
                    int i21 = i20 + i;
                    long j10 = j7 - j4;
                    long j11 = j6 - j3;
                    long j12 = j5 - j2;
                    int i22 = (i17 + i9) - i3;
                    if (i22 >= i9) {
                        i22 -= i9;
                    }
                    long j13 = j4 - ((iArr2[i22] >>> 16) & 255);
                    long j14 = j3 - ((iArr2[i22] >>> 8) & 255);
                    long j15 = j2 - (iArr2[i22] & 255);
                    if (i19 < i8) {
                        i16 += i;
                        i19++;
                    }
                    iArr2[i22] = iArr[i16];
                    long j16 = j9 + ((iArr[i16] >>> 16) & 255);
                    long j17 = j8 + ((iArr[i16] >>> 8) & 255);
                    long j18 = j + (iArr[i16] & 255);
                    j7 = j10 + j16;
                    j6 = j11 + j17;
                    j5 = j12 + j18;
                    int i23 = i17 + 1;
                    if (i23 >= i9) {
                        i23 = 0;
                    }
                    j4 = j13 + ((iArr2[i23] >>> 16) & 255);
                    j3 = j14 + ((iArr2[i23] >>> 8) & 255);
                    j2 = j15 + (iArr2[i23] & 255);
                    j9 = j16 - ((iArr2[i23] >>> 16) & 255);
                    j8 = j17 - ((iArr2[i23] >>> 8) & 255);
                    j = j18 - (iArr2[i23] & 255);
                    i18++;
                    i17 = i23;
                    i20 = i21;
                }
            }
            return;
        }
        int i24 = (i5 * i2) / i4;
        int i25 = ((i5 + 1) * i2) / i4;
        while (true) {
            int i26 = i24;
            if (i26 >= i25) {
                return;
            }
            long j19 = 0;
            int i27 = i * i26;
            long j20 = 0;
            long j21 = 0;
            long j22 = 0;
            long j23 = 0;
            long j24 = 0;
            long j25 = 0;
            for (int i28 = 0; i28 <= i3; i28++) {
                iArr2[i28] = iArr[i27];
                j24 += ((iArr[i27] >>> 16) & 255) * (i28 + 1);
                j23 += ((iArr[i27] >>> 8) & 255) * (i28 + 1);
                j22 += (iArr[i27] & 255) * (i28 + 1);
                j21 += (iArr[i27] >>> 16) & 255;
                j20 += (iArr[i27] >>> 8) & 255;
                j25 += iArr[i27] & 255;
            }
            long j26 = 0;
            long j27 = 0;
            for (int i29 = 1; i29 <= i3; i29++) {
                if (i29 <= i7) {
                    i27++;
                }
                iArr2[i29 + i3] = iArr[i27];
                j24 += ((iArr[i27] >>> 16) & 255) * ((i3 + 1) - i29);
                j23 += ((iArr[i27] >>> 8) & 255) * ((i3 + 1) - i29);
                j22 += (iArr[i27] & 255) * ((i3 + 1) - i29);
                j26 += (iArr[i27] >>> 16) & 255;
                j27 += (iArr[i27] >>> 8) & 255;
                j19 += iArr[i27] & 255;
            }
            int i30 = i3 > i7 ? i7 : i3;
            int i31 = i3;
            int i32 = 0;
            long j28 = j21;
            long j29 = j20;
            long j30 = j25;
            int i33 = i30 + (i26 * i);
            int i34 = i30;
            int i35 = i26 * i;
            long j31 = j24;
            long j32 = j23;
            long j33 = j22;
            long j34 = j26;
            long j35 = j27;
            long j36 = j19;
            long j37 = j28;
            while (i32 < i) {
                iArr[i35] = (int) ((iArr[i35] & DrawableConstants.CtaButton.BACKGROUND_COLOR) | ((((s * j31) >>> b2) & 255) << 16) | ((((s * j32) >>> b2) & 255) << 8) | (((s * j33) >>> b2) & 255));
                int i36 = i35 + 1;
                long j38 = j31 - j37;
                long j39 = j32 - j29;
                long j40 = j33 - j30;
                int i37 = (i31 + i9) - i3;
                if (i37 >= i9) {
                    i37 -= i9;
                }
                long j41 = j37 - ((iArr2[i37] >>> 16) & 255);
                long j42 = j29 - ((iArr2[i37] >>> 8) & 255);
                long j43 = j30 - (iArr2[i37] & 255);
                if (i34 < i7) {
                    i33++;
                    i34++;
                }
                iArr2[i37] = iArr[i33];
                long j44 = j34 + ((iArr[i33] >>> 16) & 255);
                long j45 = j35 + ((iArr[i33] >>> 8) & 255);
                long j46 = j36 + (iArr[i33] & 255);
                j31 = j38 + j44;
                j32 = j39 + j45;
                j33 = j40 + j46;
                int i38 = i31 + 1;
                if (i38 >= i9) {
                    i38 = 0;
                }
                j37 = j41 + ((iArr2[i38] >>> 16) & 255);
                j29 = j42 + ((iArr2[i38] >>> 8) & 255);
                j30 = j43 + (iArr2[i38] & 255);
                j34 = j44 - ((iArr2[i38] >>> 16) & 255);
                j35 = j45 - ((iArr2[i38] >>> 8) & 255);
                j36 = j46 - (iArr2[i38] & 255);
                i32++;
                i31 = i38;
                i35 = i36;
            }
            i24 = i26 + 1;
        }
    }

    @Override // com.facebook.ads.internal.util.k
    public Bitmap a(Bitmap bitmap, float f) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        try {
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            int i = ae.f2226a;
            ArrayList arrayList = new ArrayList(i);
            ArrayList arrayList2 = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(new a(iArr, width, height, (int) f, i, i2, 1));
                arrayList2.add(new a(iArr, width, height, (int) f, i, i2, 2));
            }
            try {
                ae.b.invokeAll(arrayList);
                try {
                    ae.b.invokeAll(arrayList2);
                    try {
                        return Bitmap.createBitmap(iArr, width, height, Bitmap.Config.ARGB_8888);
                    } catch (OutOfMemoryError e) {
                        return null;
                    }
                } catch (InterruptedException e2) {
                    return null;
                }
            } catch (InterruptedException e3) {
                return null;
            }
        } catch (OutOfMemoryError e4) {
            return null;
        }
    }
}
