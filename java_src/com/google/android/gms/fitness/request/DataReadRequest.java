package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Device;
import com.google.android.gms.internal.zzaom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class DataReadRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<DataReadRequest> CREATOR = new zzi();
    public static final int NO_LIMIT = 0;
    private final List<DataType> zzaSs;
    private final long zzaSt;
    private final int zzaSw;
    private final List<DataType> zzaVB;
    private final List<DataSource> zzaVC;
    private final long zzaVD;
    private final DataSource zzaVE;
    private final int zzaVF;
    private final boolean zzaVG;
    private final boolean zzaVH;
    private final zzaom zzaVI;
    private final List<Device> zzaVJ;
    private final List<Integer> zzaVK;
    private final List<DataSource> zzaVw;
    private final long zzafe;
    private final int zzaiI;

    /* loaded from: classes2.dex */
    public static class Builder {
        private long zzaSt;
        private DataSource zzaVE;
        private long zzafe;
        private List<DataType> zzaSs = new ArrayList();
        private List<DataSource> zzaVw = new ArrayList();
        private List<DataType> zzaVB = new ArrayList();
        private List<DataSource> zzaVC = new ArrayList();
        private int zzaSw = 0;
        private long zzaVD = 0;
        private int zzaVF = 0;
        private boolean zzaVG = false;
        private boolean zzaVH = false;
        private final List<Device> zzaVJ = new ArrayList();
        private final List<Integer> zzaVK = new ArrayList();

        public Builder addFilteredDataQualityStandard(int i) {
            com.google.android.gms.common.internal.zzac.zzb(this.zzaVJ.isEmpty(), "Cannot add data quality standard filter when filtering by device.");
            this.zzaVK.add(Integer.valueOf(i));
            return this;
        }

        public Builder aggregate(DataSource dataSource, DataType dataType) {
            com.google.android.gms.common.internal.zzac.zzb(dataSource, "Attempting to add a null data source");
            com.google.android.gms.common.internal.zzac.zza(!this.zzaVw.contains(dataSource), "Cannot add the same data source for aggregated and detailed");
            DataType dataType2 = dataSource.getDataType();
            List<DataType> aggregatesForInput = DataType.getAggregatesForInput(dataType2);
            com.google.android.gms.common.internal.zzac.zzb(!aggregatesForInput.isEmpty(), "Unsupported input data type specified for aggregation: %s", dataType2);
            com.google.android.gms.common.internal.zzac.zzb(aggregatesForInput.contains(dataType), "Invalid output aggregate data type specified: %s -> %s", dataType2, dataType);
            if (!this.zzaVC.contains(dataSource)) {
                this.zzaVC.add(dataSource);
            }
            return this;
        }

        public Builder aggregate(DataType dataType, DataType dataType2) {
            com.google.android.gms.common.internal.zzac.zzb(dataType, "Attempting to use a null data type");
            com.google.android.gms.common.internal.zzac.zza(!this.zzaSs.contains(dataType), "Cannot add the same data type as aggregated and detailed");
            List<DataType> aggregatesForInput = DataType.getAggregatesForInput(dataType);
            com.google.android.gms.common.internal.zzac.zzb(!aggregatesForInput.isEmpty(), "Unsupported input data type specified for aggregation: %s", dataType);
            com.google.android.gms.common.internal.zzac.zzb(aggregatesForInput.contains(dataType2), "Invalid output aggregate data type specified: %s -> %s", dataType, dataType2);
            if (!this.zzaVB.contains(dataType)) {
                this.zzaVB.add(dataType);
            }
            return this;
        }

        public Builder bucketByActivitySegment(int i, TimeUnit timeUnit) {
            com.google.android.gms.common.internal.zzac.zzb(this.zzaSw == 0, "Bucketing strategy already set to %s", Integer.valueOf(this.zzaSw));
            com.google.android.gms.common.internal.zzac.zzb(i > 0, "Must specify a valid minimum duration for an activity segment: %d", Integer.valueOf(i));
            this.zzaSw = 4;
            this.zzaVD = timeUnit.toMillis(i);
            return this;
        }

        public Builder bucketByActivitySegment(int i, TimeUnit timeUnit, DataSource dataSource) {
            com.google.android.gms.common.internal.zzac.zzb(this.zzaSw == 0, "Bucketing strategy already set to %s", Integer.valueOf(this.zzaSw));
            com.google.android.gms.common.internal.zzac.zzb(i > 0, "Must specify a valid minimum duration for an activity segment: %d", Integer.valueOf(i));
            com.google.android.gms.common.internal.zzac.zzb(dataSource != null, "Invalid activity data source specified");
            com.google.android.gms.common.internal.zzac.zzb(dataSource.getDataType().equals(DataType.TYPE_ACTIVITY_SEGMENT), "Invalid activity data source specified: %s", dataSource);
            this.zzaVE = dataSource;
            this.zzaSw = 4;
            this.zzaVD = timeUnit.toMillis(i);
            return this;
        }

        public Builder bucketByActivityType(int i, TimeUnit timeUnit) {
            com.google.android.gms.common.internal.zzac.zzb(this.zzaSw == 0, "Bucketing strategy already set to %s", Integer.valueOf(this.zzaSw));
            com.google.android.gms.common.internal.zzac.zzb(i > 0, "Must specify a valid minimum duration for an activity segment: %d", Integer.valueOf(i));
            this.zzaSw = 3;
            this.zzaVD = timeUnit.toMillis(i);
            return this;
        }

        public Builder bucketByActivityType(int i, TimeUnit timeUnit, DataSource dataSource) {
            com.google.android.gms.common.internal.zzac.zzb(this.zzaSw == 0, "Bucketing strategy already set to %s", Integer.valueOf(this.zzaSw));
            com.google.android.gms.common.internal.zzac.zzb(i > 0, "Must specify a valid minimum duration for an activity segment: %d", Integer.valueOf(i));
            com.google.android.gms.common.internal.zzac.zzb(dataSource != null, "Invalid activity data source specified");
            com.google.android.gms.common.internal.zzac.zzb(dataSource.getDataType().equals(DataType.TYPE_ACTIVITY_SEGMENT), "Invalid activity data source specified: %s", dataSource);
            this.zzaVE = dataSource;
            this.zzaSw = 3;
            this.zzaVD = timeUnit.toMillis(i);
            return this;
        }

        public Builder bucketBySession(int i, TimeUnit timeUnit) {
            com.google.android.gms.common.internal.zzac.zzb(this.zzaSw == 0, "Bucketing strategy already set to %s", Integer.valueOf(this.zzaSw));
            com.google.android.gms.common.internal.zzac.zzb(i > 0, "Must specify a valid minimum duration for an activity segment: %d", Integer.valueOf(i));
            this.zzaSw = 2;
            this.zzaVD = timeUnit.toMillis(i);
            return this;
        }

        public Builder bucketByTime(int i, TimeUnit timeUnit) {
            com.google.android.gms.common.internal.zzac.zzb(this.zzaSw == 0, "Bucketing strategy already set to %s", Integer.valueOf(this.zzaSw));
            com.google.android.gms.common.internal.zzac.zzb(i > 0, "Must specify a valid minimum duration for an activity segment: %d", Integer.valueOf(i));
            this.zzaSw = 1;
            this.zzaVD = timeUnit.toMillis(i);
            return this;
        }

        public DataReadRequest build() {
            boolean z = true;
            com.google.android.gms.common.internal.zzac.zza(!this.zzaVw.isEmpty() || !this.zzaSs.isEmpty() || !this.zzaVC.isEmpty() || !this.zzaVB.isEmpty(), "Must add at least one data source (aggregated or detailed)");
            com.google.android.gms.common.internal.zzac.zza(this.zzafe > 0, "Invalid start time: %s", Long.valueOf(this.zzafe));
            com.google.android.gms.common.internal.zzac.zza(this.zzaSt > 0 && this.zzaSt > this.zzafe, "Invalid end time: %s", Long.valueOf(this.zzaSt));
            boolean z2 = this.zzaVC.isEmpty() && this.zzaVB.isEmpty();
            if ((!z2 || this.zzaSw != 0) && (z2 || this.zzaSw == 0)) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Must specify a valid bucketing strategy while requesting aggregation");
            return new DataReadRequest(this);
        }

        public Builder enableServerQueries() {
            this.zzaVH = true;
            return this;
        }

        public Builder read(DataSource dataSource) {
            com.google.android.gms.common.internal.zzac.zzb(dataSource, "Attempting to add a null data source");
            com.google.android.gms.common.internal.zzac.zzb(!this.zzaVC.contains(dataSource), "Cannot add the same data source as aggregated and detailed");
            if (!this.zzaVw.contains(dataSource)) {
                this.zzaVw.add(dataSource);
            }
            return this;
        }

        public Builder read(DataType dataType) {
            com.google.android.gms.common.internal.zzac.zzb(dataType, "Attempting to use a null data type");
            com.google.android.gms.common.internal.zzac.zza(!this.zzaVB.contains(dataType), "Cannot add the same data type as aggregated and detailed");
            if (!this.zzaSs.contains(dataType)) {
                this.zzaSs.add(dataType);
            }
            return this;
        }

        public Builder setLimit(int i) {
            com.google.android.gms.common.internal.zzac.zzb(i > 0, "Invalid limit %d is specified", Integer.valueOf(i));
            this.zzaVF = i;
            return this;
        }

        public Builder setTimeRange(long j, long j2, TimeUnit timeUnit) {
            this.zzafe = timeUnit.toMillis(j);
            this.zzaSt = timeUnit.toMillis(j2);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataReadRequest(int i, List<DataType> list, List<DataSource> list2, long j, long j2, List<DataType> list3, List<DataSource> list4, int i2, long j3, DataSource dataSource, int i3, boolean z, boolean z2, IBinder iBinder, List<Device> list5, List<Integer> list6) {
        this.zzaiI = i;
        this.zzaSs = list;
        this.zzaVw = list2;
        this.zzafe = j;
        this.zzaSt = j2;
        this.zzaVB = list3;
        this.zzaVC = list4;
        this.zzaSw = i2;
        this.zzaVD = j3;
        this.zzaVE = dataSource;
        this.zzaVF = i3;
        this.zzaVG = z;
        this.zzaVH = z2;
        this.zzaVI = iBinder == null ? null : zzaom.zza.zzcq(iBinder);
        this.zzaVJ = list5 == null ? Collections.emptyList() : list5;
        this.zzaVK = list6 == null ? Collections.emptyList() : list6;
    }

    private DataReadRequest(Builder builder) {
        this(builder.zzaSs, builder.zzaVw, builder.zzafe, builder.zzaSt, builder.zzaVB, builder.zzaVC, builder.zzaSw, builder.zzaVD, builder.zzaVE, builder.zzaVF, false, builder.zzaVH, null, builder.zzaVJ, builder.zzaVK);
    }

    public DataReadRequest(DataReadRequest dataReadRequest, zzaom zzaomVar) {
        this(dataReadRequest.zzaSs, dataReadRequest.zzaVw, dataReadRequest.zzafe, dataReadRequest.zzaSt, dataReadRequest.zzaVB, dataReadRequest.zzaVC, dataReadRequest.zzaSw, dataReadRequest.zzaVD, dataReadRequest.zzaVE, dataReadRequest.zzaVF, dataReadRequest.zzaVG, dataReadRequest.zzaVH, zzaomVar, dataReadRequest.zzaVJ, dataReadRequest.zzaVK);
    }

    public DataReadRequest(List<DataType> list, List<DataSource> list2, long j, long j2, List<DataType> list3, List<DataSource> list4, int i, long j3, DataSource dataSource, int i2, boolean z, boolean z2, zzaom zzaomVar, List<Device> list5, List<Integer> list6) {
        this(6, list, list2, j, j2, list3, list4, i, j3, dataSource, i2, z, z2, zzaomVar == null ? null : zzaomVar.asBinder(), list5, list6);
    }

    private boolean zzb(DataReadRequest dataReadRequest) {
        return this.zzaSs.equals(dataReadRequest.zzaSs) && this.zzaVw.equals(dataReadRequest.zzaVw) && this.zzafe == dataReadRequest.zzafe && this.zzaSt == dataReadRequest.zzaSt && this.zzaSw == dataReadRequest.zzaSw && this.zzaVC.equals(dataReadRequest.zzaVC) && this.zzaVB.equals(dataReadRequest.zzaVB) && com.google.android.gms.common.internal.zzaa.equal(this.zzaVE, dataReadRequest.zzaVE) && this.zzaVD == dataReadRequest.zzaVD && this.zzaVH == dataReadRequest.zzaVH && this.zzaVF == dataReadRequest.zzaVF && this.zzaVG == dataReadRequest.zzaVG && com.google.android.gms.common.internal.zzaa.equal(this.zzaVI, dataReadRequest.zzaVI) && com.google.android.gms.common.internal.zzaa.equal(this.zzaVJ, dataReadRequest.zzaVJ) && com.google.android.gms.common.internal.zzaa.equal(this.zzaVK, dataReadRequest.zzaVK);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof DataReadRequest) && zzb((DataReadRequest) obj));
    }

    public DataSource getActivityDataSource() {
        return this.zzaVE;
    }

    public List<DataSource> getAggregatedDataSources() {
        return this.zzaVC;
    }

    public List<DataType> getAggregatedDataTypes() {
        return this.zzaVB;
    }

    public long getBucketDuration(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaVD, TimeUnit.MILLISECONDS);
    }

    public int getBucketType() {
        return this.zzaSw;
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVI == null) {
            return null;
        }
        return this.zzaVI.asBinder();
    }

    public List<DataSource> getDataSources() {
        return this.zzaVw;
    }

    public List<DataType> getDataTypes() {
        return this.zzaSs;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaSt, TimeUnit.MILLISECONDS);
    }

    public List<Integer> getFilteredDataQualityStandards() {
        return this.zzaVK;
    }

    public int getLimit() {
        return this.zzaVF;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzafe, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzaSw), Long.valueOf(this.zzafe), Long.valueOf(this.zzaSt));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DataReadRequest{");
        if (!this.zzaSs.isEmpty()) {
            for (DataType dataType : this.zzaSs) {
                sb.append(dataType.zzCk()).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            }
        }
        if (!this.zzaVw.isEmpty()) {
            for (DataSource dataSource : this.zzaVw) {
                sb.append(dataSource.toDebugString()).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            }
        }
        if (this.zzaSw != 0) {
            sb.append("bucket by ").append(Bucket.zzgw(this.zzaSw));
            if (this.zzaVD > 0) {
                sb.append(" >").append(this.zzaVD).append("ms");
            }
            sb.append(": ");
        }
        if (!this.zzaVB.isEmpty()) {
            for (DataType dataType2 : this.zzaVB) {
                sb.append(dataType2.zzCk()).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            }
        }
        if (!this.zzaVC.isEmpty()) {
            for (DataSource dataSource2 : this.zzaVC) {
                sb.append(dataSource2.toDebugString()).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            }
        }
        sb.append(String.format("(%tF %tT - %tF %tT)", Long.valueOf(this.zzafe), Long.valueOf(this.zzafe), Long.valueOf(this.zzaSt), Long.valueOf(this.zzaSt)));
        if (this.zzaVE != null) {
            sb.append("activities: ").append(this.zzaVE.toDebugString());
        }
        if (!this.zzaVK.isEmpty()) {
            sb.append("quality: ");
            for (Integer num : this.zzaVK) {
                sb.append(DataSource.zzgD(num.intValue())).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            }
        }
        if (this.zzaVH) {
            sb.append(" +server");
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public long zzAm() {
        return this.zzaSt;
    }

    public boolean zzCS() {
        return this.zzaVH;
    }

    public boolean zzCT() {
        return this.zzaVG;
    }

    public long zzCU() {
        return this.zzaVD;
    }

    public List<Device> zzCV() {
        return this.zzaVJ;
    }

    public long zzqn() {
        return this.zzafe;
    }
}
