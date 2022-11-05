package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
@zzme
/* loaded from: classes.dex */
public final class zzoa extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzoa> CREATOR = new zzob();
    public final zzec zzRy;
    public final String zzvl;

    public zzoa(zzec zzecVar, String str) {
        this.zzRy = zzecVar;
        this.zzvl = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzob.zza(this, parcel, i);
    }
}
