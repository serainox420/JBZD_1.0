package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.internal.zzapf;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class DataUpdateRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<DataUpdateRequest> CREATOR = new zzs();
    private final long zzaSt;
    private final DataSet zzaUn;
    private final zzapf zzaVt;
    private final long zzafe;
    private final int zzaiI;

    /* loaded from: classes2.dex */
    public static class Builder {
        private long zzaSt;
        private DataSet zzaUn;
        private long zzafe;

        private void zzCY() {
            com.google.android.gms.common.internal.zzac.zza(this.zzafe, "Must set a non-zero value for startTimeMillis/startTime");
            com.google.android.gms.common.internal.zzac.zza(this.zzaSt, "Must set a non-zero value for endTimeMillis/endTime");
            com.google.android.gms.common.internal.zzac.zzb(this.zzaUn, "Must set the data set");
            for (DataPoint dataPoint : this.zzaUn.getDataPoints()) {
                long startTime = dataPoint.getStartTime(TimeUnit.MILLISECONDS);
                long endTime = dataPoint.getEndTime(TimeUnit.MILLISECONDS);
                com.google.android.gms.common.internal.zzac.zza(!((startTime > endTime ? 1 : (startTime == endTime ? 0 : -1)) > 0 || (((startTime > 0L ? 1 : (startTime == 0L ? 0 : -1)) != 0 && (startTime > this.zzafe ? 1 : (startTime == this.zzafe ? 0 : -1)) < 0) || (((startTime > 0L ? 1 : (startTime == 0L ? 0 : -1)) != 0 && (startTime > this.zzaSt ? 1 : (startTime == this.zzaSt ? 0 : -1)) > 0) || (endTime > this.zzaSt ? 1 : (endTime == this.zzaSt ? 0 : -1)) > 0 || (endTime > this.zzafe ? 1 : (endTime == this.zzafe ? 0 : -1)) < 0))), "Data Point's startTimeMillis %d, endTimeMillis %d should lie between timeRange provided in the request. StartTimeMillis %d, EndTimeMillis: %d", Long.valueOf(startTime), Long.valueOf(endTime), Long.valueOf(this.zzafe), Long.valueOf(this.zzaSt));
            }
        }

        public DataUpdateRequest build() {
            zzCY();
            return new DataUpdateRequest(this);
        }

        public Builder setDataSet(DataSet dataSet) {
            com.google.android.gms.common.internal.zzac.zzb(dataSet, "Must set the data set");
            this.zzaUn = dataSet;
            return this;
        }

        public Builder setTimeInterval(long j, long j2, TimeUnit timeUnit) {
            com.google.android.gms.common.internal.zzac.zzb(j > 0, "Invalid start time :%d", Long.valueOf(j));
            com.google.android.gms.common.internal.zzac.zzb(j2 >= j, "Invalid end time :%d", Long.valueOf(j2));
            this.zzafe = timeUnit.toMillis(j);
            this.zzaSt = timeUnit.toMillis(j2);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataUpdateRequest(int i, long j, long j2, DataSet dataSet, IBinder iBinder) {
        this.zzaiI = i;
        this.zzafe = j;
        this.zzaSt = j2;
        this.zzaUn = dataSet;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    public DataUpdateRequest(long j, long j2, DataSet dataSet, IBinder iBinder) {
        this.zzaiI = 1;
        this.zzafe = j;
        this.zzaSt = j2;
        this.zzaUn = dataSet;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    private DataUpdateRequest(Builder builder) {
        this(builder.zzafe, builder.zzaSt, builder.zzaUn, null);
    }

    public DataUpdateRequest(DataUpdateRequest dataUpdateRequest, IBinder iBinder) {
        this(dataUpdateRequest.zzqn(), dataUpdateRequest.zzAm(), dataUpdateRequest.getDataSet(), iBinder);
    }

    private boolean zzb(DataUpdateRequest dataUpdateRequest) {
        return this.zzafe == dataUpdateRequest.zzafe && this.zzaSt == dataUpdateRequest.zzaSt && com.google.android.gms.common.internal.zzaa.equal(this.zzaUn, dataUpdateRequest.zzaUn);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof DataUpdateRequest) && zzb((DataUpdateRequest) obj));
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVt == null) {
            return null;
        }
        return this.zzaVt.asBinder();
    }

    public DataSet getDataSet() {
        return this.zzaUn;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaSt, TimeUnit.MILLISECONDS);
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzafe, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Long.valueOf(this.zzafe), Long.valueOf(this.zzaSt), this.zzaUn);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("startTimeMillis", Long.valueOf(this.zzafe)).zzg("endTimeMillis", Long.valueOf(this.zzaSt)).zzg("dataSet", this.zzaUn).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzs.zza(this, parcel, i);
    }

    public long zzAm() {
        return this.zzaSt;
    }

    public long zzqn() {
        return this.zzafe;
    }
}
