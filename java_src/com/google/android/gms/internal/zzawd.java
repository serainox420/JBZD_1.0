package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzawd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzawd> CREATOR = new zzawe();
    private final String zzbyp;

    public zzawd(String str) {
        this.zzbyp = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzawd)) {
            return false;
        }
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyp, ((zzawd) obj).zzbyp);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyp);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzawe.zza(this, parcel, i);
    }

    public String zzOf() {
        return this.zzbyp;
    }
}
