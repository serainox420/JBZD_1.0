package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
/* loaded from: classes2.dex */
public class DailyTotalResult extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<DailyTotalResult> CREATOR = new zzb();
    private final DataSet zzaUn;
    private final int zzaiI;
    private final Status zzair;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DailyTotalResult(int i, Status status, DataSet dataSet) {
        this.zzaiI = i;
        this.zzair = status;
        this.zzaUn = dataSet;
    }

    public DailyTotalResult(DataSet dataSet, Status status) {
        this.zzaiI = 1;
        this.zzair = status;
        this.zzaUn = dataSet;
    }

    public static DailyTotalResult zza(Status status, DataType dataType) {
        return new DailyTotalResult(DataSet.create(new DataSource.Builder().setDataType(dataType).setType(1).build()), status);
    }

    private boolean zzb(DailyTotalResult dailyTotalResult) {
        return this.zzair.equals(dailyTotalResult.zzair) && zzaa.equal(this.zzaUn, dailyTotalResult.zzaUn);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof DailyTotalResult) && zzb((DailyTotalResult) obj));
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    public DataSet getTotal() {
        return this.zzaUn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzair, this.zzaUn);
    }

    public String toString() {
        return zzaa.zzv(this).zzg("status", this.zzair).zzg("dataPoint", this.zzaUn).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
