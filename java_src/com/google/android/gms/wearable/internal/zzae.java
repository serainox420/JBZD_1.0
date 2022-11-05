package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzae extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzae> CREATOR = new zzaf();
    public final int statusCode;

    public zzae(int i) {
        this.statusCode = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaf.zza(this, parcel, i);
    }
}
