package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzank extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzank> CREATOR = new zzanl();
    final int zzaQR;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzank(int i, int i2) {
        this.zzaiI = i;
        this.zzaQR = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzanl.zza(this, parcel, i);
    }
}
