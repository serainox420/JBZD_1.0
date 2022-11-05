package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class DataUpdateListenerRegistrationRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<DataUpdateListenerRegistrationRequest> CREATOR = new zzp();
    private final PendingIntent mPendingIntent;
    private DataSource zzaTi;
    private DataType zzaTj;
    private final zzapf zzaVt;
    private final int zzaiI;

    /* loaded from: classes2.dex */
    public static class Builder {
        private PendingIntent mPendingIntent;
        private DataSource zzaTi;
        private DataType zzaTj;

        public DataUpdateListenerRegistrationRequest build() {
            com.google.android.gms.common.internal.zzac.zza((this.zzaTi == null && this.zzaTj == null) ? false : true, "Set either dataSource or dataTYpe");
            com.google.android.gms.common.internal.zzac.zzb(this.mPendingIntent, "pendingIntent must be set");
            return new DataUpdateListenerRegistrationRequest(this);
        }

        public Builder setDataSource(DataSource dataSource) throws NullPointerException {
            com.google.android.gms.common.internal.zzac.zzw(dataSource);
            this.zzaTi = dataSource;
            return this;
        }

        public Builder setDataType(DataType dataType) {
            com.google.android.gms.common.internal.zzac.zzw(dataType);
            this.zzaTj = dataType;
            return this;
        }

        public Builder setPendingIntent(PendingIntent pendingIntent) {
            com.google.android.gms.common.internal.zzac.zzw(pendingIntent);
            this.mPendingIntent = pendingIntent;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataUpdateListenerRegistrationRequest(int i, DataSource dataSource, DataType dataType, PendingIntent pendingIntent, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaTi = dataSource;
        this.zzaTj = dataType;
        this.mPendingIntent = pendingIntent;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    public DataUpdateListenerRegistrationRequest(DataSource dataSource, DataType dataType, PendingIntent pendingIntent, IBinder iBinder) {
        this.zzaiI = 1;
        this.zzaTi = dataSource;
        this.zzaTj = dataType;
        this.mPendingIntent = pendingIntent;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    private DataUpdateListenerRegistrationRequest(Builder builder) {
        this(builder.zzaTi, builder.zzaTj, builder.mPendingIntent, null);
    }

    public DataUpdateListenerRegistrationRequest(DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest, IBinder iBinder) {
        this(dataUpdateListenerRegistrationRequest.zzaTi, dataUpdateListenerRegistrationRequest.zzaTj, dataUpdateListenerRegistrationRequest.mPendingIntent, iBinder);
    }

    private boolean zzb(DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest) {
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaTi, dataUpdateListenerRegistrationRequest.zzaTi) && com.google.android.gms.common.internal.zzaa.equal(this.zzaTj, dataUpdateListenerRegistrationRequest.zzaTj) && com.google.android.gms.common.internal.zzaa.equal(this.mPendingIntent, dataUpdateListenerRegistrationRequest.mPendingIntent);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof DataUpdateListenerRegistrationRequest) && zzb((DataUpdateListenerRegistrationRequest) obj));
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVt == null) {
            return null;
        }
        return this.zzaVt.asBinder();
    }

    public DataSource getDataSource() {
        return this.zzaTi;
    }

    public DataType getDataType() {
        return this.zzaTj;
    }

    public PendingIntent getIntent() {
        return this.mPendingIntent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaTi, this.zzaTj, this.mPendingIntent);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("dataSource", this.zzaTi).zzg("dataType", this.zzaTj).zzg("pendingIntent", this.mPendingIntent).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzp.zza(this, parcel, i);
    }
}
