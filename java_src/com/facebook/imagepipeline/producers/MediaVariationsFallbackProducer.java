package com.facebook.imagepipeline.producers;

import bolts.h;
import bolts.i;
import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.cache.BufferedDiskCache;
import com.facebook.imagepipeline.cache.CacheKeyFactory;
import com.facebook.imagepipeline.cache.DiskCachePolicy;
import com.facebook.imagepipeline.cache.MediaIdExtractor;
import com.facebook.imagepipeline.cache.MediaVariationsIndex;
import com.facebook.imagepipeline.common.ResizeOptions;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.MediaVariations;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class MediaVariationsFallbackProducer implements Producer<EncodedImage> {
    public static final String EXTRA_CACHED_VALUE_FOUND = "cached_value_found";
    public static final String EXTRA_CACHED_VALUE_USED_AS_LAST = "cached_value_used_as_last";
    public static final String EXTRA_VARIANTS_COUNT = "variants_count";
    public static final String EXTRA_VARIANTS_SOURCE = "variants_source";
    public static final String PRODUCER_NAME = "MediaVariationsFallbackProducer";
    private final CacheKeyFactory mCacheKeyFactory;
    private final BufferedDiskCache mDefaultBufferedDiskCache;
    private final DiskCachePolicy mDiskCachePolicy;
    private final Producer<EncodedImage> mInputProducer;
    @Nullable
    private MediaIdExtractor mMediaIdExtractor;
    private final MediaVariationsIndex mMediaVariationsIndex;
    private final BufferedDiskCache mSmallImageBufferedDiskCache;

    public MediaVariationsFallbackProducer(BufferedDiskCache bufferedDiskCache, BufferedDiskCache bufferedDiskCache2, CacheKeyFactory cacheKeyFactory, MediaVariationsIndex mediaVariationsIndex, @Nullable MediaIdExtractor mediaIdExtractor, DiskCachePolicy diskCachePolicy, Producer<EncodedImage> producer) {
        this.mDefaultBufferedDiskCache = bufferedDiskCache;
        this.mSmallImageBufferedDiskCache = bufferedDiskCache2;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mMediaVariationsIndex = mediaVariationsIndex;
        this.mMediaIdExtractor = mediaIdExtractor;
        this.mDiskCachePolicy = diskCachePolicy;
        this.mInputProducer = producer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(final Consumer<EncodedImage> consumer, final ProducerContext producerContext) {
        final String mediaId;
        String str;
        final ImageRequest imageRequest = producerContext.getImageRequest();
        final ResizeOptions resizeOptions = imageRequest.getResizeOptions();
        MediaVariations mediaVariations = imageRequest.getMediaVariations();
        if (!imageRequest.isDiskCacheEnabled() || resizeOptions == null || resizeOptions.height <= 0 || resizeOptions.width <= 0) {
            startInputProducerWithExistingConsumer(consumer, producerContext);
            return;
        }
        if (mediaVariations == null) {
            if (this.mMediaIdExtractor == null) {
                mediaId = null;
                str = null;
            } else {
                mediaId = this.mMediaIdExtractor.getMediaIdFrom(imageRequest.getSourceUri());
                str = MediaVariations.SOURCE_ID_EXTRACTOR;
            }
        } else {
            mediaId = mediaVariations.getMediaId();
            str = MediaVariations.SOURCE_INDEX_DB;
        }
        if (mediaVariations == null && mediaId == null) {
            startInputProducerWithExistingConsumer(consumer, producerContext);
            return;
        }
        producerContext.getListener().onProducerStart(producerContext.getId(), PRODUCER_NAME);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        if (mediaVariations != null && mediaVariations.getVariantsCount() > 0) {
            chooseFromVariants(consumer, producerContext, imageRequest, mediaVariations, resizeOptions, atomicBoolean);
        } else {
            this.mMediaVariationsIndex.getCachedVariants(mediaId, MediaVariations.newBuilderForMediaId(mediaId).setForceRequestForSpecifiedUri(mediaVariations != null && mediaVariations.shouldForceRequestForSpecifiedUri()).setSource(str)).a(new h<MediaVariations, Object>() { // from class: com.facebook.imagepipeline.producers.MediaVariationsFallbackProducer.1
                @Override // bolts.h
                /* renamed from: then */
                public Object mo109then(i<MediaVariations> iVar) throws Exception {
                    i chooseFromVariants;
                    if (!iVar.d() && !iVar.e()) {
                        try {
                            if (iVar.f() == null) {
                                MediaVariationsFallbackProducer.this.startInputProducerWithWrappedConsumer(consumer, producerContext, mediaId);
                                chooseFromVariants = null;
                            } else {
                                chooseFromVariants = MediaVariationsFallbackProducer.this.chooseFromVariants(consumer, producerContext, imageRequest, iVar.f(), resizeOptions, atomicBoolean);
                            }
                            return chooseFromVariants;
                        } catch (Exception e) {
                            return null;
                        }
                    }
                    return iVar;
                }
            });
        }
        subscribeTaskForRequestCancellation(atomicBoolean, producerContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public i chooseFromVariants(Consumer<EncodedImage> consumer, ProducerContext producerContext, ImageRequest imageRequest, MediaVariations mediaVariations, ResizeOptions resizeOptions, AtomicBoolean atomicBoolean) {
        if (mediaVariations.getVariantsCount() == 0) {
            return i.a((EncodedImage) null).a((h) onFinishDiskReads(consumer, producerContext, imageRequest, mediaVariations, Collections.emptyList(), 0, atomicBoolean));
        }
        return attemptCacheReadForVariant(consumer, producerContext, imageRequest, mediaVariations, mediaVariations.getSortedVariants(new VariantComparator(resizeOptions)), 0, atomicBoolean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public i attemptCacheReadForVariant(Consumer<EncodedImage> consumer, ProducerContext producerContext, ImageRequest imageRequest, MediaVariations mediaVariations, List<MediaVariations.Variant> list, int i, AtomicBoolean atomicBoolean) {
        ImageRequest.CacheChoice cacheChoice;
        MediaVariations.Variant variant = list.get(i);
        CacheKey encodedCacheKey = this.mCacheKeyFactory.getEncodedCacheKey(imageRequest, variant.getUri(), producerContext.getCallerContext());
        if (variant.getCacheChoice() == null) {
            cacheChoice = imageRequest.getCacheChoice();
        } else {
            cacheChoice = variant.getCacheChoice();
        }
        return (cacheChoice == ImageRequest.CacheChoice.SMALL ? this.mSmallImageBufferedDiskCache : this.mDefaultBufferedDiskCache).get(encodedCacheKey, atomicBoolean).a((h<EncodedImage, TContinuationResult>) onFinishDiskReads(consumer, producerContext, imageRequest, mediaVariations, list, i, atomicBoolean));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isBigEnoughForRequestedSize(MediaVariations.Variant variant, ResizeOptions resizeOptions) {
        return variant.getWidth() >= resizeOptions.width && variant.getHeight() >= resizeOptions.height;
    }

    private h<EncodedImage, Void> onFinishDiskReads(final Consumer<EncodedImage> consumer, final ProducerContext producerContext, final ImageRequest imageRequest, final MediaVariations mediaVariations, final List<MediaVariations.Variant> list, final int i, final AtomicBoolean atomicBoolean) {
        final String id = producerContext.getId();
        final ProducerListener listener = producerContext.getListener();
        return new h<EncodedImage, Void>() { // from class: com.facebook.imagepipeline.producers.MediaVariationsFallbackProducer.2
            @Override // bolts.h
            /* renamed from: then  reason: collision with other method in class */
            public Void mo109then(i<EncodedImage> iVar) throws Exception {
                boolean z = true;
                if (MediaVariationsFallbackProducer.isTaskCancelled(iVar)) {
                    listener.onProducerFinishWithCancellation(id, MediaVariationsFallbackProducer.PRODUCER_NAME, null);
                    consumer.onCancellation();
                    z = false;
                } else if (iVar.e()) {
                    listener.onProducerFinishWithFailure(id, MediaVariationsFallbackProducer.PRODUCER_NAME, iVar.g(), null);
                    MediaVariationsFallbackProducer.this.startInputProducerWithWrappedConsumer(consumer, producerContext, mediaVariations.getMediaId());
                } else {
                    EncodedImage f = iVar.f();
                    if (f != null) {
                        boolean z2 = !mediaVariations.shouldForceRequestForSpecifiedUri() && MediaVariationsFallbackProducer.isBigEnoughForRequestedSize((MediaVariations.Variant) list.get(i), imageRequest.getResizeOptions());
                        listener.onProducerFinishWithSuccess(id, MediaVariationsFallbackProducer.PRODUCER_NAME, MediaVariationsFallbackProducer.getExtraMap(listener, id, true, list.size(), mediaVariations.getSource(), z2));
                        if (z2) {
                            consumer.onProgressUpdate(1.0f);
                        }
                        consumer.onNewResult(f, z2);
                        f.close();
                        if (z2) {
                            z = false;
                        }
                    } else if (i < list.size() - 1) {
                        MediaVariationsFallbackProducer.this.attemptCacheReadForVariant(consumer, producerContext, imageRequest, mediaVariations, list, i + 1, atomicBoolean);
                        z = false;
                    } else {
                        listener.onProducerFinishWithSuccess(id, MediaVariationsFallbackProducer.PRODUCER_NAME, MediaVariationsFallbackProducer.getExtraMap(listener, id, false, list.size(), mediaVariations.getSource(), false));
                    }
                }
                if (z) {
                    MediaVariationsFallbackProducer.this.startInputProducerWithWrappedConsumer(consumer, producerContext, mediaVariations.getMediaId());
                }
                return null;
            }
        };
    }

    private void startInputProducerWithExistingConsumer(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        this.mInputProducer.produceResults(consumer, producerContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startInputProducerWithWrappedConsumer(Consumer<EncodedImage> consumer, ProducerContext producerContext, String str) {
        this.mInputProducer.produceResults(new MediaVariationsConsumer(consumer, producerContext, str), producerContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isTaskCancelled(i<?> iVar) {
        return iVar.d() || (iVar.e() && (iVar.g() instanceof CancellationException));
    }

    @VisibleForTesting
    static Map<String, String> getExtraMap(ProducerListener producerListener, String str, boolean z, int i, String str2, boolean z2) {
        if (!producerListener.requiresExtraMap(str)) {
            return null;
        }
        if (z) {
            return ImmutableMap.of("cached_value_found", String.valueOf(true), EXTRA_CACHED_VALUE_USED_AS_LAST, String.valueOf(z2), EXTRA_VARIANTS_COUNT, String.valueOf(i), EXTRA_VARIANTS_SOURCE, str2);
        }
        return ImmutableMap.of("cached_value_found", String.valueOf(false), EXTRA_VARIANTS_COUNT, String.valueOf(i), EXTRA_VARIANTS_SOURCE, str2);
    }

    private void subscribeTaskForRequestCancellation(final AtomicBoolean atomicBoolean, ProducerContext producerContext) {
        producerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.MediaVariationsFallbackProducer.3
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                atomicBoolean.set(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public class MediaVariationsConsumer extends DelegatingConsumer<EncodedImage, EncodedImage> {
        private final String mMediaId;
        private final ProducerContext mProducerContext;

        public MediaVariationsConsumer(Consumer<EncodedImage> consumer, ProducerContext producerContext, String str) {
            super(consumer);
            this.mProducerContext = producerContext;
            this.mMediaId = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        public void onNewResultImpl(EncodedImage encodedImage, boolean z) {
            if (z && encodedImage != null) {
                storeResultInDatabase(encodedImage);
            }
            getConsumer().onNewResult(encodedImage, z);
        }

        private void storeResultInDatabase(EncodedImage encodedImage) {
            ImageRequest imageRequest = this.mProducerContext.getImageRequest();
            if (imageRequest.isDiskCacheEnabled() && this.mMediaId != null) {
                MediaVariationsFallbackProducer.this.mMediaVariationsIndex.saveCachedVariant(this.mMediaId, MediaVariationsFallbackProducer.this.mDiskCachePolicy.getCacheChoiceForResult(imageRequest, encodedImage), MediaVariationsFallbackProducer.this.mCacheKeyFactory.getEncodedCacheKey(imageRequest, this.mProducerContext.getCallerContext()), encodedImage);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class VariantComparator implements Comparator<MediaVariations.Variant> {
        private final ResizeOptions mResizeOptions;

        VariantComparator(ResizeOptions resizeOptions) {
            this.mResizeOptions = resizeOptions;
        }

        @Override // java.util.Comparator
        public int compare(MediaVariations.Variant variant, MediaVariations.Variant variant2) {
            boolean isBigEnoughForRequestedSize = MediaVariationsFallbackProducer.isBigEnoughForRequestedSize(variant, this.mResizeOptions);
            boolean isBigEnoughForRequestedSize2 = MediaVariationsFallbackProducer.isBigEnoughForRequestedSize(variant2, this.mResizeOptions);
            if (isBigEnoughForRequestedSize && isBigEnoughForRequestedSize2) {
                return variant.getWidth() - variant2.getWidth();
            }
            if (isBigEnoughForRequestedSize) {
                return -1;
            }
            if (isBigEnoughForRequestedSize2) {
                return 1;
            }
            return variant2.getWidth() - variant.getWidth();
        }
    }
}
