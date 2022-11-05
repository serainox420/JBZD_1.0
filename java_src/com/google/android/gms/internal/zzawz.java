package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzawz extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzawz> CREATOR = new zzaxa();
    private final String zzbyp;
    private final com.google.android.gms.nearby.connection.zzh zzbza;

    public zzawz(String str, com.google.android.gms.nearby.connection.zzh zzhVar) {
        this.zzbyp = str;
        this.zzbza = zzhVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzawz)) {
            return false;
        }
        zzawz zzawzVar = (zzawz) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyp, zzawzVar.zzbyp) && com.google.android.gms.common.internal.zzaa.equal(this.zzbza, zzawzVar.zzbza);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyp, this.zzbza);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxa.zza(this, parcel, i);
    }

    public String zzOf() {
        return this.zzbyp;
    }

    public com.google.android.gms.nearby.connection.zzh zzOr() {
        return this.zzbza;
    }
}
