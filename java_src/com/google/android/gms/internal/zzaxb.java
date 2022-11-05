package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzaxb extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxb> CREATOR = new zzaxc();
    private final int statusCode;
    private final String zzbyF;

    public zzaxb(int i, String str) {
        this.statusCode = i;
        this.zzbyF = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaxb)) {
            return false;
        }
        zzaxb zzaxbVar = (zzaxb) obj;
        return com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(this.statusCode), Integer.valueOf(zzaxbVar.statusCode)) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyF, zzaxbVar.zzbyF);
    }

    public String getLocalEndpointName() {
        return this.zzbyF;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.statusCode), this.zzbyF);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxc.zza(this, parcel, i);
    }
}
