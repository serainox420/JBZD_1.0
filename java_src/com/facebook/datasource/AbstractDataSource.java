package com.facebook.datasource;

import android.util.Pair;
import com.facebook.common.internal.Preconditions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes.dex */
public abstract class AbstractDataSource<T> implements DataSource<T> {
    @GuardedBy("this")
    @Nullable
    private T mResult = null;
    @GuardedBy("this")
    private Throwable mFailureThrowable = null;
    @GuardedBy("this")
    private float mProgress = BitmapDescriptorFactory.HUE_RED;
    @GuardedBy("this")
    private boolean mIsClosed = false;
    @GuardedBy("this")
    private DataSourceStatus mDataSourceStatus = DataSourceStatus.IN_PROGRESS;
    private final ConcurrentLinkedQueue<Pair<DataSubscriber<T>, Executor>> mSubscribers = new ConcurrentLinkedQueue<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum DataSourceStatus {
        IN_PROGRESS,
        SUCCESS,
        FAILURE
    }

    @Override // com.facebook.datasource.DataSource
    public synchronized boolean isClosed() {
        return this.mIsClosed;
    }

    @Override // com.facebook.datasource.DataSource
    public synchronized boolean isFinished() {
        return this.mDataSourceStatus != DataSourceStatus.IN_PROGRESS;
    }

    @Override // com.facebook.datasource.DataSource
    public synchronized boolean hasResult() {
        return this.mResult != null;
    }

    @Override // com.facebook.datasource.DataSource
    @Nullable
    /* renamed from: getResult */
    public synchronized T mo92getResult() {
        return this.mResult;
    }

    @Override // com.facebook.datasource.DataSource
    public synchronized boolean hasFailed() {
        return this.mDataSourceStatus == DataSourceStatus.FAILURE;
    }

    @Override // com.facebook.datasource.DataSource
    @Nullable
    public synchronized Throwable getFailureCause() {
        return this.mFailureThrowable;
    }

    @Override // com.facebook.datasource.DataSource
    public synchronized float getProgress() {
        return this.mProgress;
    }

    @Override // com.facebook.datasource.DataSource
    public boolean close() {
        boolean z = true;
        synchronized (this) {
            if (this.mIsClosed) {
                z = false;
            } else {
                this.mIsClosed = true;
                T t = this.mResult;
                this.mResult = null;
                if (t != null) {
                    closeResult(t);
                }
                if (!isFinished()) {
                    notifyDataSubscribers();
                }
                synchronized (this) {
                    this.mSubscribers.clear();
                }
            }
        }
        return z;
    }

    protected void closeResult(@Nullable T t) {
    }

    @Override // com.facebook.datasource.DataSource
    public void subscribe(DataSubscriber<T> dataSubscriber, Executor executor) {
        Preconditions.checkNotNull(dataSubscriber);
        Preconditions.checkNotNull(executor);
        synchronized (this) {
            if (!this.mIsClosed) {
                if (this.mDataSourceStatus == DataSourceStatus.IN_PROGRESS) {
                    this.mSubscribers.add(Pair.create(dataSubscriber, executor));
                }
                boolean z = hasResult() || isFinished() || wasCancelled();
                if (z) {
                    notifyDataSubscriber(dataSubscriber, executor, hasFailed(), wasCancelled());
                }
            }
        }
    }

    private void notifyDataSubscribers() {
        boolean hasFailed = hasFailed();
        boolean wasCancelled = wasCancelled();
        Iterator<Pair<DataSubscriber<T>, Executor>> it = this.mSubscribers.iterator();
        while (it.hasNext()) {
            Pair<DataSubscriber<T>, Executor> next = it.next();
            notifyDataSubscriber((DataSubscriber) next.first, (Executor) next.second, hasFailed, wasCancelled);
        }
    }

    private void notifyDataSubscriber(final DataSubscriber<T> dataSubscriber, Executor executor, final boolean z, final boolean z2) {
        executor.execute(new Runnable() { // from class: com.facebook.datasource.AbstractDataSource.1
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    dataSubscriber.onFailure(AbstractDataSource.this);
                } else if (z2) {
                    dataSubscriber.onCancellation(AbstractDataSource.this);
                } else {
                    dataSubscriber.onNewResult(AbstractDataSource.this);
                }
            }
        });
    }

    private synchronized boolean wasCancelled() {
        boolean z;
        if (isClosed()) {
            if (!isFinished()) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean setResult(@Nullable T t, boolean z) {
        boolean resultInternal = setResultInternal(t, z);
        if (resultInternal) {
            notifyDataSubscribers();
        }
        return resultInternal;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean setFailure(Throwable th) {
        boolean failureInternal = setFailureInternal(th);
        if (failureInternal) {
            notifyDataSubscribers();
        }
        return failureInternal;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean setProgress(float f) {
        boolean progressInternal = setProgressInternal(f);
        if (progressInternal) {
            notifyProgressUpdate();
        }
        return progressInternal;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean setResultInternal(@Nullable T t, boolean z) {
        boolean z2;
        T t2;
        try {
            try {
                synchronized (this) {
                    try {
                        if (this.mIsClosed || this.mDataSourceStatus != DataSourceStatus.IN_PROGRESS) {
                            z2 = false;
                            if (t != null) {
                                closeResult(t);
                            }
                        } else {
                            if (z) {
                                this.mDataSourceStatus = DataSourceStatus.SUCCESS;
                                this.mProgress = 1.0f;
                            }
                            if (this.mResult != t) {
                                T t3 = this.mResult;
                                try {
                                    this.mResult = t;
                                    t2 = t3;
                                } catch (Throwable th) {
                                    th = th;
                                    t = t3;
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (t != null) {
                                            closeResult(t);
                                        }
                                        throw th;
                                    }
                                }
                            } else {
                                t2 = null;
                            }
                            z2 = true;
                            if (t2 != null) {
                                closeResult(t2);
                            }
                        }
                        return z2;
                    } catch (Throwable th3) {
                        th = th3;
                        t = null;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                t = null;
                if (t != null) {
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private synchronized boolean setFailureInternal(Throwable th) {
        boolean z;
        if (this.mIsClosed || this.mDataSourceStatus != DataSourceStatus.IN_PROGRESS) {
            z = false;
        } else {
            this.mDataSourceStatus = DataSourceStatus.FAILURE;
            this.mFailureThrowable = th;
            z = true;
        }
        return z;
    }

    private synchronized boolean setProgressInternal(float f) {
        boolean z = false;
        synchronized (this) {
            if (!this.mIsClosed && this.mDataSourceStatus == DataSourceStatus.IN_PROGRESS && f >= this.mProgress) {
                this.mProgress = f;
                z = true;
            }
        }
        return z;
    }

    protected void notifyProgressUpdate() {
        Iterator<Pair<DataSubscriber<T>, Executor>> it = this.mSubscribers.iterator();
        while (it.hasNext()) {
            Pair<DataSubscriber<T>, Executor> next = it.next();
            final DataSubscriber dataSubscriber = (DataSubscriber) next.first;
            ((Executor) next.second).execute(new Runnable() { // from class: com.facebook.datasource.AbstractDataSource.2
                @Override // java.lang.Runnable
                public void run() {
                    dataSubscriber.onProgressUpdate(AbstractDataSource.this);
                }
            });
        }
    }
}
