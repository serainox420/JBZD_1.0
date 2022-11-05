package com.facebook.imagepipeline.producers;

import com.facebook.common.executors.StatefulRunnable;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class StatefulProducerRunnable<T> extends StatefulRunnable<T> {
    private final Consumer<T> mConsumer;
    private final ProducerListener mProducerListener;
    private final String mProducerName;
    private final String mRequestId;

    @Override // com.facebook.common.executors.StatefulRunnable
    protected abstract void disposeResult(T t);

    public StatefulProducerRunnable(Consumer<T> consumer, ProducerListener producerListener, String str, String str2) {
        this.mConsumer = consumer;
        this.mProducerListener = producerListener;
        this.mProducerName = str;
        this.mRequestId = str2;
        this.mProducerListener.onProducerStart(this.mRequestId, this.mProducerName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.StatefulRunnable
    public void onSuccess(T t) {
        this.mProducerListener.onProducerFinishWithSuccess(this.mRequestId, this.mProducerName, this.mProducerListener.requiresExtraMap(this.mRequestId) ? getExtraMapOnSuccess(t) : null);
        this.mConsumer.onNewResult(t, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.StatefulRunnable
    public void onFailure(Exception exc) {
        this.mProducerListener.onProducerFinishWithFailure(this.mRequestId, this.mProducerName, exc, this.mProducerListener.requiresExtraMap(this.mRequestId) ? getExtraMapOnFailure(exc) : null);
        this.mConsumer.onFailure(exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.StatefulRunnable
    public void onCancellation() {
        this.mProducerListener.onProducerFinishWithCancellation(this.mRequestId, this.mProducerName, this.mProducerListener.requiresExtraMap(this.mRequestId) ? getExtraMapOnCancellation() : null);
        this.mConsumer.onCancellation();
    }

    protected Map<String, String> getExtraMapOnSuccess(T t) {
        return null;
    }

    protected Map<String, String> getExtraMapOnFailure(Exception exc) {
        return null;
    }

    protected Map<String, String> getExtraMapOnCancellation() {
        return null;
    }
}
