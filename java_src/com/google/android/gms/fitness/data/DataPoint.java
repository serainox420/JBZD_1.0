package com.google.android.gms.fitness.data;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzant;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class DataPoint extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<DataPoint> CREATOR = new zzh();
    private final int versionCode;
    private long zzaSA;
    private long zzaSB;
    private final Value[] zzaSC;
    private DataSource zzaSD;
    private long zzaSE;
    private long zzaSF;
    private final DataSource zzaSh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataPoint(int i, DataSource dataSource, long j, long j2, Value[] valueArr, DataSource dataSource2, long j3, long j4) {
        this.versionCode = i;
        this.zzaSh = dataSource;
        this.zzaSD = dataSource2;
        this.zzaSA = j;
        this.zzaSB = j2;
        this.zzaSC = valueArr;
        this.zzaSE = j3;
        this.zzaSF = j4;
    }

    private DataPoint(DataSource dataSource) {
        this.versionCode = 4;
        this.zzaSh = (DataSource) com.google.android.gms.common.internal.zzac.zzb(dataSource, "Data source cannot be null");
        List<Field> fields = dataSource.getDataType().getFields();
        this.zzaSC = new Value[fields.size()];
        int i = 0;
        Iterator<Field> it = fields.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                this.zzaSC[i2] = new Value(it.next().getFormat());
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public DataPoint(DataSource dataSource, DataSource dataSource2, RawDataPoint rawDataPoint) {
        this(4, dataSource, zza(Long.valueOf(rawDataPoint.zzaUb), 0L), zza(Long.valueOf(rawDataPoint.zzaUc), 0L), rawDataPoint.zzaUd, dataSource2, zza(Long.valueOf(rawDataPoint.zzaUg), 0L), zza(Long.valueOf(rawDataPoint.zzaUh), 0L));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataPoint(List<DataSource> list, RawDataPoint rawDataPoint) {
        this(zzc(list, rawDataPoint.zzaUe), zzc(list, rawDataPoint.zzaUf), rawDataPoint);
    }

    public static DataPoint create(DataSource dataSource) {
        return new DataPoint(dataSource);
    }

    public static DataPoint extract(Intent intent) {
        if (intent == null) {
            return null;
        }
        return (DataPoint) com.google.android.gms.common.internal.safeparcel.zzd.zza(intent, "com.google.android.gms.fitness.EXTRA_DATA_POINT", CREATOR);
    }

    private boolean zzBZ() {
        return getDataType() == DataType.TYPE_LOCATION_SAMPLE;
    }

    private static long zza(Long l, long j) {
        return l != null ? l.longValue() : j;
    }

    private static DataSource zzc(List<DataSource> list, int i) {
        if (i < 0 || i >= list.size()) {
            return null;
        }
        return list.get(i);
    }

    private boolean zzc(DataPoint dataPoint) {
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaSh, dataPoint.zzaSh) && this.zzaSA == dataPoint.zzaSA && this.zzaSB == dataPoint.zzaSB && Arrays.equals(this.zzaSC, dataPoint.zzaSC) && com.google.android.gms.common.internal.zzaa.equal(getOriginalDataSource(), dataPoint.getOriginalDataSource());
    }

    private void zzgz(int i) {
        List<Field> fields = getDataType().getFields();
        int size = fields.size();
        com.google.android.gms.common.internal.zzac.zzb(i == size, "Attempting to insert %s values, but needed %s: %s", Integer.valueOf(i), Integer.valueOf(size), fields);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof DataPoint) && zzc((DataPoint) obj));
    }

    public DataSource getDataSource() {
        return this.zzaSh;
    }

    public DataType getDataType() {
        return this.zzaSh.getDataType();
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaSA, TimeUnit.NANOSECONDS);
    }

    public DataSource getOriginalDataSource() {
        return this.zzaSD != null ? this.zzaSD : this.zzaSh;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaSB, TimeUnit.NANOSECONDS);
    }

    public long getTimestamp(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaSA, TimeUnit.NANOSECONDS);
    }

    public long getTimestampNanos() {
        return this.zzaSA;
    }

    public Value getValue(Field field) {
        return this.zzaSC[getDataType().indexOf(field)];
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaSh, Long.valueOf(this.zzaSA), Long.valueOf(this.zzaSB));
    }

    public DataPoint setFloatValues(float... fArr) {
        zzgz(fArr.length);
        for (int i = 0; i < fArr.length; i++) {
            this.zzaSC[i].setFloat(fArr[i]);
        }
        return this;
    }

    public DataPoint setIntValues(int... iArr) {
        zzgz(iArr.length);
        for (int i = 0; i < iArr.length; i++) {
            this.zzaSC[i].setInt(iArr[i]);
        }
        return this;
    }

    public DataPoint setTimeInterval(long j, long j2, TimeUnit timeUnit) {
        this.zzaSB = timeUnit.toNanos(j);
        this.zzaSA = timeUnit.toNanos(j2);
        return this;
    }

    public DataPoint setTimestamp(long j, TimeUnit timeUnit) {
        this.zzaSA = timeUnit.toNanos(j);
        if (zzBZ() && zzant.zza(timeUnit)) {
            Log.w("Fitness", "Storing location at more than millisecond granularity is not supported. Extra precision is lost as the value is converted to milliseconds.");
            this.zzaSA = zzant.zza(this.zzaSA, TimeUnit.NANOSECONDS, TimeUnit.MILLISECONDS);
        }
        return this;
    }

    public String toString() {
        Object[] objArr = new Object[7];
        objArr[0] = Arrays.toString(this.zzaSC);
        objArr[1] = Long.valueOf(this.zzaSB);
        objArr[2] = Long.valueOf(this.zzaSA);
        objArr[3] = Long.valueOf(this.zzaSE);
        objArr[4] = Long.valueOf(this.zzaSF);
        objArr[5] = this.zzaSh.toDebugString();
        objArr[6] = this.zzaSD != null ? this.zzaSD.toDebugString() : "N/A";
        return String.format("DataPoint{%s@[%s, %s,raw=%s,insert=%s](%s %s)}", objArr);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public Value[] zzCa() {
        return this.zzaSC;
    }

    public DataSource zzCb() {
        return this.zzaSD;
    }

    public long zzCc() {
        return this.zzaSE;
    }

    public long zzCd() {
        return this.zzaSF;
    }

    public void zzCe() {
        com.google.android.gms.common.internal.zzac.zzb(getDataType().getName().equals(getDataSource().getDataType().getName()), "Conflicting data types found %s vs %s", getDataType(), getDataType());
        com.google.android.gms.common.internal.zzac.zzb(this.zzaSA > 0, "Data point does not have the timestamp set: %s", this);
        com.google.android.gms.common.internal.zzac.zzb(this.zzaSB <= this.zzaSA, "Data point with start time greater than end time found: %s", this);
    }

    public long zzCf() {
        return this.zzaSB;
    }

    public Value zzgy(int i) {
        DataType dataType = getDataType();
        if (i < 0 || i >= dataType.getFields().size()) {
            throw new IllegalArgumentException(String.format("fieldIndex %s is out of range for %s", Integer.valueOf(i), dataType));
        }
        return this.zzaSC[i];
    }
}
