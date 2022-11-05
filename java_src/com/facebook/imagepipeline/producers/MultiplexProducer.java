package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Sets;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.common.Priority;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public abstract class MultiplexProducer<K, T extends Closeable> implements Producer<T> {
    private final Producer<T> mInputProducer;
    @VisibleForTesting
    @GuardedBy("this")
    final Map<K, MultiplexProducer<K, T>.Multiplexer> mMultiplexers = new HashMap();

    protected abstract T cloneOrNull(T t);

    /* renamed from: getKey */
    protected abstract K mo105getKey(ProducerContext producerContext);

    /* JADX INFO: Access modifiers changed from: protected */
    public MultiplexProducer(Producer<T> producer) {
        this.mInputProducer = producer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<T> consumer, ProducerContext producerContext) {
        boolean z;
        MultiplexProducer<K, T>.Multiplexer existingMultiplexer;
        K mo105getKey = mo105getKey(producerContext);
        do {
            z = false;
            synchronized (this) {
                existingMultiplexer = getExistingMultiplexer(mo105getKey);
                if (existingMultiplexer == null) {
                    existingMultiplexer = createAndPutNewMultiplexer(mo105getKey);
                    z = true;
                }
            }
        } while (!existingMultiplexer.addNewConsumer(consumer, producerContext));
        if (!z) {
            return;
        }
        existingMultiplexer.startInputProducerIfHasAttachedConsumers();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized MultiplexProducer<K, T>.Multiplexer getExistingMultiplexer(K k) {
        return this.mMultiplexers.get(k);
    }

    private synchronized MultiplexProducer<K, T>.Multiplexer createAndPutNewMultiplexer(K k) {
        MultiplexProducer<K, T>.Multiplexer multiplexer;
        multiplexer = new Multiplexer(k);
        this.mMultiplexers.put(k, multiplexer);
        return multiplexer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void removeMultiplexer(K k, MultiplexProducer<K, T>.Multiplexer multiplexer) {
        if (this.mMultiplexers.get(k) == multiplexer) {
            this.mMultiplexers.remove(k);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public class Multiplexer {
        private final CopyOnWriteArraySet<Pair<Consumer<T>, ProducerContext>> mConsumerContextPairs = Sets.newCopyOnWriteArraySet();
        @GuardedBy("Multiplexer.this")
        @Nullable
        private MultiplexProducer<K, T>.Multiplexer.ForwardingConsumer mForwardingConsumer;
        private final K mKey;
        @GuardedBy("Multiplexer.this")
        @Nullable
        private T mLastIntermediateResult;
        @GuardedBy("Multiplexer.this")
        private float mLastProgress;
        @GuardedBy("Multiplexer.this")
        @Nullable
        private BaseProducerContext mMultiplexProducerContext;

        public Multiplexer(K k) {
            this.mKey = k;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean addNewConsumer(Consumer<T> consumer, ProducerContext producerContext) {
            Pair<Consumer<T>, ProducerContext> create = Pair.create(consumer, producerContext);
            synchronized (this) {
                if (MultiplexProducer.this.getExistingMultiplexer(this.mKey) != this) {
                    return false;
                }
                this.mConsumerContextPairs.add(create);
                List<ProducerContextCallbacks> updateIsPrefetch = updateIsPrefetch();
                List<ProducerContextCallbacks> updatePriority = updatePriority();
                List<ProducerContextCallbacks> updateIsIntermediateResultExpected = updateIsIntermediateResultExpected();
                Closeable closeable = this.mLastIntermediateResult;
                float f = this.mLastProgress;
                BaseProducerContext.callOnIsPrefetchChanged(updateIsPrefetch);
                BaseProducerContext.callOnPriorityChanged(updatePriority);
                BaseProducerContext.callOnIsIntermediateResultExpectedChanged(updateIsIntermediateResultExpected);
                synchronized (create) {
                    synchronized (this) {
                        if (closeable != this.mLastIntermediateResult) {
                            closeable = null;
                        } else if (closeable != null) {
                            closeable = MultiplexProducer.this.cloneOrNull(closeable);
                        }
                    }
                    if (closeable != null) {
                        if (f > BitmapDescriptorFactory.HUE_RED) {
                            consumer.onProgressUpdate(f);
                        }
                        consumer.onNewResult(closeable, false);
                        closeSafely(closeable);
                    }
                }
                addCallbacks(create, producerContext);
                return true;
            }
        }

        private void addCallbacks(final Pair<Consumer<T>, ProducerContext> pair, ProducerContext producerContext) {
            producerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.MultiplexProducer.Multiplexer.1
                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onCancellationRequested() {
                    boolean remove;
                    List list;
                    List list2;
                    BaseProducerContext baseProducerContext;
                    List list3 = null;
                    synchronized (Multiplexer.this) {
                        remove = Multiplexer.this.mConsumerContextPairs.remove(pair);
                        if (!remove) {
                            list = null;
                            list2 = null;
                            baseProducerContext = null;
                        } else if (Multiplexer.this.mConsumerContextPairs.isEmpty()) {
                            list2 = null;
                            baseProducerContext = Multiplexer.this.mMultiplexProducerContext;
                            list = null;
                        } else {
                            List updateIsPrefetch = Multiplexer.this.updateIsPrefetch();
                            list = Multiplexer.this.updatePriority();
                            list2 = updateIsPrefetch;
                            baseProducerContext = null;
                            list3 = Multiplexer.this.updateIsIntermediateResultExpected();
                        }
                    }
                    BaseProducerContext.callOnIsPrefetchChanged(list2);
                    BaseProducerContext.callOnPriorityChanged(list);
                    BaseProducerContext.callOnIsIntermediateResultExpectedChanged(list3);
                    if (baseProducerContext != null) {
                        baseProducerContext.cancel();
                    }
                    if (remove) {
                        ((Consumer) pair.first).onCancellation();
                    }
                }

                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onIsPrefetchChanged() {
                    BaseProducerContext.callOnIsPrefetchChanged(Multiplexer.this.updateIsPrefetch());
                }

                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onIsIntermediateResultExpectedChanged() {
                    BaseProducerContext.callOnIsIntermediateResultExpectedChanged(Multiplexer.this.updateIsIntermediateResultExpected());
                }

                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onPriorityChanged() {
                    BaseProducerContext.callOnPriorityChanged(Multiplexer.this.updatePriority());
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startInputProducerIfHasAttachedConsumers() {
            boolean z = true;
            synchronized (this) {
                Preconditions.checkArgument(this.mMultiplexProducerContext == null);
                if (this.mForwardingConsumer != null) {
                    z = false;
                }
                Preconditions.checkArgument(z);
                if (this.mConsumerContextPairs.isEmpty()) {
                    MultiplexProducer.this.removeMultiplexer(this.mKey, this);
                    return;
                }
                ProducerContext producerContext = (ProducerContext) this.mConsumerContextPairs.iterator().next().second;
                this.mMultiplexProducerContext = new BaseProducerContext(producerContext.getImageRequest(), producerContext.getId(), producerContext.getListener(), producerContext.getCallerContext(), producerContext.getLowestPermittedRequestLevel(), computeIsPrefetch(), computeIsIntermediateResultExpected(), computePriority());
                this.mForwardingConsumer = new ForwardingConsumer();
                MultiplexProducer.this.mInputProducer.produceResults(this.mForwardingConsumer, this.mMultiplexProducerContext);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<ProducerContextCallbacks> updateIsPrefetch() {
            return this.mMultiplexProducerContext == null ? null : this.mMultiplexProducerContext.setIsPrefetchNoCallbacks(computeIsPrefetch());
        }

        private synchronized boolean computeIsPrefetch() {
            boolean z;
            Iterator<Pair<Consumer<T>, ProducerContext>> it = this.mConsumerContextPairs.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                } else if (!((ProducerContext) it.next().second).isPrefetch()) {
                    z = false;
                    break;
                }
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<ProducerContextCallbacks> updateIsIntermediateResultExpected() {
            List<ProducerContextCallbacks> isIntermediateResultExpectedNoCallbacks;
            if (this.mMultiplexProducerContext == null) {
                isIntermediateResultExpectedNoCallbacks = null;
            } else {
                isIntermediateResultExpectedNoCallbacks = this.mMultiplexProducerContext.setIsIntermediateResultExpectedNoCallbacks(computeIsIntermediateResultExpected());
            }
            return isIntermediateResultExpectedNoCallbacks;
        }

        private synchronized boolean computeIsIntermediateResultExpected() {
            boolean z;
            Iterator<Pair<Consumer<T>, ProducerContext>> it = this.mConsumerContextPairs.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (((ProducerContext) it.next().second).isIntermediateResultExpected()) {
                    z = true;
                    break;
                }
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<ProducerContextCallbacks> updatePriority() {
            return this.mMultiplexProducerContext == null ? null : this.mMultiplexProducerContext.setPriorityNoCallbacks(computePriority());
        }

        private synchronized Priority computePriority() {
            Priority priority;
            Priority priority2 = Priority.LOW;
            Iterator<Pair<Consumer<T>, ProducerContext>> it = this.mConsumerContextPairs.iterator();
            while (true) {
                priority = priority2;
                if (it.hasNext()) {
                    priority2 = Priority.getHigherPriority(priority, ((ProducerContext) it.next().second).getPriority());
                }
            }
            return priority;
        }

        public void onFailure(MultiplexProducer<K, T>.Multiplexer.ForwardingConsumer forwardingConsumer, Throwable th) {
            synchronized (this) {
                if (this.mForwardingConsumer == forwardingConsumer) {
                    Iterator<Pair<Consumer<T>, ProducerContext>> it = this.mConsumerContextPairs.iterator();
                    this.mConsumerContextPairs.clear();
                    MultiplexProducer.this.removeMultiplexer(this.mKey, this);
                    closeSafely(this.mLastIntermediateResult);
                    this.mLastIntermediateResult = null;
                    while (it.hasNext()) {
                        Pair<Consumer<T>, ProducerContext> next = it.next();
                        synchronized (next) {
                            ((Consumer) next.first).onFailure(th);
                        }
                    }
                }
            }
        }

        public void onNextResult(MultiplexProducer<K, T>.Multiplexer.ForwardingConsumer forwardingConsumer, T t, boolean z) {
            synchronized (this) {
                if (this.mForwardingConsumer == forwardingConsumer) {
                    closeSafely(this.mLastIntermediateResult);
                    this.mLastIntermediateResult = null;
                    Iterator<Pair<Consumer<T>, ProducerContext>> it = this.mConsumerContextPairs.iterator();
                    if (!z) {
                        this.mLastIntermediateResult = (T) MultiplexProducer.this.cloneOrNull(t);
                    } else {
                        this.mConsumerContextPairs.clear();
                        MultiplexProducer.this.removeMultiplexer(this.mKey, this);
                    }
                    while (it.hasNext()) {
                        Pair<Consumer<T>, ProducerContext> next = it.next();
                        synchronized (next) {
                            ((Consumer) next.first).onNewResult(t, z);
                        }
                    }
                }
            }
        }

        public void onCancelled(MultiplexProducer<K, T>.Multiplexer.ForwardingConsumer forwardingConsumer) {
            synchronized (this) {
                if (this.mForwardingConsumer == forwardingConsumer) {
                    this.mForwardingConsumer = null;
                    this.mMultiplexProducerContext = null;
                    closeSafely(this.mLastIntermediateResult);
                    this.mLastIntermediateResult = null;
                    startInputProducerIfHasAttachedConsumers();
                }
            }
        }

        public void onProgressUpdate(MultiplexProducer<K, T>.Multiplexer.ForwardingConsumer forwardingConsumer, float f) {
            synchronized (this) {
                if (this.mForwardingConsumer == forwardingConsumer) {
                    this.mLastProgress = f;
                    Iterator<Pair<Consumer<T>, ProducerContext>> it = this.mConsumerContextPairs.iterator();
                    while (it.hasNext()) {
                        Pair<Consumer<T>, ProducerContext> next = it.next();
                        synchronized (next) {
                            ((Consumer) next.first).onProgressUpdate(f);
                        }
                    }
                }
            }
        }

        private void closeSafely(Closeable closeable) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class ForwardingConsumer extends BaseConsumer<T> {
            private ForwardingConsumer() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.facebook.imagepipeline.producers.BaseConsumer
            protected /* bridge */ /* synthetic */ void onNewResultImpl(Object obj, boolean z) {
                onNewResultImpl((ForwardingConsumer) ((Closeable) obj), z);
            }

            protected void onNewResultImpl(T t, boolean z) {
                Multiplexer.this.onNextResult(this, t, z);
            }

            @Override // com.facebook.imagepipeline.producers.BaseConsumer
            protected void onFailureImpl(Throwable th) {
                Multiplexer.this.onFailure(this, th);
            }

            @Override // com.facebook.imagepipeline.producers.BaseConsumer
            protected void onCancellationImpl() {
                Multiplexer.this.onCancelled(this);
            }

            @Override // com.facebook.imagepipeline.producers.BaseConsumer
            protected void onProgressUpdateImpl(float f) {
                Multiplexer.this.onProgressUpdate(this, f);
            }
        }
    }
}
