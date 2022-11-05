package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzaxd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxd> CREATOR = new zzaxe();
    private final int zzbzb;

    public zzaxd(int i) {
        this.zzbzb = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaxd)) {
            return false;
        }
        return com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(this.zzbzb), Integer.valueOf(((zzaxd) obj).zzbzb));
    }

    public int getReason() {
        return this.zzbzb;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzbzb));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxe.zza(this, parcel, i);
    }
}
