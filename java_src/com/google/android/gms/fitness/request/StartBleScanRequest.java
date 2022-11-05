package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.zza;
import com.google.android.gms.fitness.request.zzai;
import com.google.android.gms.internal.zzapf;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class StartBleScanRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<StartBleScanRequest> CREATOR = new zzbj();
    private final List<DataType> zzaSs;
    private final zzapf zzaVt;
    private final zzai zzaWJ;
    private final int zzaWK;
    private final int zzaiI;

    /* loaded from: classes2.dex */
    public static class Builder {
        private zzai zzaWJ;
        private DataType[] zzaVQ = new DataType[0];
        private int zzaWK = 10;

        public StartBleScanRequest build() {
            com.google.android.gms.common.internal.zzac.zza(this.zzaWJ != null, "Must set BleScanCallback");
            return new StartBleScanRequest(this);
        }

        public Builder setBleScanCallback(BleScanCallback bleScanCallback) {
            zza(zza.C0191zza.zzCL().zza(bleScanCallback));
            return this;
        }

        public Builder setDataTypes(DataType... dataTypeArr) {
            this.zzaVQ = dataTypeArr;
            return this;
        }

        public Builder setTimeoutSecs(int i) {
            boolean z = true;
            com.google.android.gms.common.internal.zzac.zzb(i > 0, "Stop time must be greater than zero");
            if (i > 60) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zzb(z, "Stop time must be less than 1 minute");
            this.zzaWK = i;
            return this;
        }

        public Builder zza(zzai zzaiVar) {
            this.zzaWJ = zzaiVar;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StartBleScanRequest(int i, List<DataType> list, IBinder iBinder, int i2, IBinder iBinder2) {
        this.zzaiI = i;
        this.zzaSs = list;
        this.zzaWJ = zzai.zza.zzcN(iBinder);
        this.zzaWK = i2;
        this.zzaVt = zzapf.zza.zzcJ(iBinder2);
    }

    private StartBleScanRequest(Builder builder) {
        this(com.google.android.gms.common.util.zzb.zzb(builder.zzaVQ), builder.zzaWJ, builder.zzaWK, null);
    }

    public StartBleScanRequest(StartBleScanRequest startBleScanRequest, zzapf zzapfVar) {
        this(startBleScanRequest.zzaSs, startBleScanRequest.zzaWJ, startBleScanRequest.zzaWK, zzapfVar);
    }

    public StartBleScanRequest(List<DataType> list, zzai zzaiVar, int i, zzapf zzapfVar) {
        this.zzaiI = 4;
        this.zzaSs = list;
        this.zzaWJ = zzaiVar;
        this.zzaWK = i;
        this.zzaVt = zzapfVar;
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVt == null) {
            return null;
        }
        return this.zzaVt.asBinder();
    }

    public List<DataType> getDataTypes() {
        return Collections.unmodifiableList(this.zzaSs);
    }

    public int getTimeoutSecs() {
        return this.zzaWK;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("dataTypes", this.zzaSs).zzg("timeoutSecs", Integer.valueOf(this.zzaWK)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbj.zza(this, parcel, i);
    }

    public IBinder zzDm() {
        return this.zzaWJ.asBinder();
    }
}
