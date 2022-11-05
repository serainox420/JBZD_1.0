package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzamb extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzamb> CREATOR = new zzamc();
    final int zzaiI;

    public zzamb() {
        this(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzamb(int i) {
        this.zzaiI = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzamc.zza(this, parcel, i);
    }
}
