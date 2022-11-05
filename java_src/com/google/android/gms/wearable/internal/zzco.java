package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzco extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzco> CREATOR = new zzcp();
    public final int statusCode;
    public final int zzbhU;

    public zzco(int i, int i2) {
        this.statusCode = i;
        this.zzbhU = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzcp.zza(this, parcel, i);
    }
}
