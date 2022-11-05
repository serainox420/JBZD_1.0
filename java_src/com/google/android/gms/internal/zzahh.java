package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzahh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzahh> CREATOR = new zzahi();
    final int zzaKF;
    final int zzaiI;

    public zzahh(int i) {
        this(1, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahh(int i, int i2) {
        this.zzaiI = i;
        com.google.android.gms.common.internal.zzac.zzb(i2 == 536870912 || i2 == 805306368, "Cannot create a new read-only contents!");
        this.zzaKF = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzahi.zza(this, parcel, i);
    }
}
