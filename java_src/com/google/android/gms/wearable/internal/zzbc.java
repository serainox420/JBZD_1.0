package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbc extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbc> CREATOR = new zzbb();
    public final int statusCode;
    public final boolean zzbUw;

    public zzbc(int i, boolean z) {
        this.statusCode = i;
        this.zzbUw = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbb.zza(this, parcel, i);
    }
}
