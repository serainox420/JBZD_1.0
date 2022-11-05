package com.facebook.imagepipeline.datasource;

import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.DataSource;
import com.facebook.imagepipeline.listener.RequestListener;
import com.facebook.imagepipeline.producers.Producer;
import com.facebook.imagepipeline.producers.SettableProducerContext;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class CloseableProducerToDataSourceAdapter<T> extends AbstractProducerToDataSourceAdapter<CloseableReference<T>> {
    @Override // com.facebook.datasource.AbstractDataSource
    protected /* bridge */ /* synthetic */ void closeResult(Object obj) {
        closeResult((CloseableReference) ((CloseableReference) obj));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.datasource.AbstractProducerToDataSourceAdapter
    public /* bridge */ /* synthetic */ void onNewResultImpl(Object obj, boolean z) {
        onNewResultImpl((CloseableReference) ((CloseableReference) obj), z);
    }

    public static <T> DataSource<CloseableReference<T>> create(Producer<CloseableReference<T>> producer, SettableProducerContext settableProducerContext, RequestListener requestListener) {
        return new CloseableProducerToDataSourceAdapter(producer, settableProducerContext, requestListener);
    }

    private CloseableProducerToDataSourceAdapter(Producer<CloseableReference<T>> producer, SettableProducerContext settableProducerContext, RequestListener requestListener) {
        super(producer, settableProducerContext, requestListener);
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.DataSource
    @Nullable
    /* renamed from: getResult */
    public CloseableReference<T> mo92getResult() {
        return CloseableReference.cloneOrNull((CloseableReference) super.mo92getResult());
    }

    protected void closeResult(CloseableReference<T> closeableReference) {
        CloseableReference.closeSafely((CloseableReference<?>) closeableReference);
    }

    protected void onNewResultImpl(CloseableReference<T> closeableReference, boolean z) {
        super.onNewResultImpl((CloseableProducerToDataSourceAdapter<T>) CloseableReference.cloneOrNull(closeableReference), z);
    }
}
