package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzbq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbq> CREATOR = new zzbr();
    private final DataSource zzaTi;
    private final DataType zzaTj;
    private final zzapf zzaVt;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbq(int i, DataType dataType, DataSource dataSource, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaTj = dataType;
        this.zzaTi = dataSource;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    public zzbq(DataType dataType, DataSource dataSource, zzapf zzapfVar) {
        this.zzaiI = 3;
        this.zzaTj = dataType;
        this.zzaTi = dataSource;
        this.zzaVt = zzapfVar;
    }

    private boolean zzb(zzbq zzbqVar) {
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaTi, zzbqVar.zzaTi) && com.google.android.gms.common.internal.zzaa.equal(this.zzaTj, zzbqVar.zzaTj);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof zzbq) && zzb((zzbq) obj));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaTi, this.zzaTj);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbr.zza(this, parcel, i);
    }
}
