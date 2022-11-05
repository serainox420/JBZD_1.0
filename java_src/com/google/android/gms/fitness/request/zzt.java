package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzaop;
/* loaded from: classes2.dex */
public class zzt extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzt> CREATOR = new zzy();
    private final int versionCode;
    private final zzaop zzaVU;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(int i, IBinder iBinder) {
        this.versionCode = i;
        this.zzaVU = zzaop.zza.zzct(iBinder);
    }

    public IBinder getCallbackBinder() {
        return this.zzaVU.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzy.zza(this, parcel, i);
    }
}
