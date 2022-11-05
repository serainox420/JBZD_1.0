package com.facebook.imagepipeline.cache;

import bolts.i;
import com.facebook.cache.common.CacheKey;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.MediaVariations;
/* loaded from: classes.dex */
public class NoOpMediaVariationsIndex implements MediaVariationsIndex {
    @Override // com.facebook.imagepipeline.cache.MediaVariationsIndex
    public i<MediaVariations> getCachedVariants(String str, MediaVariations.Builder builder) {
        return i.a((Object) null);
    }

    @Override // com.facebook.imagepipeline.cache.MediaVariationsIndex
    public void saveCachedVariant(String str, ImageRequest.CacheChoice cacheChoice, CacheKey cacheKey, EncodedImage encodedImage) {
    }
}
