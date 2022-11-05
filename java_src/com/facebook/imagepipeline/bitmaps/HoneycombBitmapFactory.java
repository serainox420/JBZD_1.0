package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imageformat.DefaultImageFormats;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.platform.PlatformDecoder;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
@TargetApi(11)
/* loaded from: classes.dex */
public class HoneycombBitmapFactory extends PlatformBitmapFactory {
    private final EmptyJpegGenerator mJpegGenerator;
    private final PlatformDecoder mPurgeableDecoder;

    public HoneycombBitmapFactory(EmptyJpegGenerator emptyJpegGenerator, PlatformDecoder platformDecoder) {
        this.mJpegGenerator = emptyJpegGenerator;
        this.mPurgeableDecoder = platformDecoder;
    }

    @Override // com.facebook.imagepipeline.bitmaps.PlatformBitmapFactory
    @TargetApi(12)
    public CloseableReference<Bitmap> createBitmapInternal(int i, int i2, Bitmap.Config config) {
        CloseableReference<PooledByteBuffer> generate = this.mJpegGenerator.generate((short) i, (short) i2);
        try {
            EncodedImage encodedImage = new EncodedImage(generate);
            encodedImage.setImageFormat(DefaultImageFormats.JPEG);
            CloseableReference<Bitmap> decodeJPEGFromEncodedImage = this.mPurgeableDecoder.decodeJPEGFromEncodedImage(encodedImage, config, generate.get().size());
            decodeJPEGFromEncodedImage.get().setHasAlpha(true);
            decodeJPEGFromEncodedImage.get().eraseColor(0);
            EncodedImage.closeSafely(encodedImage);
            return decodeJPEGFromEncodedImage;
        } finally {
            generate.close();
        }
    }
}
