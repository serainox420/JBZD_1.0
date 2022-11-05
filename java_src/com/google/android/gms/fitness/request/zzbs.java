package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.request.zzaj;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzbs extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbs> CREATOR = new zzbt();
    private final int versionCode;
    private final zzaj zzaWN;
    private final zzapf zzaWh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbs(int i, IBinder iBinder, IBinder iBinder2) {
        zzaj zzajVar = null;
        this.versionCode = i;
        this.zzaWh = iBinder == null ? null : zzapf.zza.zzcJ(iBinder);
        this.zzaWN = iBinder2 != null ? zzaj.zza.zzcO(iBinder2) : zzajVar;
    }

    public IBinder getCallbackBinder() {
        if (this.zzaWh == null) {
            return null;
        }
        return this.zzaWh.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbt.zza(this, parcel, i);
    }

    public IBinder zzDp() {
        if (this.zzaWN == null) {
            return null;
        }
        return this.zzaWN.asBinder();
    }
}
