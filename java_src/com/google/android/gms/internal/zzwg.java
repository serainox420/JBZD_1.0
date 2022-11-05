package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzwg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzwg> CREATOR = new zzwh();
    private final int zzamj;
    private final double zzamk;

    public zzwg(int i, double d) {
        this.zzamj = i;
        this.zzamk = d;
    }

    public static String zzby(int i) {
        return Integer.toString(i);
    }

    public String toString() {
        String valueOf = String.valueOf(zzby(this.zzamj));
        return new StringBuilder(String.valueOf(valueOf).length() + 69).append("PowerConnectionState = ").append(valueOf).append(" Battery Percentage = ").append(this.zzamk).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzwh.zza(this, parcel, i);
    }

    public int zzrO() {
        return this.zzamj;
    }

    public double zzrP() {
        return this.zzamk;
    }
}
