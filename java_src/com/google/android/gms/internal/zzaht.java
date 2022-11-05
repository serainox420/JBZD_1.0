package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaht extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaht> CREATOR = new zzahu();
    final int zzaiI;

    public zzaht() {
        this(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaht(int i) {
        this.zzaiI = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzahu.zza(this, parcel, i);
    }
}
