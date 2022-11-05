package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzanu;
import com.google.android.gms.internal.zzaor;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class GoalsReadRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<GoalsReadRequest> CREATOR = new zzah();
    private final int versionCode;
    private final List<Integer> zzaTO;
    private final zzaor zzaVZ;
    private final List<DataType> zzaWa;
    private final List<Integer> zzaWb;

    /* loaded from: classes2.dex */
    public static class Builder {
        private final List<DataType> zzaWa = new ArrayList();
        private final List<Integer> zzaWb = new ArrayList();
        private final List<Integer> zzaTO = new ArrayList();

        public Builder addActivity(String str) {
            int zzdU = com.google.android.gms.fitness.zza.zzdU(str);
            com.google.android.gms.common.internal.zzac.zza(zzdU != 4, "Attempting to add an unknown activity");
            zzanu.zza(Integer.valueOf(zzdU), this.zzaTO);
            return this;
        }

        public Builder addDataType(DataType dataType) {
            com.google.android.gms.common.internal.zzac.zzb(dataType, "Attempting to use a null data type");
            if (!this.zzaWa.contains(dataType)) {
                this.zzaWa.add(dataType);
            }
            return this;
        }

        public Builder addObjectiveType(int i) {
            boolean z = true;
            if (i != 1 && i != 2 && i != 3) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Attempting to add an invalid objective type");
            if (!this.zzaWb.contains(Integer.valueOf(i))) {
                this.zzaWb.add(Integer.valueOf(i));
            }
            return this;
        }

        public GoalsReadRequest build() {
            com.google.android.gms.common.internal.zzac.zza(!this.zzaWa.isEmpty(), "At least one data type should be specified.");
            return new GoalsReadRequest(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoalsReadRequest(int i, IBinder iBinder, List<DataType> list, List<Integer> list2, List<Integer> list3) {
        this.versionCode = i;
        this.zzaVZ = iBinder == null ? null : zzaor.zza.zzcv(iBinder);
        this.zzaWa = list;
        this.zzaWb = list2;
        this.zzaTO = list3;
    }

    private GoalsReadRequest(Builder builder) {
        this(null, builder.zzaWa, builder.zzaWb, builder.zzaTO);
    }

    public GoalsReadRequest(GoalsReadRequest goalsReadRequest, zzaor zzaorVar) {
        this(zzaorVar, goalsReadRequest.getDataTypes(), goalsReadRequest.zzCZ(), goalsReadRequest.zzCs());
    }

    private GoalsReadRequest(zzaor zzaorVar, List<DataType> list, List<Integer> list2, List<Integer> list3) {
        this(1, zzaorVar == null ? null : zzaorVar.asBinder(), list, list2, list3);
    }

    private boolean zzb(GoalsReadRequest goalsReadRequest) {
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaWa, goalsReadRequest.zzaWa) && com.google.android.gms.common.internal.zzaa.equal(this.zzaWb, goalsReadRequest.zzaWb) && com.google.android.gms.common.internal.zzaa.equal(this.zzaTO, goalsReadRequest.zzaTO);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof GoalsReadRequest) && zzb((GoalsReadRequest) obj));
    }

    public List<String> getActivityNames() {
        if (this.zzaTO.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Integer num : this.zzaTO) {
            arrayList.add(com.google.android.gms.fitness.zza.getName(num.intValue()));
        }
        return arrayList;
    }

    public IBinder getCallbackBinder() {
        return this.zzaVZ.asBinder();
    }

    public List<DataType> getDataTypes() {
        return this.zzaWa;
    }

    public List<Integer> getObjectiveTypes() {
        if (this.zzaWb.isEmpty()) {
            return null;
        }
        return this.zzaWb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaWa, this.zzaWb, getActivityNames());
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("dataTypes", this.zzaWa).zzg("objectiveTypes", this.zzaWb).zzg("activities", getActivityNames()).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzah.zza(this, parcel, i);
    }

    public List<Integer> zzCZ() {
        return this.zzaWb;
    }

    public List<Integer> zzCs() {
        return this.zzaTO;
    }
}
