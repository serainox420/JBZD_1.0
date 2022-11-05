package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbg> CREATOR = new zzbf();
    public final boolean enabled;
    public final int statusCode;

    public zzbg(int i, boolean z) {
        this.statusCode = i;
        this.enabled = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbf.zza(this, parcel, i);
    }
}
