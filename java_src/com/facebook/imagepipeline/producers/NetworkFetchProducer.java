package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.ByteArrayPool;
import com.facebook.common.memory.PooledByteBufferFactory;
import com.facebook.common.memory.PooledByteBufferOutputStream;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.producers.NetworkFetcher;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class NetworkFetchProducer implements Producer<EncodedImage> {
    public static final String INTERMEDIATE_RESULT_PRODUCER_EVENT = "intermediate_result";
    public static final String PRODUCER_NAME = "NetworkFetchProducer";
    private static final int READ_SIZE = 16384;
    @VisibleForTesting
    static final long TIME_BETWEEN_PARTIAL_RESULTS_MS = 100;
    private final ByteArrayPool mByteArrayPool;
    private final NetworkFetcher mNetworkFetcher;
    private final PooledByteBufferFactory mPooledByteBufferFactory;

    public NetworkFetchProducer(PooledByteBufferFactory pooledByteBufferFactory, ByteArrayPool byteArrayPool, NetworkFetcher networkFetcher) {
        this.mPooledByteBufferFactory = pooledByteBufferFactory;
        this.mByteArrayPool = byteArrayPool;
        this.mNetworkFetcher = networkFetcher;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        producerContext.getListener().onProducerStart(producerContext.getId(), PRODUCER_NAME);
        final FetchState createFetchState = this.mNetworkFetcher.createFetchState(consumer, producerContext);
        this.mNetworkFetcher.fetch(createFetchState, new NetworkFetcher.Callback() { // from class: com.facebook.imagepipeline.producers.NetworkFetchProducer.1
            @Override // com.facebook.imagepipeline.producers.NetworkFetcher.Callback
            public void onResponse(InputStream inputStream, int i) throws IOException {
                NetworkFetchProducer.this.onResponse(createFetchState, inputStream, i);
            }

            @Override // com.facebook.imagepipeline.producers.NetworkFetcher.Callback
            public void onFailure(Throwable th) {
                NetworkFetchProducer.this.onFailure(createFetchState, th);
            }

            @Override // com.facebook.imagepipeline.producers.NetworkFetcher.Callback
            public void onCancellation() {
                NetworkFetchProducer.this.onCancellation(createFetchState);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onResponse(FetchState fetchState, InputStream inputStream, int i) throws IOException {
        PooledByteBufferOutputStream mo100newOutputStream;
        if (i > 0) {
            mo100newOutputStream = this.mPooledByteBufferFactory.mo101newOutputStream(i);
        } else {
            mo100newOutputStream = this.mPooledByteBufferFactory.mo100newOutputStream();
        }
        byte[] bArr = this.mByteArrayPool.get(READ_SIZE);
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read >= 0) {
                    if (read > 0) {
                        mo100newOutputStream.write(bArr, 0, read);
                        maybeHandleIntermediateResult(mo100newOutputStream, fetchState);
                        fetchState.getConsumer().onProgressUpdate(calculateProgress(mo100newOutputStream.size(), i));
                    }
                } else {
                    this.mNetworkFetcher.onFetchCompletion(fetchState, mo100newOutputStream.size());
                    handleFinalResult(mo100newOutputStream, fetchState);
                    return;
                }
            } finally {
                this.mByteArrayPool.release(bArr);
                mo100newOutputStream.close();
            }
        }
    }

    private static float calculateProgress(int i, int i2) {
        return i2 > 0 ? i / i2 : 1.0f - ((float) Math.exp((-i) / 50000.0d));
    }

    private void maybeHandleIntermediateResult(PooledByteBufferOutputStream pooledByteBufferOutputStream, FetchState fetchState) {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (shouldPropagateIntermediateResults(fetchState) && uptimeMillis - fetchState.getLastIntermediateResultTimeMs() >= TIME_BETWEEN_PARTIAL_RESULTS_MS) {
            fetchState.setLastIntermediateResultTimeMs(uptimeMillis);
            fetchState.getListener().onProducerEvent(fetchState.getId(), PRODUCER_NAME, INTERMEDIATE_RESULT_PRODUCER_EVENT);
            notifyConsumer(pooledByteBufferOutputStream, false, fetchState.getConsumer());
        }
    }

    private void handleFinalResult(PooledByteBufferOutputStream pooledByteBufferOutputStream, FetchState fetchState) {
        fetchState.getListener().onProducerFinishWithSuccess(fetchState.getId(), PRODUCER_NAME, getExtraMap(fetchState, pooledByteBufferOutputStream.size()));
        notifyConsumer(pooledByteBufferOutputStream, true, fetchState.getConsumer());
    }

    private void notifyConsumer(PooledByteBufferOutputStream pooledByteBufferOutputStream, boolean z, Consumer<EncodedImage> consumer) {
        EncodedImage encodedImage;
        CloseableReference of = CloseableReference.of(pooledByteBufferOutputStream.mo102toByteBuffer());
        try {
            encodedImage = new EncodedImage(of);
            try {
                encodedImage.parseMetaData();
                consumer.onNewResult(encodedImage, z);
                EncodedImage.closeSafely(encodedImage);
                CloseableReference.closeSafely(of);
            } catch (Throwable th) {
                th = th;
                EncodedImage.closeSafely(encodedImage);
                CloseableReference.closeSafely(of);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            encodedImage = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFailure(FetchState fetchState, Throwable th) {
        fetchState.getListener().onProducerFinishWithFailure(fetchState.getId(), PRODUCER_NAME, th, null);
        fetchState.getConsumer().onFailure(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCancellation(FetchState fetchState) {
        fetchState.getListener().onProducerFinishWithCancellation(fetchState.getId(), PRODUCER_NAME, null);
        fetchState.getConsumer().onCancellation();
    }

    private boolean shouldPropagateIntermediateResults(FetchState fetchState) {
        if (!fetchState.getContext().getImageRequest().getProgressiveRenderingEnabled()) {
            return false;
        }
        return this.mNetworkFetcher.shouldPropagate(fetchState);
    }

    @Nullable
    private Map<String, String> getExtraMap(FetchState fetchState, int i) {
        if (!fetchState.getListener().requiresExtraMap(fetchState.getId())) {
            return null;
        }
        return this.mNetworkFetcher.getExtraMap(fetchState, i);
    }
}
