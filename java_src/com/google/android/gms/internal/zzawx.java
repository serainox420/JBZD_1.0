package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzawx extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzawx> CREATOR = new zzawy();
    private final zzaxi zzbyY;
    private final boolean zzbyZ;
    private final String zzbyp;

    public zzawx(String str, zzaxi zzaxiVar, boolean z) {
        this.zzbyp = str;
        this.zzbyY = zzaxiVar;
        this.zzbyZ = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzawx)) {
            return false;
        }
        zzawx zzawxVar = (zzawx) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyp, zzawxVar.zzbyp) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyY, zzawxVar.zzbyY) && com.google.android.gms.common.internal.zzaa.equal(Boolean.valueOf(this.zzbyZ), Boolean.valueOf(zzawxVar.zzbyZ));
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyp, this.zzbyY, Boolean.valueOf(this.zzbyZ));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzawy.zza(this, parcel, i);
    }

    public String zzOf() {
        return this.zzbyp;
    }

    public zzaxi zzOp() {
        return this.zzbyY;
    }

    public boolean zzOq() {
        return this.zzbyZ;
    }
}
