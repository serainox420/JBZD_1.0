package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.internal.zzapc;
import java.util.List;
/* loaded from: classes2.dex */
public class zzat extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzat> CREATOR = new zzau();
    private final List<DataSource> zzaVw;
    private final zzapc zzaWn;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzat(int i, IBinder iBinder, List<DataSource> list) {
        this.zzaiI = i;
        this.zzaWn = zzapc.zza.zzcG(iBinder);
        this.zzaVw = list;
    }

    public IBinder getCallbackBinder() {
        return this.zzaWn.asBinder();
    }

    public List<DataSource> getDataSources() {
        return this.zzaVw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public String toString() {
        return String.format("ReadStatsRequest", new Object[0]);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzau.zza(this, parcel, i);
    }
}
