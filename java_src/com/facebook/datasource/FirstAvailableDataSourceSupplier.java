package com.facebook.datasource;

import com.facebook.common.executors.CallerThreadExecutor;
import com.facebook.common.internal.Objects;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class FirstAvailableDataSourceSupplier<T> implements Supplier<DataSource<T>> {
    private final List<Supplier<DataSource<T>>> mDataSourceSuppliers;

    private FirstAvailableDataSourceSupplier(List<Supplier<DataSource<T>>> list) {
        Preconditions.checkArgument(!list.isEmpty(), "List of suppliers is empty!");
        this.mDataSourceSuppliers = list;
    }

    public static <T> FirstAvailableDataSourceSupplier<T> create(List<Supplier<DataSource<T>>> list) {
        return new FirstAvailableDataSourceSupplier<>(list);
    }

    @Override // com.facebook.common.internal.Supplier
    /* renamed from: get */
    public DataSource<T> mo89get() {
        return new FirstAvailableDataSource();
    }

    public int hashCode() {
        return this.mDataSourceSuppliers.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FirstAvailableDataSourceSupplier)) {
            return false;
        }
        return Objects.equal(this.mDataSourceSuppliers, ((FirstAvailableDataSourceSupplier) obj).mDataSourceSuppliers);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("list", this.mDataSourceSuppliers).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ThreadSafe
    /* loaded from: classes.dex */
    public class FirstAvailableDataSource extends AbstractDataSource<T> {
        private int mIndex = 0;
        private DataSource<T> mCurrentDataSource = null;
        private DataSource<T> mDataSourceWithResult = null;

        public FirstAvailableDataSource() {
            if (!startNextDataSource()) {
                setFailure(new RuntimeException("No data source supplier or supplier returned null."));
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.DataSource
        @Nullable
        /* renamed from: getResult */
        public synchronized T mo92getResult() {
            DataSource<T> dataSourceWithResult;
            dataSourceWithResult = getDataSourceWithResult();
            return dataSourceWithResult != null ? dataSourceWithResult.mo92getResult() : null;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.DataSource
        public synchronized boolean hasResult() {
            boolean z;
            DataSource<T> dataSourceWithResult = getDataSourceWithResult();
            if (dataSourceWithResult != null) {
                if (dataSourceWithResult.hasResult()) {
                    z = true;
                }
            }
            z = false;
            return z;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.DataSource
        public boolean close() {
            synchronized (this) {
                if (!super.close()) {
                    return false;
                }
                DataSource<T> dataSource = this.mCurrentDataSource;
                this.mCurrentDataSource = null;
                DataSource<T> dataSource2 = this.mDataSourceWithResult;
                this.mDataSourceWithResult = null;
                closeSafely(dataSource2);
                closeSafely(dataSource);
                return true;
            }
        }

        private boolean startNextDataSource() {
            Supplier<DataSource<T>> nextSupplier = getNextSupplier();
            DataSource<T> mo89get = nextSupplier != null ? nextSupplier.mo89get() : null;
            if (setCurrentDataSource(mo89get) && mo89get != null) {
                mo89get.subscribe(new InternalDataSubscriber(), CallerThreadExecutor.getInstance());
                return true;
            }
            closeSafely(mo89get);
            return false;
        }

        @Nullable
        private synchronized Supplier<DataSource<T>> getNextSupplier() {
            Supplier<DataSource<T>> supplier;
            if (isClosed() || this.mIndex >= FirstAvailableDataSourceSupplier.this.mDataSourceSuppliers.size()) {
                supplier = null;
            } else {
                List list = FirstAvailableDataSourceSupplier.this.mDataSourceSuppliers;
                int i = this.mIndex;
                this.mIndex = i + 1;
                supplier = (Supplier) list.get(i);
            }
            return supplier;
        }

        private synchronized boolean setCurrentDataSource(DataSource<T> dataSource) {
            boolean z;
            if (isClosed()) {
                z = false;
            } else {
                this.mCurrentDataSource = dataSource;
                z = true;
            }
            return z;
        }

        private synchronized boolean clearCurrentDataSource(DataSource<T> dataSource) {
            boolean z;
            if (isClosed() || dataSource != this.mCurrentDataSource) {
                z = false;
            } else {
                this.mCurrentDataSource = null;
                z = true;
            }
            return z;
        }

        @Nullable
        private synchronized DataSource<T> getDataSourceWithResult() {
            return this.mDataSourceWithResult;
        }

        private void maybeSetDataSourceWithResult(DataSource<T> dataSource, boolean z) {
            DataSource<T> dataSource2 = null;
            synchronized (this) {
                if (dataSource == this.mCurrentDataSource && dataSource != this.mDataSourceWithResult) {
                    if (this.mDataSourceWithResult == null || z) {
                        dataSource2 = this.mDataSourceWithResult;
                        this.mDataSourceWithResult = dataSource;
                    }
                    closeSafely(dataSource2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onDataSourceFailed(DataSource<T> dataSource) {
            if (clearCurrentDataSource(dataSource)) {
                if (dataSource != getDataSourceWithResult()) {
                    closeSafely(dataSource);
                }
                if (!startNextDataSource()) {
                    setFailure(dataSource.getFailureCause());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onDataSourceNewResult(DataSource<T> dataSource) {
            maybeSetDataSourceWithResult(dataSource, dataSource.isFinished());
            if (dataSource == getDataSourceWithResult()) {
                setResult(null, dataSource.isFinished());
            }
        }

        private void closeSafely(DataSource<T> dataSource) {
            if (dataSource != null) {
                dataSource.close();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class InternalDataSubscriber implements DataSubscriber<T> {
            private InternalDataSubscriber() {
            }

            @Override // com.facebook.datasource.DataSubscriber
            public void onFailure(DataSource<T> dataSource) {
                FirstAvailableDataSource.this.onDataSourceFailed(dataSource);
            }

            @Override // com.facebook.datasource.DataSubscriber
            public void onCancellation(DataSource<T> dataSource) {
            }

            @Override // com.facebook.datasource.DataSubscriber
            public void onNewResult(DataSource<T> dataSource) {
                if (dataSource.hasResult()) {
                    FirstAvailableDataSource.this.onDataSourceNewResult(dataSource);
                } else if (dataSource.isFinished()) {
                    FirstAvailableDataSource.this.onDataSourceFailed(dataSource);
                }
            }

            @Override // com.facebook.datasource.DataSubscriber
            public void onProgressUpdate(DataSource<T> dataSource) {
                FirstAvailableDataSource.this.setProgress(Math.max(FirstAvailableDataSource.this.getProgress(), dataSource.getProgress()));
            }
        }
    }
}
