package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzaiv extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaiv> CREATOR = new zzaiw();
    final int zzIk;
    final List<com.google.android.gms.drive.zzm> zzaNR;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaiv(int i, List<com.google.android.gms.drive.zzm> list, int i2) {
        this.zzaiI = i;
        this.zzaNR = list;
        this.zzIk = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaiw.zza(this, parcel, i);
    }
}
