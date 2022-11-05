package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzamy extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzamy> CREATOR = new zzamz();
    final int zzaQS;
    final int zzaQT;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzamy(int i, int i2, int i3) {
        this.zzaiI = i;
        this.zzaQS = i2;
        this.zzaQT = i3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzamz.zza(this, parcel, i);
    }
}
