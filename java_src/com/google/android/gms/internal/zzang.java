package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzang extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzang> CREATOR = new zzanh();
    final int mIndex;
    final int zzaRq;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzang(int i, int i2, int i3) {
        this.zzaiI = i;
        this.mIndex = i2;
        this.zzaRq = i3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzanh.zza(this, parcel, i);
    }
}
