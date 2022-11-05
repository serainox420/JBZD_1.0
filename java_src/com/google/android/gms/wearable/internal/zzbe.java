package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbe extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbe> CREATOR = new zzbd();
    public final int statusCode;
    public final boolean zzbUx;
    public final boolean zzbUy;

    public zzbe(int i, boolean z, boolean z2) {
        this.statusCode = i;
        this.zzbUx = z;
        this.zzbUy = z2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbd.zza(this, parcel, i);
    }
}
