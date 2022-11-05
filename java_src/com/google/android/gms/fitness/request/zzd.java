package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzaol;
/* loaded from: classes2.dex */
public class zzd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    private final int versionCode;
    private DataType zzaSg;
    private final zzaol zzaVu;
    private final boolean zzaVv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(int i, IBinder iBinder, DataType dataType, boolean z) {
        this.versionCode = i;
        this.zzaVu = zzaol.zza.zzcp(iBinder);
        this.zzaSg = dataType;
        this.zzaVv = z;
    }

    public zzd(zzaol zzaolVar, DataType dataType, boolean z) {
        this.versionCode = 3;
        this.zzaVu = zzaolVar;
        this.zzaSg = dataType;
        this.zzaVv = z;
    }

    public IBinder getCallbackBinder() {
        return this.zzaVu.asBinder();
    }

    public DataType getDataType() {
        return this.zzaSg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public String toString() {
        Object[] objArr = new Object[1];
        objArr[0] = this.zzaSg == null ? "null" : this.zzaSg.zzCk();
        return String.format("DailyTotalRequest{%s}", objArr);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public boolean zzCN() {
        return this.zzaVv;
    }
}
