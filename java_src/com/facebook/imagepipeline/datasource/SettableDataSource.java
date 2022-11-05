package com.facebook.imagepipeline.datasource;

import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.AbstractDataSource;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public final class SettableDataSource<T> extends AbstractDataSource<CloseableReference<T>> {
    @Override // com.facebook.datasource.AbstractDataSource
    protected /* bridge */ /* synthetic */ void closeResult(@Nullable Object obj) {
        closeResult((CloseableReference) ((CloseableReference) obj));
    }

    public static <V> SettableDataSource<V> create() {
        return new SettableDataSource<>();
    }

    private SettableDataSource() {
    }

    public boolean set(@Nullable CloseableReference<T> closeableReference) {
        return super.setResult(CloseableReference.cloneOrNull(closeableReference), true);
    }

    public boolean setException(Throwable th) {
        return super.setFailure(th);
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean setProgress(float f) {
        return super.setProgress(f);
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.DataSource
    @Nullable
    /* renamed from: getResult */
    public CloseableReference<T> mo92getResult() {
        return CloseableReference.cloneOrNull((CloseableReference) super.mo92getResult());
    }

    protected void closeResult(@Nullable CloseableReference<T> closeableReference) {
        CloseableReference.closeSafely((CloseableReference<?>) closeableReference);
    }
}
