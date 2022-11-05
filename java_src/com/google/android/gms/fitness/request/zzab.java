package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzaon;
/* loaded from: classes2.dex */
public class zzab extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzab> CREATOR = new zzac();
    private final int versionCode;
    private final zzaon zzaVW;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzab(int i, IBinder iBinder) {
        this.versionCode = i;
        this.zzaVW = zzaon.zza.zzcr(iBinder);
    }

    public IBinder getCallbackBinder() {
        return this.zzaVW.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzac.zza(this, parcel, i);
    }
}
