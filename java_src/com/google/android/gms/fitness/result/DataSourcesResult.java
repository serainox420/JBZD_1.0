package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class DataSourcesResult extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<DataSourcesResult> CREATOR = new zzf();
    private final int versionCode;
    private final List<DataSource> zzaWX;
    private final Status zzahw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataSourcesResult(int i, List<DataSource> list, Status status) {
        this.versionCode = i;
        this.zzaWX = Collections.unmodifiableList(list);
        this.zzahw = status;
    }

    public DataSourcesResult(List<DataSource> list, Status status) {
        this.versionCode = 3;
        this.zzaWX = Collections.unmodifiableList(list);
        this.zzahw = status;
    }

    public static DataSourcesResult zzae(Status status) {
        return new DataSourcesResult(Collections.emptyList(), status);
    }

    private boolean zzb(DataSourcesResult dataSourcesResult) {
        return this.zzahw.equals(dataSourcesResult.zzahw) && zzaa.equal(this.zzaWX, dataSourcesResult.zzaWX);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof DataSourcesResult) && zzb((DataSourcesResult) obj));
    }

    public List<DataSource> getDataSources() {
        return this.zzaWX;
    }

    public List<DataSource> getDataSources(DataType dataType) {
        ArrayList arrayList = new ArrayList();
        for (DataSource dataSource : this.zzaWX) {
            if (dataSource.getDataType().equals(dataType)) {
                arrayList.add(dataSource);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzahw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzahw, this.zzaWX);
    }

    public String toString() {
        return zzaa.zzv(this).zzg("status", this.zzahw).zzg("dataSources", this.zzaWX).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
