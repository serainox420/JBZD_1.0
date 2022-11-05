package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzarq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzarq> CREATOR = new zzarr();
    private final String packageName;

    public zzarq(String str) {
        this.packageName = str;
    }

    public String getPackageName() {
        return this.packageName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzarr.zza(this, parcel, i);
    }
}
