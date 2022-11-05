package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class Bucket extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<Bucket> CREATOR = new zze();
    public static final int TYPE_ACTIVITY_SEGMENT = 4;
    public static final int TYPE_ACTIVITY_TYPE = 3;
    public static final int TYPE_SESSION = 2;
    public static final int TYPE_TIME = 1;
    private final Session zzaSj;
    private final long zzaSt;
    private final int zzaSu;
    private final List<DataSet> zzaSv;
    private final int zzaSw;
    private boolean zzaSx;
    private final long zzafe;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bucket(int i, long j, long j2, Session session, int i2, List<DataSet> list, int i3, boolean z) {
        this.zzaSx = false;
        this.zzaiI = i;
        this.zzafe = j;
        this.zzaSt = j2;
        this.zzaSj = session;
        this.zzaSu = i2;
        this.zzaSv = list;
        this.zzaSw = i3;
        this.zzaSx = z;
    }

    public Bucket(RawBucket rawBucket, List<DataSource> list) {
        this(2, rawBucket.zzafe, rawBucket.zzaSt, rawBucket.zzaSj, rawBucket.zzaUa, zza(rawBucket.zzaSv, list), rawBucket.zzaSw, rawBucket.zzaSx);
    }

    private static List<DataSet> zza(Collection<RawDataSet> collection, List<DataSource> list) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (RawDataSet rawDataSet : collection) {
            arrayList.add(new DataSet(rawDataSet, list));
        }
        return arrayList;
    }

    private boolean zza(Bucket bucket) {
        return this.zzafe == bucket.zzafe && this.zzaSt == bucket.zzaSt && this.zzaSu == bucket.zzaSu && com.google.android.gms.common.internal.zzaa.equal(this.zzaSv, bucket.zzaSv) && this.zzaSw == bucket.zzaSw && this.zzaSx == bucket.zzaSx;
    }

    public static String zzgw(int i) {
        switch (i) {
            case 0:
                return "unknown";
            case 1:
                return "time";
            case 2:
                return "session";
            case 3:
                return "type";
            case 4:
                return "segment";
            default:
                return "bug";
        }
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof Bucket) && zza((Bucket) obj));
    }

    public String getActivity() {
        return com.google.android.gms.fitness.zza.getName(this.zzaSu);
    }

    public int getBucketType() {
        return this.zzaSw;
    }

    public DataSet getDataSet(DataType dataType) {
        for (DataSet dataSet : this.zzaSv) {
            if (dataSet.getDataType().equals(dataType)) {
                return dataSet;
            }
        }
        return null;
    }

    public List<DataSet> getDataSets() {
        return this.zzaSv;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaSt, TimeUnit.MILLISECONDS);
    }

    public Session getSession() {
        return this.zzaSj;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzafe, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Long.valueOf(this.zzafe), Long.valueOf(this.zzaSt), Integer.valueOf(this.zzaSu), Integer.valueOf(this.zzaSw));
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("startTime", Long.valueOf(this.zzafe)).zzg("endTime", Long.valueOf(this.zzaSt)).zzg("activity", Integer.valueOf(this.zzaSu)).zzg("dataSets", this.zzaSv).zzg("bucketType", zzgw(this.zzaSw)).zzg("serverHasMoreData", Boolean.valueOf(this.zzaSx)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public long zzAm() {
        return this.zzaSt;
    }

    public int zzBW() {
        return this.zzaSu;
    }

    public boolean zzBX() {
        if (this.zzaSx) {
            return true;
        }
        for (DataSet dataSet : this.zzaSv) {
            if (dataSet.zzBX()) {
                return true;
            }
        }
        return false;
    }

    public boolean zzb(Bucket bucket) {
        return this.zzafe == bucket.zzafe && this.zzaSt == bucket.zzaSt && this.zzaSu == bucket.zzaSu && this.zzaSw == bucket.zzaSw;
    }

    public long zzqn() {
        return this.zzafe;
    }
}
