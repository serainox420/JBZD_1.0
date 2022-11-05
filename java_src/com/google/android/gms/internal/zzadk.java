package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzadk extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzadk> CREATOR = new zzadl();
    private final String mName;
    private final String mValue;

    public zzadk(String str, String str2) {
        this.mName = str;
        this.mValue = str2;
    }

    public String getName() {
        return this.mName;
    }

    public String getValue() {
        return this.mValue;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzadl.zza(this, parcel, i);
    }
}
