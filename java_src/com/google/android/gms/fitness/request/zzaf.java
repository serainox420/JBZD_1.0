package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzaph;
/* loaded from: classes2.dex */
public class zzaf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaf> CREATOR = new zzag();
    private final zzaph zzaVY;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaf(int i, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaVY = zzaph.zza.zzcL(iBinder);
    }

    public IBinder getCallbackBinder() {
        return this.zzaVY.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzag.zza(this, parcel, i);
    }
}
