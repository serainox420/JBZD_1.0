package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataSource;
/* loaded from: classes2.dex */
public class zzapx extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzapx> CREATOR = new zzapy();
    private final DataSource zzaTi;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapx(int i, DataSource dataSource) {
        this.zzaiI = i;
        this.zzaTi = dataSource;
    }

    public DataSource getDataSource() {
        return this.zzaTi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public String toString() {
        return String.format("ApplicationUnregistrationRequest{%s}", this.zzaTi);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzapy.zza(this, parcel, i);
    }
}
