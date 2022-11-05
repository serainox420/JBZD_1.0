package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzu extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();
    private final zzapf zzaVt;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(int i, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    public IBinder getCallbackBinder() {
        return this.zzaVt.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public String toString() {
        return String.format("DisableFitRequest", new Object[0]);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzv.zza(this, parcel, i);
    }
}
