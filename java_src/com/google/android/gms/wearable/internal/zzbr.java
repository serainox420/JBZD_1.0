package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbr extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbr> CREATOR = new zzbs();
    public final int statusCode;
    public final zzcc zzbUD;

    public zzbr(int i, zzcc zzccVar) {
        this.statusCode = i;
        this.zzbUD = zzccVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbs.zza(this, parcel, i);
    }
}
