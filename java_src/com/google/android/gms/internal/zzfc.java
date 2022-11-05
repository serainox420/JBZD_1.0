package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
@zzme
/* loaded from: classes.dex */
public class zzfc extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzfc> CREATOR = new zzfd();
    public final int zzzZ;

    public zzfc(int i) {
        this.zzzZ = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzfd.zza(this, parcel, i);
    }
}
