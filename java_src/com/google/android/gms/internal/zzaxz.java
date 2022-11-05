package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzaxz extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxz> CREATOR = new zzaya();

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof zzaxz);
    }

    public int hashCode() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaya.zza(this, parcel, i);
    }
}
