package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbkl extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbkl> CREATOR = new zzbkm();
    public final int versionCode;

    public zzbkl(int i) {
        this.versionCode = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbkm.zza(this, parcel, i);
    }
}
