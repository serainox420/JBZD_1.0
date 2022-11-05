package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzar extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzar> CREATOR = new zzas();
    public final int statusCode;
    public final int zzbUs;

    public zzar(int i, int i2) {
        this.statusCode = i;
        this.zzbUs = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzas.zza(this, parcel, i);
    }
}
