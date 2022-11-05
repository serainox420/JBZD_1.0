package com.facebook.imagepipeline.cache;

import bolts.h;
import bolts.i;
import com.facebook.cache.common.CacheKey;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class SplitCachesByImageSizeDiskCachePolicy implements DiskCachePolicy {
    private final CacheKeyFactory mCacheKeyFactory;
    private final BufferedDiskCache mDefaultBufferedDiskCache;
    private final int mForceSmallCacheThresholdBytes;
    private final BufferedDiskCache mSmallImageBufferedDiskCache;

    public SplitCachesByImageSizeDiskCachePolicy(BufferedDiskCache bufferedDiskCache, BufferedDiskCache bufferedDiskCache2, CacheKeyFactory cacheKeyFactory, int i) {
        this.mDefaultBufferedDiskCache = bufferedDiskCache;
        this.mSmallImageBufferedDiskCache = bufferedDiskCache2;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mForceSmallCacheThresholdBytes = i;
    }

    @Override // com.facebook.imagepipeline.cache.DiskCachePolicy
    public i<EncodedImage> createAndStartCacheReadTask(ImageRequest imageRequest, Object obj, final AtomicBoolean atomicBoolean) {
        BufferedDiskCache bufferedDiskCache;
        final BufferedDiskCache bufferedDiskCache2;
        final CacheKey encodedCacheKey = this.mCacheKeyFactory.getEncodedCacheKey(imageRequest, obj);
        boolean containsSync = this.mSmallImageBufferedDiskCache.containsSync(encodedCacheKey);
        boolean containsSync2 = this.mDefaultBufferedDiskCache.containsSync(encodedCacheKey);
        if (containsSync || !containsSync2) {
            bufferedDiskCache = this.mSmallImageBufferedDiskCache;
            bufferedDiskCache2 = this.mDefaultBufferedDiskCache;
        } else {
            bufferedDiskCache = this.mDefaultBufferedDiskCache;
            bufferedDiskCache2 = this.mSmallImageBufferedDiskCache;
        }
        return bufferedDiskCache.get(encodedCacheKey, atomicBoolean).b(new h<EncodedImage, i<EncodedImage>>() { // from class: com.facebook.imagepipeline.cache.SplitCachesByImageSizeDiskCachePolicy.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // bolts.h
            /* renamed from: then */
            public i<EncodedImage> mo109then(i<EncodedImage> iVar) throws Exception {
                if (!SplitCachesByImageSizeDiskCachePolicy.isTaskCancelled(iVar)) {
                    return (iVar.e() || iVar.f() == null) ? bufferedDiskCache2.get(encodedCacheKey, atomicBoolean) : iVar;
                }
                return iVar;
            }
        });
    }

    @Override // com.facebook.imagepipeline.cache.DiskCachePolicy
    public void writeToCache(EncodedImage encodedImage, ImageRequest imageRequest, Object obj) {
        CacheKey encodedCacheKey = this.mCacheKeyFactory.getEncodedCacheKey(imageRequest, obj);
        switch (getCacheChoiceForResult(imageRequest, encodedImage)) {
            case DEFAULT:
                this.mDefaultBufferedDiskCache.put(encodedCacheKey, encodedImage);
                return;
            case SMALL:
                this.mSmallImageBufferedDiskCache.put(encodedCacheKey, encodedImage);
                return;
            default:
                return;
        }
    }

    @Override // com.facebook.imagepipeline.cache.DiskCachePolicy
    public ImageRequest.CacheChoice getCacheChoiceForResult(ImageRequest imageRequest, EncodedImage encodedImage) {
        int size = encodedImage.getSize();
        return (size < 0 || size >= this.mForceSmallCacheThresholdBytes) ? ImageRequest.CacheChoice.DEFAULT : ImageRequest.CacheChoice.SMALL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isTaskCancelled(i<?> iVar) {
        return iVar.d() || (iVar.e() && (iVar.g() instanceof CancellationException));
    }
}
