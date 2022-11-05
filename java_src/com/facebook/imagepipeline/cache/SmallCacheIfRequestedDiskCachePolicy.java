package com.facebook.imagepipeline.cache;

import bolts.i;
import com.facebook.cache.common.CacheKey;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class SmallCacheIfRequestedDiskCachePolicy implements DiskCachePolicy {
    private final CacheKeyFactory mCacheKeyFactory;
    private final BufferedDiskCache mDefaultBufferedDiskCache;
    private final BufferedDiskCache mSmallImageBufferedDiskCache;

    public SmallCacheIfRequestedDiskCachePolicy(BufferedDiskCache bufferedDiskCache, BufferedDiskCache bufferedDiskCache2, CacheKeyFactory cacheKeyFactory) {
        this.mDefaultBufferedDiskCache = bufferedDiskCache;
        this.mSmallImageBufferedDiskCache = bufferedDiskCache2;
        this.mCacheKeyFactory = cacheKeyFactory;
    }

    @Override // com.facebook.imagepipeline.cache.DiskCachePolicy
    public i<EncodedImage> createAndStartCacheReadTask(ImageRequest imageRequest, Object obj, AtomicBoolean atomicBoolean) {
        CacheKey encodedCacheKey = this.mCacheKeyFactory.getEncodedCacheKey(imageRequest, obj);
        return imageRequest.getCacheChoice() == ImageRequest.CacheChoice.SMALL ? this.mSmallImageBufferedDiskCache.get(encodedCacheKey, atomicBoolean) : this.mDefaultBufferedDiskCache.get(encodedCacheKey, atomicBoolean);
    }

    @Override // com.facebook.imagepipeline.cache.DiskCachePolicy
    public void writeToCache(EncodedImage encodedImage, ImageRequest imageRequest, Object obj) {
        CacheKey encodedCacheKey = this.mCacheKeyFactory.getEncodedCacheKey(imageRequest, obj);
        if (getCacheChoiceForResult(imageRequest, encodedImage) == ImageRequest.CacheChoice.SMALL) {
            this.mSmallImageBufferedDiskCache.put(encodedCacheKey, encodedImage);
        } else {
            this.mDefaultBufferedDiskCache.put(encodedCacheKey, encodedImage);
        }
    }

    @Override // com.facebook.imagepipeline.cache.DiskCachePolicy
    public ImageRequest.CacheChoice getCacheChoiceForResult(ImageRequest imageRequest, EncodedImage encodedImage) {
        return imageRequest.getCacheChoice() == null ? ImageRequest.CacheChoice.DEFAULT : imageRequest.getCacheChoice();
    }
}
