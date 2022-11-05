package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzaxf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxf> CREATOR = new zzaxg();
    private final int zzbzb;

    public zzaxf(int i) {
        this.zzbzb = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaxf)) {
            return false;
        }
        return com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(this.zzbzb), Integer.valueOf(((zzaxf) obj).zzbzb));
    }

    public int getReason() {
        return this.zzbzb;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzbzb));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxg.zza(this, parcel, i);
    }
}
