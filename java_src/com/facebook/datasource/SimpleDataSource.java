package com.facebook.datasource;

import com.facebook.common.internal.Preconditions;
/* loaded from: classes.dex */
public class SimpleDataSource<T> extends AbstractDataSource<T> {
    private SimpleDataSource() {
    }

    public static <T> SimpleDataSource<T> create() {
        return new SimpleDataSource<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.datasource.AbstractDataSource
    public boolean setResult(T t, boolean z) {
        return super.setResult(Preconditions.checkNotNull(t), z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean setResult(T t) {
        return super.setResult(Preconditions.checkNotNull(t), true);
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean setFailure(Throwable th) {
        return super.setFailure((Throwable) Preconditions.checkNotNull(th));
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean setProgress(float f) {
        return super.setProgress(f);
    }
}
