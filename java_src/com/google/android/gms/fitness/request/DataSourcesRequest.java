package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzaon;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class DataSourcesRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<DataSourcesRequest> CREATOR = new zzl();
    private final List<DataType> zzaSs;
    private final List<Integer> zzaVN;
    private final boolean zzaVO;
    private final zzaon zzaVP;
    private final int zzaiI;

    /* loaded from: classes2.dex */
    public static class Builder {
        private DataType[] zzaVQ = new DataType[0];
        private int[] zzaVR = {0, 1};
        private boolean zzaVO = false;

        public DataSourcesRequest build() {
            boolean z = true;
            com.google.android.gms.common.internal.zzac.zza(this.zzaVQ.length > 0, "Must add at least one data type");
            if (this.zzaVR.length <= 0) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Must add at least one data source type");
            return new DataSourcesRequest(this);
        }

        public Builder setDataSourceTypes(int... iArr) {
            this.zzaVR = iArr;
            return this;
        }

        public Builder setDataTypes(DataType... dataTypeArr) {
            this.zzaVQ = dataTypeArr;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataSourcesRequest(int i, List<DataType> list, List<Integer> list2, boolean z, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaSs = list;
        this.zzaVN = list2;
        this.zzaVO = z;
        this.zzaVP = zzaon.zza.zzcr(iBinder);
    }

    private DataSourcesRequest(Builder builder) {
        this(com.google.android.gms.common.util.zzb.zzb(builder.zzaVQ), Arrays.asList(com.google.android.gms.common.util.zzb.zza(builder.zzaVR)), false, null);
    }

    public DataSourcesRequest(DataSourcesRequest dataSourcesRequest, zzaon zzaonVar) {
        this(dataSourcesRequest.zzaSs, dataSourcesRequest.zzaVN, dataSourcesRequest.zzaVO, zzaonVar);
    }

    public DataSourcesRequest(List<DataType> list, List<Integer> list2, boolean z, zzaon zzaonVar) {
        this.zzaiI = 4;
        this.zzaSs = list;
        this.zzaVN = list2;
        this.zzaVO = z;
        this.zzaVP = zzaonVar;
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVP == null) {
            return null;
        }
        return this.zzaVP.asBinder();
    }

    public List<DataType> getDataTypes() {
        return this.zzaSs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public String toString() {
        zzaa.zza zzg = com.google.android.gms.common.internal.zzaa.zzv(this).zzg("dataTypes", this.zzaSs).zzg("sourceTypes", this.zzaVN);
        if (this.zzaVO) {
            zzg.zzg("includeDbOnlySources", "true");
        }
        return zzg.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }

    public List<Integer> zzCW() {
        return this.zzaVN;
    }

    public boolean zzCX() {
        return this.zzaVO;
    }
}
