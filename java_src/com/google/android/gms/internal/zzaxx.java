package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzaxx extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxx> CREATOR = new zzaxy();

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof zzaxx);
    }

    public int hashCode() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxy.zza(this, parcel, i);
    }
}
