package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.ResizeOptions;
import com.facebook.imagepipeline.image.EncodedImage;
/* loaded from: classes.dex */
public final class ThumbnailSizeChecker {
    public static final float ACCEPTABLE_REQUESTED_TO_ACTUAL_SIZE_RATIO = 1.3333334f;
    private static final int ROTATED_90_DEGREES_CLOCKWISE = 90;
    private static final int ROTATED_90_DEGREES_COUNTER_CLOCKWISE = 270;

    public static boolean isImageBigEnough(int i, int i2, ResizeOptions resizeOptions) {
        return resizeOptions == null ? ((float) getAcceptableSize(i)) >= 2048.0f && getAcceptableSize(i2) >= 2048 : getAcceptableSize(i) >= resizeOptions.width && getAcceptableSize(i2) >= resizeOptions.height;
    }

    public static boolean isImageBigEnough(EncodedImage encodedImage, ResizeOptions resizeOptions) {
        if (encodedImage == null) {
            return false;
        }
        switch (encodedImage.getRotationAngle()) {
            case 90:
            case 270:
                return isImageBigEnough(encodedImage.getHeight(), encodedImage.getWidth(), resizeOptions);
            default:
                return isImageBigEnough(encodedImage.getWidth(), encodedImage.getHeight(), resizeOptions);
        }
    }

    public static int getAcceptableSize(int i) {
        return (int) (i * 1.3333334f);
    }
}
