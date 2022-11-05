package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzc extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();
    public final String name;
    public final int version;

    public zzc(String str, int i) {
        this.name = str;
        this.version = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
