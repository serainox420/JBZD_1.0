package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.CacheKeyFactory;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Map;
/* loaded from: classes.dex */
public class EncodedMemoryCacheProducer implements Producer<EncodedImage> {
    public static final String EXTRA_CACHED_VALUE_FOUND = "cached_value_found";
    public static final String PRODUCER_NAME = "EncodedMemoryCacheProducer";
    private final CacheKeyFactory mCacheKeyFactory;
    private final Producer<EncodedImage> mInputProducer;
    private final MemoryCache<CacheKey, PooledByteBuffer> mMemoryCache;

    public EncodedMemoryCacheProducer(MemoryCache<CacheKey, PooledByteBuffer> memoryCache, CacheKeyFactory cacheKeyFactory, Producer<EncodedImage> producer) {
        this.mMemoryCache = memoryCache;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mInputProducer = producer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        Map<String, String> map = null;
        String id = producerContext.getId();
        ProducerListener listener = producerContext.getListener();
        listener.onProducerStart(id, PRODUCER_NAME);
        CacheKey encodedCacheKey = this.mCacheKeyFactory.getEncodedCacheKey(producerContext.getImageRequest(), producerContext.getCallerContext());
        CloseableReference<PooledByteBuffer> closeableReference = this.mMemoryCache.get(encodedCacheKey);
        try {
            if (closeableReference != null) {
                EncodedImage encodedImage = new EncodedImage(closeableReference);
                encodedImage.setEncodedCacheKey(encodedCacheKey);
                if (listener.requiresExtraMap(id)) {
                    map = ImmutableMap.of("cached_value_found", "true");
                }
                listener.onProducerFinishWithSuccess(id, PRODUCER_NAME, map);
                consumer.onProgressUpdate(1.0f);
                consumer.onNewResult(encodedImage, true);
                EncodedImage.closeSafely(encodedImage);
            } else if (producerContext.getLowestPermittedRequestLevel().getValue() >= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue()) {
                if (listener.requiresExtraMap(id)) {
                    map = ImmutableMap.of("cached_value_found", Consts.False);
                }
                listener.onProducerFinishWithSuccess(id, PRODUCER_NAME, map);
                consumer.onNewResult(null, true);
            } else {
                EncodedMemoryCacheConsumer encodedMemoryCacheConsumer = new EncodedMemoryCacheConsumer(consumer, this.mMemoryCache, encodedCacheKey);
                if (listener.requiresExtraMap(id)) {
                    map = ImmutableMap.of("cached_value_found", Consts.False);
                }
                listener.onProducerFinishWithSuccess(id, PRODUCER_NAME, map);
                this.mInputProducer.produceResults(encodedMemoryCacheConsumer, producerContext);
            }
        } finally {
            CloseableReference.closeSafely(closeableReference);
        }
    }

    /* loaded from: classes.dex */
    private static class EncodedMemoryCacheConsumer extends DelegatingConsumer<EncodedImage, EncodedImage> {
        private final MemoryCache<CacheKey, PooledByteBuffer> mMemoryCache;
        private final CacheKey mRequestedCacheKey;

        public EncodedMemoryCacheConsumer(Consumer<EncodedImage> consumer, MemoryCache<CacheKey, PooledByteBuffer> memoryCache, CacheKey cacheKey) {
            super(consumer);
            this.mMemoryCache = memoryCache;
            this.mRequestedCacheKey = cacheKey;
        }

        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        public void onNewResultImpl(EncodedImage encodedImage, boolean z) {
            if (!z || encodedImage == null) {
                getConsumer().onNewResult(encodedImage, z);
                return;
            }
            CloseableReference<PooledByteBuffer> byteBufferRef = encodedImage.getByteBufferRef();
            if (byteBufferRef != null) {
                try {
                    CloseableReference<PooledByteBuffer> cache = this.mMemoryCache.cache(encodedImage.getEncodedCacheKey() != null ? encodedImage.getEncodedCacheKey() : this.mRequestedCacheKey, byteBufferRef);
                    if (cache != null) {
                        try {
                            EncodedImage encodedImage2 = new EncodedImage(cache);
                            encodedImage2.copyMetaDataFrom(encodedImage);
                            try {
                                getConsumer().onProgressUpdate(1.0f);
                                getConsumer().onNewResult(encodedImage2, true);
                                return;
                            } finally {
                                EncodedImage.closeSafely(encodedImage2);
                            }
                        } finally {
                            CloseableReference.closeSafely(cache);
                        }
                    }
                } finally {
                    CloseableReference.closeSafely(byteBufferRef);
                }
            }
            getConsumer().onNewResult(encodedImage, true);
        }
    }
}
