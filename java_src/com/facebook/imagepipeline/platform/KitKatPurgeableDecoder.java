package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.memory.FlexByteArrayPool;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
@TargetApi(19)
/* loaded from: classes.dex */
public class KitKatPurgeableDecoder extends DalvikPurgeableDecoder {
    private final FlexByteArrayPool mFlexByteArrayPool;

    @Override // com.facebook.imagepipeline.platform.DalvikPurgeableDecoder, com.facebook.imagepipeline.platform.PlatformDecoder
    public /* bridge */ /* synthetic */ CloseableReference decodeFromEncodedImage(EncodedImage encodedImage, Bitmap.Config config) {
        return super.decodeFromEncodedImage(encodedImage, config);
    }

    @Override // com.facebook.imagepipeline.platform.DalvikPurgeableDecoder, com.facebook.imagepipeline.platform.PlatformDecoder
    public /* bridge */ /* synthetic */ CloseableReference decodeJPEGFromEncodedImage(EncodedImage encodedImage, Bitmap.Config config, int i) {
        return super.decodeJPEGFromEncodedImage(encodedImage, config, i);
    }

    @Override // com.facebook.imagepipeline.platform.DalvikPurgeableDecoder
    public /* bridge */ /* synthetic */ CloseableReference pinBitmap(Bitmap bitmap) {
        return super.pinBitmap(bitmap);
    }

    public KitKatPurgeableDecoder(FlexByteArrayPool flexByteArrayPool) {
        this.mFlexByteArrayPool = flexByteArrayPool;
    }

    @Override // com.facebook.imagepipeline.platform.DalvikPurgeableDecoder
    protected Bitmap decodeByteArrayAsPurgeable(CloseableReference<PooledByteBuffer> closeableReference, BitmapFactory.Options options) {
        PooledByteBuffer pooledByteBuffer = closeableReference.get();
        int size = pooledByteBuffer.size();
        CloseableReference<byte[]> closeableReference2 = this.mFlexByteArrayPool.get(size);
        try {
            byte[] bArr = closeableReference2.get();
            pooledByteBuffer.read(0, bArr, 0, size);
            return (Bitmap) Preconditions.checkNotNull(BitmapFactory.decodeByteArray(bArr, 0, size, options), "BitmapFactory returned null");
        } finally {
            CloseableReference.closeSafely((CloseableReference<?>) closeableReference2);
        }
    }

    @Override // com.facebook.imagepipeline.platform.DalvikPurgeableDecoder
    protected Bitmap decodeJPEGByteArrayAsPurgeable(CloseableReference<PooledByteBuffer> closeableReference, int i, BitmapFactory.Options options) {
        boolean z = false;
        byte[] bArr = endsWithEOI(closeableReference, i) ? null : EOI;
        PooledByteBuffer pooledByteBuffer = closeableReference.get();
        if (i <= pooledByteBuffer.size()) {
            z = true;
        }
        Preconditions.checkArgument(z);
        CloseableReference<byte[]> closeableReference2 = this.mFlexByteArrayPool.get(i + 2);
        try {
            byte[] bArr2 = closeableReference2.get();
            pooledByteBuffer.read(0, bArr2, 0, i);
            if (bArr != null) {
                putEOI(bArr2, i);
                i += 2;
            }
            return (Bitmap) Preconditions.checkNotNull(BitmapFactory.decodeByteArray(bArr2, 0, i, options), "BitmapFactory returned null");
        } finally {
            CloseableReference.closeSafely((CloseableReference<?>) closeableReference2);
        }
    }

    private static void putEOI(byte[] bArr, int i) {
        bArr[i] = -1;
        bArr[i + 1] = -39;
    }
}
