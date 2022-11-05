package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzwi extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzwi> CREATOR = new zzwj();
    private final int zzaml;

    public zzwi(int i) {
        this.zzaml = i;
    }

    public String toString() {
        return this.zzaml == 1 ? "ScreenState: SCREEN_OFF" : this.zzaml == 2 ? "ScreenState: SCREEN_ON" : "ScreenState: UNKNOWN";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzwj.zza(this, parcel, i);
    }

    public int zzrQ() {
        return this.zzaml;
    }
}
