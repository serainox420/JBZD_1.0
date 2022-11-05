package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzani extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzani> CREATOR = new zzanj();
    final int mIndex;
    final int zzaRq;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzani(int i, int i2, int i3) {
        this.zzaiI = i;
        this.mIndex = i2;
        this.zzaRq = i3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzanj.zza(this, parcel, i);
    }
}
