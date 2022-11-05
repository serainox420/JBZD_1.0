package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzanq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzanq> CREATOR = new zzanr();
    final int mIndex;
    final int zzaQS;
    final int zzaQT;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanq(int i, int i2, int i3, int i4) {
        this.zzaiI = i;
        this.mIndex = i2;
        this.zzaQS = i3;
        this.zzaQT = i4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzanr.zza(this, parcel, i);
    }
}
