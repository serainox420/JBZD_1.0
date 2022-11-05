package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbjl extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbjl> CREATOR = new zzbjm();
    final int versionCode;
    public int zzbOG;

    public zzbjl() {
        this.versionCode = 1;
    }

    public zzbjl(int i, int i2) {
        this.versionCode = i;
        this.zzbOG = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbjm.zza(this, parcel, i);
    }
}
