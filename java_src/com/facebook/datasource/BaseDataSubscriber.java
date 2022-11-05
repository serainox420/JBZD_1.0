package com.facebook.datasource;
/* loaded from: classes.dex */
public abstract class BaseDataSubscriber<T> implements DataSubscriber<T> {
    protected abstract void onFailureImpl(DataSource<T> dataSource);

    protected abstract void onNewResultImpl(DataSource<T> dataSource);

    @Override // com.facebook.datasource.DataSubscriber
    public void onNewResult(DataSource<T> dataSource) {
        boolean isFinished = dataSource.isFinished();
        try {
            onNewResultImpl(dataSource);
        } finally {
            if (isFinished) {
                dataSource.close();
            }
        }
    }

    @Override // com.facebook.datasource.DataSubscriber
    public void onFailure(DataSource<T> dataSource) {
        try {
            onFailureImpl(dataSource);
        } finally {
            dataSource.close();
        }
    }

    @Override // com.facebook.datasource.DataSubscriber
    public void onCancellation(DataSource<T> dataSource) {
    }

    @Override // com.facebook.datasource.DataSubscriber
    public void onProgressUpdate(DataSource<T> dataSource) {
    }
}
