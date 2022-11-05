package com.facebook.imagepipeline.image;

import android.graphics.Bitmap;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.references.ResourceReleaser;
import com.facebook.imageutils.BitmapUtil;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class CloseableStaticBitmap extends CloseableBitmap {
    private volatile Bitmap mBitmap;
    @GuardedBy("this")
    private CloseableReference<Bitmap> mBitmapReference;
    private final QualityInfo mQualityInfo;
    private final int mRotationAngle;

    public CloseableStaticBitmap(Bitmap bitmap, ResourceReleaser<Bitmap> resourceReleaser, QualityInfo qualityInfo, int i) {
        this.mBitmap = (Bitmap) Preconditions.checkNotNull(bitmap);
        this.mBitmapReference = CloseableReference.of(this.mBitmap, (ResourceReleaser) Preconditions.checkNotNull(resourceReleaser));
        this.mQualityInfo = qualityInfo;
        this.mRotationAngle = i;
    }

    public CloseableStaticBitmap(CloseableReference<Bitmap> closeableReference, QualityInfo qualityInfo, int i) {
        this.mBitmapReference = (CloseableReference) Preconditions.checkNotNull(closeableReference.cloneOrNull());
        this.mBitmap = this.mBitmapReference.get();
        this.mQualityInfo = qualityInfo;
        this.mRotationAngle = i;
    }

    @Override // com.facebook.imagepipeline.image.CloseableImage, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseableReference<Bitmap> detachBitmapReference = detachBitmapReference();
        if (detachBitmapReference != null) {
            detachBitmapReference.close();
        }
    }

    private synchronized CloseableReference<Bitmap> detachBitmapReference() {
        CloseableReference<Bitmap> closeableReference;
        closeableReference = this.mBitmapReference;
        this.mBitmapReference = null;
        this.mBitmap = null;
        return closeableReference;
    }

    public synchronized CloseableReference<Bitmap> convertToBitmapReference() {
        Preconditions.checkNotNull(this.mBitmapReference, "Cannot convert a closed static bitmap");
        return detachBitmapReference();
    }

    @Override // com.facebook.imagepipeline.image.CloseableImage
    public synchronized boolean isClosed() {
        return this.mBitmapReference == null;
    }

    @Override // com.facebook.imagepipeline.image.CloseableBitmap
    public Bitmap getUnderlyingBitmap() {
        return this.mBitmap;
    }

    @Override // com.facebook.imagepipeline.image.CloseableImage
    public int getSizeInBytes() {
        return BitmapUtil.getSizeInBytes(this.mBitmap);
    }

    @Override // com.facebook.imagepipeline.image.ImageInfo
    public int getWidth() {
        return (this.mRotationAngle == 90 || this.mRotationAngle == 270) ? getBitmapHeight(this.mBitmap) : getBitmapWidth(this.mBitmap);
    }

    @Override // com.facebook.imagepipeline.image.ImageInfo
    public int getHeight() {
        return (this.mRotationAngle == 90 || this.mRotationAngle == 270) ? getBitmapWidth(this.mBitmap) : getBitmapHeight(this.mBitmap);
    }

    private static int getBitmapWidth(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getWidth();
    }

    private static int getBitmapHeight(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getHeight();
    }

    public int getRotationAngle() {
        return this.mRotationAngle;
    }

    @Override // com.facebook.imagepipeline.image.CloseableImage, com.facebook.imagepipeline.image.ImageInfo
    public QualityInfo getQualityInfo() {
        return this.mQualityInfo;
    }
}
