package com.google.android.gms.instantapps;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes.dex */
public class LaunchSettings extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<LaunchSettings> CREATOR = new zzb();

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
