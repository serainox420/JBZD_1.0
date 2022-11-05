package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawBucket;
import com.google.android.gms.fitness.data.RawDataSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class DataReadResult extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<DataReadResult> CREATOR = new zzc();
    private final List<DataSet> zzaSv;
    private final List<Bucket> zzaWP;
    private int zzaWQ;
    private final List<DataSource> zzaWR;
    private final List<DataType> zzaWS;
    private final int zzaiI;
    private final Status zzair;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataReadResult(int i, List<RawDataSet> list, Status status, List<RawBucket> list2, int i2, List<DataSource> list3, List<DataType> list4) {
        this.zzaiI = i;
        this.zzair = status;
        this.zzaWQ = i2;
        this.zzaWR = list3;
        this.zzaWS = list4;
        this.zzaSv = new ArrayList(list.size());
        for (RawDataSet rawDataSet : list) {
            this.zzaSv.add(new DataSet(rawDataSet, list3));
        }
        this.zzaWP = new ArrayList(list2.size());
        for (RawBucket rawBucket : list2) {
            this.zzaWP.add(new Bucket(rawBucket, list3));
        }
    }

    public DataReadResult(List<DataSet> list, List<Bucket> list2, Status status) {
        this.zzaiI = 5;
        this.zzaSv = list;
        this.zzair = status;
        this.zzaWP = list2;
        this.zzaWQ = 1;
        this.zzaWR = new ArrayList();
        this.zzaWS = new ArrayList();
    }

    public static DataReadResult zza(Status status, List<DataType> list, List<DataSource> list2) {
        ArrayList arrayList = new ArrayList();
        for (DataSource dataSource : list2) {
            arrayList.add(DataSet.create(dataSource));
        }
        for (DataType dataType : list) {
            arrayList.add(DataSet.create(new DataSource.Builder().setDataType(dataType).setType(1).setName("Default").build()));
        }
        return new DataReadResult(arrayList, Collections.emptyList(), status);
    }

    private void zza(Bucket bucket, List<Bucket> list) {
        for (Bucket bucket2 : list) {
            if (bucket2.zzb(bucket)) {
                for (DataSet dataSet : bucket.getDataSets()) {
                    zza(dataSet, bucket2.getDataSets());
                }
                return;
            }
        }
        this.zzaWP.add(bucket);
    }

    private void zza(DataSet dataSet, List<DataSet> list) {
        for (DataSet dataSet2 : list) {
            if (dataSet2.getDataSource().equals(dataSet.getDataSource())) {
                dataSet2.zzb(dataSet.getDataPoints());
                return;
            }
        }
        list.add(dataSet);
    }

    private boolean zzc(DataReadResult dataReadResult) {
        return this.zzair.equals(dataReadResult.zzair) && zzaa.equal(this.zzaSv, dataReadResult.zzaSv) && zzaa.equal(this.zzaWP, dataReadResult.zzaWP);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof DataReadResult) && zzc((DataReadResult) obj));
    }

    public List<Bucket> getBuckets() {
        return this.zzaWP;
    }

    public DataSet getDataSet(DataSource dataSource) {
        for (DataSet dataSet : this.zzaSv) {
            if (dataSource.equals(dataSet.getDataSource())) {
                return dataSet;
            }
        }
        return DataSet.create(dataSource);
    }

    public DataSet getDataSet(DataType dataType) {
        for (DataSet dataSet : this.zzaSv) {
            if (dataType.equals(dataSet.getDataType())) {
                return dataSet;
            }
        }
        return DataSet.create(new DataSource.Builder().setDataType(dataType).setType(1).build());
    }

    public List<DataSet> getDataSets() {
        return this.zzaSv;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzair, this.zzaSv, this.zzaWP);
    }

    public String toString() {
        Object obj;
        Object obj2;
        zzaa.zza zzg = zzaa.zzv(this).zzg("status", this.zzair);
        if (this.zzaSv.size() > 5) {
            obj = new StringBuilder(21).append(this.zzaSv.size()).append(" data sets").toString();
        } else {
            obj = this.zzaSv;
        }
        zzaa.zza zzg2 = zzg.zzg("dataSets", obj);
        if (this.zzaWP.size() > 5) {
            obj2 = new StringBuilder(19).append(this.zzaWP.size()).append(" buckets").toString();
        } else {
            obj2 = this.zzaWP;
        }
        return zzg2.zzg("buckets", obj2).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<DataSource> zzCh() {
        return this.zzaWR;
    }

    public int zzDq() {
        return this.zzaWQ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<RawBucket> zzDr() {
        ArrayList arrayList = new ArrayList(this.zzaWP.size());
        for (Bucket bucket : this.zzaWP) {
            arrayList.add(new RawBucket(bucket, this.zzaWR, this.zzaWS));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<RawDataSet> zzDs() {
        ArrayList arrayList = new ArrayList(this.zzaSv.size());
        for (DataSet dataSet : this.zzaSv) {
            arrayList.add(new RawDataSet(dataSet, this.zzaWR, this.zzaWS));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<DataType> zzDt() {
        return this.zzaWS;
    }

    public void zzb(DataReadResult dataReadResult) {
        for (DataSet dataSet : dataReadResult.getDataSets()) {
            zza(dataSet, this.zzaSv);
        }
        for (Bucket bucket : dataReadResult.getBuckets()) {
            zza(bucket, this.zzaWP);
        }
    }
}
