package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzawn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzawn> CREATOR = new zzawo();
    private final String zzbyU;
    private final String zzbyp;
    private final byte[] zzbyq;

    public zzawn(String str, String str2, byte[] bArr) {
        this.zzbyp = str;
        this.zzbyU = str2;
        this.zzbyq = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzawn)) {
            return false;
        }
        zzawn zzawnVar = (zzawn) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyp, zzawnVar.zzbyp) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyU, zzawnVar.zzbyU) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyq, zzawnVar.zzbyq);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyp, this.zzbyU, this.zzbyq);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzawo.zza(this, parcel, i);
    }

    public String zzOf() {
        return this.zzbyp;
    }

    public byte[] zzOg() {
        return this.zzbyq;
    }

    public String zzOl() {
        return this.zzbyU;
    }
}
