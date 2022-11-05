package com.facebook.datasource;

import com.facebook.common.executors.CallerThreadExecutor;
import com.facebook.common.internal.Objects;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class IncreasingQualityDataSourceSupplier<T> implements Supplier<DataSource<T>> {
    private final List<Supplier<DataSource<T>>> mDataSourceSuppliers;

    private IncreasingQualityDataSourceSupplier(List<Supplier<DataSource<T>>> list) {
        Preconditions.checkArgument(!list.isEmpty(), "List of suppliers is empty!");
        this.mDataSourceSuppliers = list;
    }

    public static <T> IncreasingQualityDataSourceSupplier<T> create(List<Supplier<DataSource<T>>> list) {
        return new IncreasingQualityDataSourceSupplier<>(list);
    }

    @Override // com.facebook.common.internal.Supplier
    /* renamed from: get */
    public DataSource<T> mo89get() {
        return new IncreasingQualityDataSource();
    }

    public int hashCode() {
        return this.mDataSourceSuppliers.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof IncreasingQualityDataSourceSupplier)) {
            return false;
        }
        return Objects.equal(this.mDataSourceSuppliers, ((IncreasingQualityDataSourceSupplier) obj).mDataSourceSuppliers);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("list", this.mDataSourceSuppliers).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ThreadSafe
    /* loaded from: classes.dex */
    public class IncreasingQualityDataSource extends AbstractDataSource<T> {
        @GuardedBy("IncreasingQualityDataSource.this")
        @Nullable
        private ArrayList<DataSource<T>> mDataSources;
        @GuardedBy("IncreasingQualityDataSource.this")
        private int mIndexOfDataSourceWithResult;

        public IncreasingQualityDataSource() {
            int size = IncreasingQualityDataSourceSupplier.this.mDataSourceSuppliers.size();
            this.mIndexOfDataSourceWithResult = size;
            this.mDataSources = new ArrayList<>(size);
            for (int i = 0; i < size; i++) {
                DataSource<T> dataSource = (DataSource) ((Supplier) IncreasingQualityDataSourceSupplier.this.mDataSourceSuppliers.get(i)).mo89get();
                this.mDataSources.add(dataSource);
                dataSource.subscribe(new InternalDataSubscriber(i), CallerThreadExecutor.getInstance());
                if (dataSource.hasResult()) {
                    return;
                }
            }
        }

        @Nullable
        private synchronized DataSource<T> getDataSource(int i) {
            return (this.mDataSources == null || i >= this.mDataSources.size()) ? null : this.mDataSources.get(i);
        }

        @Nullable
        private synchronized DataSource<T> getAndClearDataSource(int i) {
            DataSource<T> dataSource = null;
            synchronized (this) {
                if (this.mDataSources != null && i < this.mDataSources.size()) {
                    dataSource = this.mDataSources.set(i, null);
                }
            }
            return dataSource;
        }

        @Nullable
        private synchronized DataSource<T> getDataSourceWithResult() {
            return getDataSource(this.mIndexOfDataSourceWithResult);
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
            int i = 0;
            synchronized (this) {
                if (!super.close()) {
                    return false;
                }
                ArrayList<DataSource<T>> arrayList = this.mDataSources;
                this.mDataSources = null;
                if (arrayList != null) {
                    while (true) {
                        int i2 = i;
                        if (i2 >= arrayList.size()) {
                            break;
                        }
                        closeSafely(arrayList.get(i2));
                        i = i2 + 1;
                    }
                }
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onDataSourceNewResult(int i, DataSource<T> dataSource) {
            maybeSetIndexOfDataSourceWithResult(i, dataSource, dataSource.isFinished());
            if (dataSource == getDataSourceWithResult()) {
                setResult(null, i == 0 && dataSource.isFinished());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onDataSourceFailed(int i, DataSource<T> dataSource) {
            closeSafely(tryGetAndClearDataSource(i, dataSource));
            if (i == 0) {
                setFailure(dataSource.getFailureCause());
            }
        }

        private void maybeSetIndexOfDataSourceWithResult(int i, DataSource<T> dataSource, boolean z) {
            synchronized (this) {
                int i2 = this.mIndexOfDataSourceWithResult;
                if (dataSource == getDataSource(i) && i != this.mIndexOfDataSourceWithResult) {
                    if (getDataSourceWithResult() == null || (z && i < this.mIndexOfDataSourceWithResult)) {
                        this.mIndexOfDataSourceWithResult = i;
                    } else {
                        i = i2;
                    }
                    for (int i3 = this.mIndexOfDataSourceWithResult; i3 > i; i3--) {
                        closeSafely(getAndClearDataSource(i3));
                    }
                }
            }
        }

        @Nullable
        private synchronized DataSource<T> tryGetAndClearDataSource(int i, DataSource<T> dataSource) {
            if (dataSource == getDataSourceWithResult()) {
                dataSource = null;
            } else if (dataSource == getDataSource(i)) {
                dataSource = getAndClearDataSource(i);
            }
            return dataSource;
        }

        private void closeSafely(DataSource<T> dataSource) {
            if (dataSource != null) {
                dataSource.close();
            }
        }

        /* loaded from: classes.dex */
        private class InternalDataSubscriber implements DataSubscriber<T> {
            private int mIndex;

            public InternalDataSubscriber(int i) {
                this.mIndex = i;
            }

            @Override // com.facebook.datasource.DataSubscriber
            public void onNewResult(DataSource<T> dataSource) {
                if (dataSource.hasResult()) {
                    IncreasingQualityDataSource.this.onDataSourceNewResult(this.mIndex, dataSource);
                } else if (dataSource.isFinished()) {
                    IncreasingQualityDataSource.this.onDataSourceFailed(this.mIndex, dataSource);
                }
            }

            @Override // com.facebook.datasource.DataSubscriber
            public void onFailure(DataSource<T> dataSource) {
                IncreasingQualityDataSource.this.onDataSourceFailed(this.mIndex, dataSource);
            }

            @Override // com.facebook.datasource.DataSubscriber
            public void onCancellation(DataSource<T> dataSource) {
            }

            @Override // com.facebook.datasource.DataSubscriber
            public void onProgressUpdate(DataSource<T> dataSource) {
                if (this.mIndex == 0) {
                    IncreasingQualityDataSource.this.setProgress(dataSource.getProgress());
                }
            }
        }
    }
}
