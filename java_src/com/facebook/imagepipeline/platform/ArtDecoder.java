package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.v4.f.j;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.streams.LimitedInputStream;
import com.facebook.common.streams.TailAppendingInputStream;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.memory.BitmapPool;
import com.facebook.imageutils.BitmapUtil;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
@TargetApi(21)
/* loaded from: classes.dex */
public class ArtDecoder implements PlatformDecoder {
    private static final int DECODE_BUFFER_SIZE = 16384;
    private static final byte[] EOI_TAIL = {-1, -39};
    private final BitmapPool mBitmapPool;
    @VisibleForTesting
    final j.c<ByteBuffer> mDecodeBuffers;

    public ArtDecoder(BitmapPool bitmapPool, int i, j.c cVar) {
        this.mBitmapPool = bitmapPool;
        this.mDecodeBuffers = cVar;
        for (int i2 = 0; i2 < i; i2++) {
            this.mDecodeBuffers.a(ByteBuffer.allocate(DECODE_BUFFER_SIZE));
        }
    }

    @Override // com.facebook.imagepipeline.platform.PlatformDecoder
    public CloseableReference<Bitmap> decodeFromEncodedImage(EncodedImage encodedImage, Bitmap.Config config) {
        BitmapFactory.Options decodeOptionsForStream = getDecodeOptionsForStream(encodedImage, config);
        boolean z = decodeOptionsForStream.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return decodeStaticImageFromStream(encodedImage.getInputStream(), decodeOptionsForStream);
        } catch (RuntimeException e) {
            if (z) {
                return decodeFromEncodedImage(encodedImage, Bitmap.Config.ARGB_8888);
            }
            throw e;
        }
    }

    @Override // com.facebook.imagepipeline.platform.PlatformDecoder
    public CloseableReference<Bitmap> decodeJPEGFromEncodedImage(EncodedImage encodedImage, Bitmap.Config config, int i) {
        boolean isCompleteAt = encodedImage.isCompleteAt(i);
        BitmapFactory.Options decodeOptionsForStream = getDecodeOptionsForStream(encodedImage, config);
        InputStream inputStream = encodedImage.getInputStream();
        Preconditions.checkNotNull(inputStream);
        InputStream limitedInputStream = encodedImage.getSize() > i ? new LimitedInputStream(inputStream, i) : inputStream;
        InputStream tailAppendingInputStream = !isCompleteAt ? new TailAppendingInputStream(limitedInputStream, EOI_TAIL) : limitedInputStream;
        boolean z = decodeOptionsForStream.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return decodeStaticImageFromStream(tailAppendingInputStream, decodeOptionsForStream);
        } catch (RuntimeException e) {
            if (z) {
                return decodeFromEncodedImage(encodedImage, Bitmap.Config.ARGB_8888);
            }
            throw e;
        }
    }

    protected CloseableReference<Bitmap> decodeStaticImageFromStream(InputStream inputStream, BitmapFactory.Options options) {
        Preconditions.checkNotNull(inputStream);
        Bitmap bitmap = this.mBitmapPool.get(BitmapUtil.getSizeInByteForBitmap(options.outWidth, options.outHeight, options.inPreferredConfig));
        if (bitmap == null) {
            throw new NullPointerException("BitmapPool.get returned null");
        }
        options.inBitmap = bitmap;
        ByteBuffer a2 = this.mDecodeBuffers.a();
        ByteBuffer allocate = a2 == null ? ByteBuffer.allocate(DECODE_BUFFER_SIZE) : a2;
        try {
            try {
                options.inTempStorage = allocate.array();
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                if (bitmap != decodeStream) {
                    this.mBitmapPool.release(bitmap);
                    decodeStream.recycle();
                    throw new IllegalStateException();
                }
                return CloseableReference.of(decodeStream, this.mBitmapPool);
            } catch (RuntimeException e) {
                this.mBitmapPool.release(bitmap);
                throw e;
            }
        } finally {
            this.mDecodeBuffers.a(allocate);
        }
    }

    private static BitmapFactory.Options getDecodeOptionsForStream(EncodedImage encodedImage, Bitmap.Config config) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = encodedImage.getSampleSize();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(encodedImage.getInputStream(), null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            throw new IllegalArgumentException();
        }
        options.inJustDecodeBounds = false;
        options.inDither = true;
        options.inPreferredConfig = config;
        options.inMutable = true;
        return options;
    }
}
