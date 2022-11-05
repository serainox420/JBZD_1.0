package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzav extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzav> CREATOR = new zzaw();
    public final int statusCode;
    public final zzo zzbUu;

    public zzav(int i, zzo zzoVar) {
        this.statusCode = i;
        this.zzbUu = zzoVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaw.zza(this, parcel, i);
    }
}
