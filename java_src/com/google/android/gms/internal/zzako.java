package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzako extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzako> CREATOR = new zzakp();
    final int zzaNJ;
    final int zzaNK;
    final boolean zzaOx;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzako(int i, int i2, int i3, boolean z) {
        this.zzaiI = i;
        this.zzaNJ = i2;
        this.zzaNK = i3;
        this.zzaOx = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzakp.zza(this, parcel, i);
    }
}
