package com.mopub.common.util;

import android.graphics.Bitmap;
import android.os.Build;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class ImageUtils {
    public static Bitmap applyFastGaussianBlurToBitmap(Bitmap bitmap, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        for (int i2 = i; i2 >= 1; i2 /= 2) {
            for (int i3 = i2; i3 < height - i2; i3++) {
                for (int i4 = i2; i4 < width - i2; i4++) {
                    int i5 = iArr[(((i3 - i2) * width) + i4) - i2];
                    int i6 = iArr[((i3 - i2) * width) + i4 + i2];
                    int i7 = iArr[((i3 - i2) * width) + i4];
                    int i8 = iArr[(((i3 + i2) * width) + i4) - i2];
                    int i9 = iArr[((i3 + i2) * width) + i4 + i2];
                    int i10 = iArr[((i3 + i2) * width) + i4];
                    int i11 = iArr[((i3 * width) + i4) - i2];
                    int i12 = iArr[(i3 * width) + i4 + i2];
                    iArr[(i3 * width) + i4] = ((((((((((i5 & 16711680) + (i6 & 16711680)) + (16711680 & i7)) + (16711680 & i8)) + (16711680 & i9)) + (16711680 & i10)) + (16711680 & i11)) + (16711680 & i12)) >> 3) & 16711680) | (-16777216) | ((((((((((i5 & 255) + (i6 & 255)) + (i7 & 255)) + (i8 & 255)) + (i9 & 255)) + (i10 & 255)) + (i11 & 255)) + (i12 & 255)) >> 3) & 255) | ((((((((((65280 & i5) + (65280 & i6)) + (65280 & i7)) + (65280 & i8)) + (65280 & i9)) + (65280 & i10)) + (65280 & i11)) + (65280 & i12)) >> 3) & 65280);
                }
            }
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmap;
    }

    public static void setImageViewAlpha(ImageView imageView, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            imageView.setImageAlpha(i);
        } else {
            imageView.setAlpha(i);
        }
    }
}
