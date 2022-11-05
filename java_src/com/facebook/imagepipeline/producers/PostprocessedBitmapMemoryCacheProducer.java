package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.CacheKeyFactory;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.Postprocessor;
import com.facebook.imagepipeline.request.RepeatedPostprocessor;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Map;
/* loaded from: classes.dex */
public class PostprocessedBitmapMemoryCacheProducer implements Producer<CloseableReference<CloseableImage>> {
    public static final String PRODUCER_NAME = "PostprocessedBitmapMemoryCacheProducer";
    @VisibleForTesting
    static final String VALUE_FOUND = "cached_value_found";
    private final CacheKeyFactory mCacheKeyFactory;
    private final Producer<CloseableReference<CloseableImage>> mInputProducer;
    private final MemoryCache<CacheKey, CloseableImage> mMemoryCache;

    public PostprocessedBitmapMemoryCacheProducer(MemoryCache<CacheKey, CloseableImage> memoryCache, CacheKeyFactory cacheKeyFactory, Producer<CloseableReference<CloseableImage>> producer) {
        this.mMemoryCache = memoryCache;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mInputProducer = producer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<CloseableReference<CloseableImage>> consumer, ProducerContext producerContext) {
        Map<String, String> map = null;
        ProducerListener listener = producerContext.getListener();
        String id = producerContext.getId();
        ImageRequest imageRequest = producerContext.getImageRequest();
        Object callerContext = producerContext.getCallerContext();
        Postprocessor postprocessor = imageRequest.getPostprocessor();
        if (postprocessor == null || postprocessor.getPostprocessorCacheKey() == null) {
            this.mInputProducer.produceResults(consumer, producerContext);
            return;
        }
        listener.onProducerStart(id, getProducerName());
        CacheKey postprocessedBitmapCacheKey = this.mCacheKeyFactory.getPostprocessedBitmapCacheKey(imageRequest, callerContext);
        CloseableReference<CloseableImage> closeableReference = this.mMemoryCache.get(postprocessedBitmapCacheKey);
        if (closeableReference != null) {
            String producerName = getProducerName();
            if (listener.requiresExtraMap(id)) {
                map = ImmutableMap.of("cached_value_found", "true");
            }
            listener.onProducerFinishWithSuccess(id, producerName, map);
            consumer.onProgressUpdate(1.0f);
            consumer.onNewResult(closeableReference, true);
            closeableReference.close();
            return;
        }
        CachedPostprocessorConsumer cachedPostprocessorConsumer = new CachedPostprocessorConsumer(consumer, postprocessedBitmapCacheKey, postprocessor instanceof RepeatedPostprocessor, this.mMemoryCache);
        String producerName2 = getProducerName();
        if (listener.requiresExtraMap(id)) {
            map = ImmutableMap.of("cached_value_found", Consts.False);
        }
        listener.onProducerFinishWithSuccess(id, producerName2, map);
        this.mInputProducer.produceResults(cachedPostprocessorConsumer, producerContext);
    }

    /* loaded from: classes.dex */
    public static class CachedPostprocessorConsumer extends DelegatingConsumer<CloseableReference<CloseableImage>, CloseableReference<CloseableImage>> {
        private final CacheKey mCacheKey;
        private final boolean mIsRepeatedProcessor;
        private final MemoryCache<CacheKey, CloseableImage> mMemoryCache;

        public CachedPostprocessorConsumer(Consumer<CloseableReference<CloseableImage>> consumer, CacheKey cacheKey, boolean z, MemoryCache<CacheKey, CloseableImage> memoryCache) {
            super(consumer);
            this.mCacheKey = cacheKey;
            this.mIsRepeatedProcessor = z;
            this.mMemoryCache = memoryCache;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        public void onNewResultImpl(CloseableReference<CloseableImage> closeableReference, boolean z) {
            if (closeableReference == null) {
                if (z) {
                    getConsumer().onNewResult(null, true);
                }
            } else if (z || this.mIsRepeatedProcessor) {
                CloseableReference<CloseableImage> cache = this.mMemoryCache.cache(this.mCacheKey, closeableReference);
                try {
                    getConsumer().onProgressUpdate(1.0f);
                    Consumer<CloseableReference<CloseableImage>> consumer = getConsumer();
                    if (cache != null) {
                        closeableReference = cache;
                    }
                    consumer.onNewResult(closeableReference, z);
                } finally {
                    CloseableReference.closeSafely(cache);
                }
            }
        }
    }

    protected String getProducerName() {
        return PRODUCER_NAME;
    }
}
