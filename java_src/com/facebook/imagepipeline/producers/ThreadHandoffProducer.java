package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.Preconditions;
/* loaded from: classes.dex */
public class ThreadHandoffProducer<T> implements Producer<T> {
    public static final String PRODUCER_NAME = "BackgroundThreadHandoffProducer";
    private final Producer<T> mInputProducer;
    private final ThreadHandoffProducerQueue mThreadHandoffProducerQueue;

    public ThreadHandoffProducer(Producer<T> producer, ThreadHandoffProducerQueue threadHandoffProducerQueue) {
        this.mInputProducer = (Producer) Preconditions.checkNotNull(producer);
        this.mThreadHandoffProducerQueue = threadHandoffProducerQueue;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(final Consumer<T> consumer, final ProducerContext producerContext) {
        final ProducerListener listener = producerContext.getListener();
        final String id = producerContext.getId();
        final StatefulProducerRunnable<T> statefulProducerRunnable = new StatefulProducerRunnable<T>(consumer, listener, PRODUCER_NAME, id) { // from class: com.facebook.imagepipeline.producers.ThreadHandoffProducer.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.imagepipeline.producers.StatefulProducerRunnable, com.facebook.common.executors.StatefulRunnable
            public void onSuccess(T t) {
                listener.onProducerFinishWithSuccess(id, ThreadHandoffProducer.PRODUCER_NAME, null);
                ThreadHandoffProducer.this.mInputProducer.produceResults(consumer, producerContext);
            }

            @Override // com.facebook.imagepipeline.producers.StatefulProducerRunnable, com.facebook.common.executors.StatefulRunnable
            protected void disposeResult(T t) {
            }

            @Override // com.facebook.common.executors.StatefulRunnable
            /* renamed from: getResult */
            protected T mo110getResult() throws Exception {
                return null;
            }
        };
        producerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.ThreadHandoffProducer.2
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                statefulProducerRunnable.cancel();
                ThreadHandoffProducer.this.mThreadHandoffProducerQueue.remove(statefulProducerRunnable);
            }
        });
        this.mThreadHandoffProducerQueue.addToQueueOrExecute(statefulProducerRunnable);
    }
}
