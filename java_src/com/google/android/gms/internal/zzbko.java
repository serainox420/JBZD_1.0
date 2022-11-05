package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbko extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbko> CREATOR = new zzbkp();
    final int versionCode;

    public zzbko() {
        this.versionCode = 1;
    }

    public zzbko(int i) {
        this.versionCode = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbkp.zza(this, parcel, i);
    }
}
