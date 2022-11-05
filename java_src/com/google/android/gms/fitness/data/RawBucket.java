package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
@KeepName
/* loaded from: classes2.dex */
public final class RawBucket extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<RawBucket> CREATOR = new zzv();
    public final Session zzaSj;
    public final long zzaSt;
    public final List<RawDataSet> zzaSv;
    public final int zzaSw;
    public final boolean zzaSx;
    public final int zzaUa;
    public final long zzafe;
    final int zzaiI;

    public RawBucket(int i, long j, long j2, Session session, int i2, List<RawDataSet> list, int i3, boolean z) {
        this.zzaiI = i;
        this.zzafe = j;
        this.zzaSt = j2;
        this.zzaSj = session;
        this.zzaUa = i2;
        this.zzaSv = list;
        this.zzaSw = i3;
        this.zzaSx = z;
    }

    public RawBucket(Bucket bucket, List<DataSource> list, List<DataType> list2) {
        this.zzaiI = 2;
        this.zzafe = bucket.getStartTime(TimeUnit.MILLISECONDS);
        this.zzaSt = bucket.getEndTime(TimeUnit.MILLISECONDS);
        this.zzaSj = bucket.getSession();
        this.zzaUa = bucket.zzBW();
        this.zzaSw = bucket.getBucketType();
        this.zzaSx = bucket.zzBX();
        List<DataSet> dataSets = bucket.getDataSets();
        this.zzaSv = new ArrayList(dataSets.size());
        for (DataSet dataSet : dataSets) {
            this.zzaSv.add(new RawDataSet(dataSet, list, list2));
        }
    }

    private boolean zza(RawBucket rawBucket) {
        return this.zzafe == rawBucket.zzafe && this.zzaSt == rawBucket.zzaSt && this.zzaUa == rawBucket.zzaUa && com.google.android.gms.common.internal.zzaa.equal(this.zzaSv, rawBucket.zzaSv) && this.zzaSw == rawBucket.zzaSw && this.zzaSx == rawBucket.zzaSx;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof RawBucket) && zza((RawBucket) obj));
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Long.valueOf(this.zzafe), Long.valueOf(this.zzaSt), Integer.valueOf(this.zzaSw));
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("startTime", Long.valueOf(this.zzafe)).zzg("endTime", Long.valueOf(this.zzaSt)).zzg("activity", Integer.valueOf(this.zzaUa)).zzg("dataSets", this.zzaSv).zzg("bucketType", Integer.valueOf(this.zzaSw)).zzg("serverHasMoreData", Boolean.valueOf(this.zzaSx)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzv.zza(this, parcel, i);
    }
}
