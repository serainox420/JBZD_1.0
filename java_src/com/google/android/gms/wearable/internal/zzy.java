package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzy extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzy> CREATOR = new zzz();
    public final int statusCode;

    public zzy(int i) {
        this.statusCode = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzz.zza(this, parcel, i);
    }
}
