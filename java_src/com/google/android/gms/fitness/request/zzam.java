package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzapa;
/* loaded from: classes2.dex */
public class zzam extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzam> CREATOR = new zzan();
    private final DataType zzaTj;
    private final zzapa zzaWd;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzam(int i, DataType dataType, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaTj = dataType;
        this.zzaWd = zzapa.zza.zzcE(iBinder);
    }

    public zzam(DataType dataType, zzapa zzapaVar) {
        this.zzaiI = 3;
        this.zzaTj = dataType;
        this.zzaWd = zzapaVar;
    }

    public IBinder getCallbackBinder() {
        if (this.zzaWd == null) {
            return null;
        }
        return this.zzaWd.asBinder();
    }

    public DataType getDataType() {
        return this.zzaTj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzan.zza(this, parcel, i);
    }
}
