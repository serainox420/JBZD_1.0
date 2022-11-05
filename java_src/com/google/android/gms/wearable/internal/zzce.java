package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzce extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzce> CREATOR = new zzcf();
    public final int statusCode;
    public final zzu zzbTW;

    public zzce(int i, zzu zzuVar) {
        this.statusCode = i;
        this.zzbTW = zzuVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzcf.zza(this, parcel, i);
    }
}
