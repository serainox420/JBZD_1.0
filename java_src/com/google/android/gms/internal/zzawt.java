package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzawt extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzawt> CREATOR = new zzawu();
    private final String zzbyV;
    private final String zzbyW;
    private final String zzbyX;

    public zzawt(String str, String str2, String str3) {
        this.zzbyV = str;
        this.zzbyW = str2;
        this.zzbyX = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzawt)) {
            return false;
        }
        zzawt zzawtVar = (zzawt) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyV, zzawtVar.zzbyV) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyW, zzawtVar.zzbyW) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyX, zzawtVar.zzbyX);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyV, this.zzbyW, this.zzbyX);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzawu.zza(this, parcel, i);
    }

    public String zzOm() {
        return this.zzbyV;
    }

    public String zzOn() {
        return this.zzbyW;
    }

    public String zzOo() {
        return this.zzbyX;
    }
}
