package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzawp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzawp> CREATOR = new zzawq();
    private final int statusCode;
    private final String zzbyp;
    private final byte[] zzbyq;

    public zzawp(String str, int i, byte[] bArr) {
        this.zzbyp = str;
        this.statusCode = i;
        this.zzbyq = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzawp)) {
            return false;
        }
        zzawp zzawpVar = (zzawp) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyp, zzawpVar.zzbyp) && com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(this.statusCode), Integer.valueOf(zzawpVar.statusCode)) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyq, zzawpVar.zzbyq);
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyp, Integer.valueOf(this.statusCode), this.zzbyq);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzawq.zza(this, parcel, i);
    }

    public String zzOf() {
        return this.zzbyp;
    }

    public byte[] zzOg() {
        return this.zzbyq;
    }
}
