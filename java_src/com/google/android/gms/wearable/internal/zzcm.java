package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzcm extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzcm> CREATOR = new zzcn();
    public final int statusCode;

    public zzcm(int i) {
        this.statusCode = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzcn.zza(this, parcel, i);
    }
}
