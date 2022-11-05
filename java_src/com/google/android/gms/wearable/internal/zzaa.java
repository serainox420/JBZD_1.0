package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaa extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaa> CREATOR = new zzab();
    public final int statusCode;

    public zzaa(int i) {
        this.statusCode = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzab.zza(this, parcel, i);
    }
}
