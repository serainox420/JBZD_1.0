package com.facebook.imagepipeline.producers;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.EncodedImage;
/* loaded from: classes.dex */
public class RemoveImageTransformMetaDataProducer implements Producer<CloseableReference<PooledByteBuffer>> {
    private final Producer<EncodedImage> mInputProducer;

    public RemoveImageTransformMetaDataProducer(Producer<EncodedImage> producer) {
        this.mInputProducer = producer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<CloseableReference<PooledByteBuffer>> consumer, ProducerContext producerContext) {
        this.mInputProducer.produceResults(new RemoveImageTransformMetaDataConsumer(consumer), producerContext);
    }

    /* loaded from: classes.dex */
    private class RemoveImageTransformMetaDataConsumer extends DelegatingConsumer<EncodedImage, CloseableReference<PooledByteBuffer>> {
        private RemoveImageTransformMetaDataConsumer(Consumer<CloseableReference<PooledByteBuffer>> consumer) {
            super(consumer);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        public void onNewResultImpl(EncodedImage encodedImage, boolean z) {
            CloseableReference<PooledByteBuffer> closeableReference = null;
            try {
                if (EncodedImage.isValid(encodedImage)) {
                    closeableReference = encodedImage.getByteBufferRef();
                }
                getConsumer().onNewResult(closeableReference, z);
            } finally {
                CloseableReference.closeSafely(closeableReference);
            }
        }
    }
}
