package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzamu extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzamu> CREATOR = new zzamv();
    final int mIndex;
    final String zzaQO;
    final boolean zzaQP;
    final int zzaQQ;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzamu(int i, String str, int i2, boolean z, int i3) {
        this.zzaiI = i;
        this.zzaQO = str;
        this.mIndex = i2;
        this.zzaQP = z;
        this.zzaQQ = i3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzamv.zza(this, parcel, i);
    }
}
