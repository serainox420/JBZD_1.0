package com.facebook.imagepipeline.producers;

import bolts.h;
import bolts.i;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.cache.DiskCachePolicy;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class DiskCacheReadProducer implements Producer<EncodedImage> {
    public static final String ENCODED_IMAGE_SIZE = "encodedImageSize";
    public static final String EXTRA_CACHED_VALUE_FOUND = "cached_value_found";
    public static final String PRODUCER_NAME = "DiskCacheProducer";
    private final DiskCachePolicy mDiskCachePolicy;
    private final Producer<EncodedImage> mInputProducer;

    public DiskCacheReadProducer(Producer<EncodedImage> producer, DiskCachePolicy diskCachePolicy) {
        this.mInputProducer = producer;
        this.mDiskCachePolicy = diskCachePolicy;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        ImageRequest imageRequest = producerContext.getImageRequest();
        if (!imageRequest.isDiskCacheEnabled()) {
            maybeStartInputProducer(consumer, producerContext);
            return;
        }
        producerContext.getListener().onProducerStart(producerContext.getId(), PRODUCER_NAME);
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.mDiskCachePolicy.createAndStartCacheReadTask(imageRequest, producerContext.getCallerContext(), atomicBoolean).a((h<EncodedImage, TContinuationResult>) onFinishDiskReads(consumer, producerContext));
        subscribeTaskForRequestCancellation(atomicBoolean, producerContext);
    }

    private h<EncodedImage, Void> onFinishDiskReads(final Consumer<EncodedImage> consumer, final ProducerContext producerContext) {
        final String id = producerContext.getId();
        final ProducerListener listener = producerContext.getListener();
        return new h<EncodedImage, Void>() { // from class: com.facebook.imagepipeline.producers.DiskCacheReadProducer.1
            @Override // bolts.h
            /* renamed from: then  reason: collision with other method in class */
            public Void mo109then(i<EncodedImage> iVar) throws Exception {
                if (DiskCacheReadProducer.isTaskCancelled(iVar)) {
                    listener.onProducerFinishWithCancellation(id, DiskCacheReadProducer.PRODUCER_NAME, null);
                    consumer.onCancellation();
                } else if (iVar.e()) {
                    listener.onProducerFinishWithFailure(id, DiskCacheReadProducer.PRODUCER_NAME, iVar.g(), null);
                    DiskCacheReadProducer.this.mInputProducer.produceResults(consumer, producerContext);
                } else {
                    EncodedImage f = iVar.f();
                    if (f != null) {
                        listener.onProducerFinishWithSuccess(id, DiskCacheReadProducer.PRODUCER_NAME, DiskCacheReadProducer.getExtraMap(listener, id, true, f.getSize()));
                        consumer.onProgressUpdate(1.0f);
                        consumer.onNewResult(f, true);
                        f.close();
                    } else {
                        listener.onProducerFinishWithSuccess(id, DiskCacheReadProducer.PRODUCER_NAME, DiskCacheReadProducer.getExtraMap(listener, id, false, 0));
                        DiskCacheReadProducer.this.mInputProducer.produceResults(consumer, producerContext);
                    }
                }
                return null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isTaskCancelled(i<?> iVar) {
        return iVar.d() || (iVar.e() && (iVar.g() instanceof CancellationException));
    }

    private void maybeStartInputProducer(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        if (producerContext.getLowestPermittedRequestLevel().getValue() >= ImageRequest.RequestLevel.DISK_CACHE.getValue()) {
            consumer.onNewResult(null, true);
        } else {
            this.mInputProducer.produceResults(consumer, producerContext);
        }
    }

    @VisibleForTesting
    static Map<String, String> getExtraMap(ProducerListener producerListener, String str, boolean z, int i) {
        if (!producerListener.requiresExtraMap(str)) {
            return null;
        }
        if (z) {
            return ImmutableMap.of("cached_value_found", String.valueOf(z), "encodedImageSize", String.valueOf(i));
        }
        return ImmutableMap.of("cached_value_found", String.valueOf(z));
    }

    private void subscribeTaskForRequestCancellation(final AtomicBoolean atomicBoolean, ProducerContext producerContext) {
        producerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.DiskCacheReadProducer.2
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                atomicBoolean.set(true);
            }
        });
    }
}
