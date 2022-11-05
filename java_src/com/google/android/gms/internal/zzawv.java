package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzawv extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzawv> CREATOR = new zzaww();
    private final String zzbyV;

    public zzawv(String str) {
        this.zzbyV = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzawv)) {
            return false;
        }
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyV, ((zzawv) obj).zzbyV);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyV);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaww.zza(this, parcel, i);
    }

    public String zzOm() {
        return this.zzbyV;
    }
}
