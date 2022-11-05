package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.CacheKeyFactory;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.QualityInfo;
import com.facebook.imagepipeline.request.ImageRequest;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Map;
/* loaded from: classes.dex */
public class BitmapMemoryCacheProducer implements Producer<CloseableReference<CloseableImage>> {
    public static final String EXTRA_CACHED_VALUE_FOUND = "cached_value_found";
    public static final String PRODUCER_NAME = "BitmapMemoryCacheProducer";
    private final CacheKeyFactory mCacheKeyFactory;
    private final Producer<CloseableReference<CloseableImage>> mInputProducer;
    private final MemoryCache<CacheKey, CloseableImage> mMemoryCache;

    public BitmapMemoryCacheProducer(MemoryCache<CacheKey, CloseableImage> memoryCache, CacheKeyFactory cacheKeyFactory, Producer<CloseableReference<CloseableImage>> producer) {
        this.mMemoryCache = memoryCache;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mInputProducer = producer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<CloseableReference<CloseableImage>> consumer, ProducerContext producerContext) {
        Map<String, String> map = null;
        ProducerListener listener = producerContext.getListener();
        String id = producerContext.getId();
        listener.onProducerStart(id, getProducerName());
        CacheKey bitmapCacheKey = this.mCacheKeyFactory.getBitmapCacheKey(producerContext.getImageRequest(), producerContext.getCallerContext());
        CloseableReference<CloseableImage> closeableReference = this.mMemoryCache.get(bitmapCacheKey);
        if (closeableReference != null) {
            boolean isOfFullQuality = closeableReference.get().getQualityInfo().isOfFullQuality();
            if (isOfFullQuality) {
                listener.onProducerFinishWithSuccess(id, getProducerName(), listener.requiresExtraMap(id) ? ImmutableMap.of("cached_value_found", "true") : null);
                consumer.onProgressUpdate(1.0f);
            }
            consumer.onNewResult(closeableReference, isOfFullQuality);
            closeableReference.close();
            if (isOfFullQuality) {
                return;
            }
        }
        if (producerContext.getLowestPermittedRequestLevel().getValue() >= ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE.getValue()) {
            listener.onProducerFinishWithSuccess(id, getProducerName(), listener.requiresExtraMap(id) ? ImmutableMap.of("cached_value_found", Consts.False) : null);
            consumer.onNewResult(null, true);
            return;
        }
        Consumer<CloseableReference<CloseableImage>> wrapConsumer = wrapConsumer(consumer, bitmapCacheKey);
        String producerName = getProducerName();
        if (listener.requiresExtraMap(id)) {
            map = ImmutableMap.of("cached_value_found", Consts.False);
        }
        listener.onProducerFinishWithSuccess(id, producerName, map);
        this.mInputProducer.produceResults(wrapConsumer, producerContext);
    }

    protected Consumer<CloseableReference<CloseableImage>> wrapConsumer(Consumer<CloseableReference<CloseableImage>> consumer, final CacheKey cacheKey) {
        return new DelegatingConsumer<CloseableReference<CloseableImage>, CloseableReference<CloseableImage>>(consumer) { // from class: com.facebook.imagepipeline.producers.BitmapMemoryCacheProducer.1
            @Override // com.facebook.imagepipeline.producers.BaseConsumer
            public void onNewResultImpl(CloseableReference<CloseableImage> closeableReference, boolean z) {
                CloseableReference<CloseableImage> closeableReference2;
                if (closeableReference == null) {
                    if (z) {
                        getConsumer().onNewResult(null, true);
                    }
                } else if (closeableReference.get().isStateful()) {
                    getConsumer().onNewResult(closeableReference, z);
                } else {
                    if (!z && (closeableReference2 = BitmapMemoryCacheProducer.this.mMemoryCache.get(cacheKey)) != null) {
                        try {
                            QualityInfo qualityInfo = closeableReference.get().getQualityInfo();
                            QualityInfo qualityInfo2 = closeableReference2.get().getQualityInfo();
                            if (qualityInfo2.isOfFullQuality() || qualityInfo2.getQuality() >= qualityInfo.getQuality()) {
                                getConsumer().onNewResult(closeableReference2, false);
                                return;
                            }
                        } finally {
                            CloseableReference.closeSafely(closeableReference2);
                        }
                    }
                    CloseableReference<CloseableImage> cache = BitmapMemoryCacheProducer.this.mMemoryCache.cache(cacheKey, closeableReference);
                    if (z) {
                        try {
                            getConsumer().onProgressUpdate(1.0f);
                        } finally {
                            CloseableReference.closeSafely(cache);
                        }
                    }
                    Consumer<CloseableReference<CloseableImage>> consumer2 = getConsumer();
                    if (cache != null) {
                        closeableReference = cache;
                    }
                    consumer2.onNewResult(closeableReference, z);
                }
            }
        };
    }

    protected String getProducerName() {
        return PRODUCER_NAME;
    }
}
