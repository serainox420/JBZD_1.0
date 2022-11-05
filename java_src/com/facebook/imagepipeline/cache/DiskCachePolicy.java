package com.facebook.imagepipeline.cache;

import bolts.i;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public interface DiskCachePolicy {
    i<EncodedImage> createAndStartCacheReadTask(ImageRequest imageRequest, Object obj, AtomicBoolean atomicBoolean);

    ImageRequest.CacheChoice getCacheChoiceForResult(ImageRequest imageRequest, EncodedImage encodedImage);

    void writeToCache(EncodedImage encodedImage, ImageRequest imageRequest, Object obj);
}
