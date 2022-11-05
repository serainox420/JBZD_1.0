package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzapg;
/* loaded from: classes2.dex */
public class zzad extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzad> CREATOR = new zzae();
    private final zzapg zzaVX;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad(int i, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaVX = zzapg.zza.zzcK(iBinder);
    }

    public IBinder getCallbackBinder() {
        return this.zzaVX.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public String toString() {
        return String.format("GetSyncInfoRequest {%d, %s}", Integer.valueOf(this.zzaiI), this.zzaVX);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzae.zza(this, parcel, i);
    }
}
