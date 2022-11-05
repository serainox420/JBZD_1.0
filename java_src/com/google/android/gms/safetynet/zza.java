package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();
    private final String zzbCY;

    public zza(String str) {
        this.zzbCY = str;
    }

    public String getJwsResult() {
        return this.zzbCY;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
