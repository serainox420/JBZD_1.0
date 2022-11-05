package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class Subscription extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<Subscription> CREATOR = new zzac();
    private final DataSource zzaTi;
    private final DataType zzaTj;
    private final long zzaUo;
    private final int zzaUp;
    private final int zzaiI;

    /* loaded from: classes2.dex */
    public static class zza {
        private DataSource zzaTi;
        private DataType zzaTj;
        private long zzaUo = -1;
        private int zzaUp = 2;

        public Subscription zzCB() {
            boolean z = false;
            com.google.android.gms.common.internal.zzac.zza((this.zzaTi == null && this.zzaTj == null) ? false : true, "Must call setDataSource() or setDataType()");
            if (this.zzaTj == null || this.zzaTi == null || this.zzaTj.equals(this.zzaTi.getDataType())) {
                z = true;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Specified data type is incompatible with specified data source");
            return new Subscription(this);
        }

        public zza zzb(DataSource dataSource) {
            this.zzaTi = dataSource;
            return this;
        }

        public zza zzd(DataType dataType) {
            this.zzaTj = dataType;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Subscription(int i, DataSource dataSource, DataType dataType, long j, int i2) {
        this.zzaiI = i;
        this.zzaTi = dataSource;
        this.zzaTj = dataType;
        this.zzaUo = j;
        this.zzaUp = i2;
    }

    private Subscription(zza zzaVar) {
        this.zzaiI = 1;
        this.zzaTj = zzaVar.zzaTj;
        this.zzaTi = zzaVar.zzaTi;
        this.zzaUo = zzaVar.zzaUo;
        this.zzaUp = zzaVar.zzaUp;
    }

    private boolean zza(Subscription subscription) {
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaTi, subscription.zzaTi) && com.google.android.gms.common.internal.zzaa.equal(this.zzaTj, subscription.zzaTj) && this.zzaUo == subscription.zzaUo && this.zzaUp == subscription.zzaUp;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof Subscription) && zza((Subscription) obj));
    }

    public int getAccuracyMode() {
        return this.zzaUp;
    }

    public DataSource getDataSource() {
        return this.zzaTi;
    }

    public DataType getDataType() {
        return this.zzaTj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaTi, this.zzaTi, Long.valueOf(this.zzaUo), Integer.valueOf(this.zzaUp));
    }

    public String toDebugString() {
        Object[] objArr = new Object[1];
        objArr[0] = this.zzaTi == null ? this.zzaTj.getName() : this.zzaTi.toDebugString();
        return String.format("Subscription{%s}", objArr);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("dataSource", this.zzaTi).zzg("dataType", this.zzaTj).zzg("samplingIntervalMicros", Long.valueOf(this.zzaUo)).zzg("accuracyMode", Integer.valueOf(this.zzaUp)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzac.zza(this, parcel, i);
    }

    public DataType zzCA() {
        return this.zzaTj == null ? this.zzaTi.getDataType() : this.zzaTj;
    }

    public long zzCz() {
        return this.zzaUo;
    }
}
