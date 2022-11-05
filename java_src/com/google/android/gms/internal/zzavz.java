package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzavz extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzavz> CREATOR = new zzawa();

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof zzavz);
    }

    public int hashCode() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzawa.zza(this, parcel, i);
    }
}
