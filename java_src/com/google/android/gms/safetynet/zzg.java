package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzg> CREATOR = new zzh();
    private final String zzaiJ;

    public zzg(String str) {
        this.zzaiJ = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public String zzPw() {
        return this.zzaiJ;
    }
}
