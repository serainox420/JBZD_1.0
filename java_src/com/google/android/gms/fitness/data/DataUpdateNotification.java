package com.google.android.gms.fitness.data;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class DataUpdateNotification extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final String ACTION = "com.google.android.gms.fitness.DATA_UPDATE_NOTIFICATION";
    public static final Parcelable.Creator<DataUpdateNotification> CREATOR = new zzm();
    public static final String EXTRA_DATA_UPDATE_NOTIFICATION = "vnd.google.fitness.data_udpate_notification";
    public static final int OPERATION_DELETE = 2;
    public static final int OPERATION_INSERT = 1;
    public static final int OPERATION_UPDATE = 3;
    private final long zzaTf;
    private final long zzaTg;
    private final int zzaTh;
    private final DataSource zzaTi;
    private final DataType zzaTj;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataUpdateNotification(int i, long j, long j2, int i2, DataSource dataSource, DataType dataType) {
        this.zzaiI = i;
        this.zzaTf = j;
        this.zzaTg = j2;
        this.zzaTh = i2;
        this.zzaTi = dataSource;
        this.zzaTj = dataType;
    }

    public static DataUpdateNotification getDataUpdateNotification(Intent intent) {
        return (DataUpdateNotification) com.google.android.gms.common.internal.safeparcel.zzd.zza(intent, EXTRA_DATA_UPDATE_NOTIFICATION, CREATOR);
    }

    private boolean zza(DataUpdateNotification dataUpdateNotification) {
        return this.zzaTf == dataUpdateNotification.zzaTf && this.zzaTg == dataUpdateNotification.zzaTg && this.zzaTh == dataUpdateNotification.zzaTh && com.google.android.gms.common.internal.zzaa.equal(this.zzaTi, dataUpdateNotification.zzaTi) && com.google.android.gms.common.internal.zzaa.equal(this.zzaTj, dataUpdateNotification.zzaTj);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof DataUpdateNotification) && zza((DataUpdateNotification) obj));
    }

    public DataSource getDataSource() {
        return this.zzaTi;
    }

    public DataType getDataType() {
        return this.zzaTj;
    }

    public int getOperationType() {
        return this.zzaTh;
    }

    public long getUpdateEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaTg, TimeUnit.NANOSECONDS);
    }

    public long getUpdateStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaTf, TimeUnit.NANOSECONDS);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Long.valueOf(this.zzaTf), Long.valueOf(this.zzaTg), Integer.valueOf(this.zzaTh), this.zzaTi, this.zzaTj);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("updateStartTimeNanos", Long.valueOf(this.zzaTf)).zzg("updateEndTimeNanos", Long.valueOf(this.zzaTg)).zzg("operationType", Integer.valueOf(this.zzaTh)).zzg("dataSource", this.zzaTi).zzg("dataType", this.zzaTj).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }

    public long zzCl() {
        return this.zzaTf;
    }

    public long zzCm() {
        return this.zzaTg;
    }
}
