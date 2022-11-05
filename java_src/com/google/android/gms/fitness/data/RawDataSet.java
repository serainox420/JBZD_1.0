package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.zzanu;
import java.util.List;
@KeepName
/* loaded from: classes2.dex */
public final class RawDataSet extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<RawDataSet> CREATOR = new zzx();
    public final boolean zzaSx;
    public final int zzaUe;
    public final int zzaUi;
    public final List<RawDataPoint> zzaUj;
    final int zzaiI;

    public RawDataSet(int i, int i2, int i3, List<RawDataPoint> list, boolean z) {
        this.zzaiI = i;
        this.zzaUe = i2;
        this.zzaUi = i3;
        this.zzaUj = list;
        this.zzaSx = z;
    }

    public RawDataSet(DataSet dataSet, List<DataSource> list, List<DataType> list2) {
        this.zzaiI = 3;
        this.zzaUj = dataSet.zzC(list);
        this.zzaSx = dataSet.zzBX();
        this.zzaUe = zzanu.zza(dataSet.getDataSource(), list);
        this.zzaUi = zzanu.zza(dataSet.getDataType(), list2);
    }

    private boolean zza(RawDataSet rawDataSet) {
        return this.zzaUe == rawDataSet.zzaUe && this.zzaSx == rawDataSet.zzaSx && com.google.android.gms.common.internal.zzaa.equal(this.zzaUj, rawDataSet.zzaUj);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof RawDataSet) && zza((RawDataSet) obj));
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzaUe));
    }

    public String toString() {
        return String.format("RawDataSet{%s@[%s]}", Integer.valueOf(this.zzaUe), this.zzaUj);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzx.zza(this, parcel, i);
    }
}
