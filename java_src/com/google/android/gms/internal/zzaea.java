package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaea extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaea> CREATOR = new zzaeb();
    private final Bundle zzaIZ;

    public zzaea(Bundle bundle) {
        this.zzaIZ = bundle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaeb.zza(this, parcel, i);
    }

    public Bundle zzzQ() {
        return this.zzaIZ;
    }
}
