package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class LocationSettingsStates extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new zzs();
    private final boolean zzbkj;
    private final boolean zzbkk;
    private final boolean zzbkl;
    private final boolean zzbkm;
    private final boolean zzbkn;
    private final boolean zzbko;

    public LocationSettingsStates(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.zzbkj = z;
        this.zzbkk = z2;
        this.zzbkl = z3;
        this.zzbkm = z4;
        this.zzbkn = z5;
        this.zzbko = z6;
    }

    public static LocationSettingsStates fromIntent(Intent intent) {
        return (LocationSettingsStates) com.google.android.gms.common.internal.safeparcel.zzd.zza(intent, "com.google.android.gms.location.LOCATION_SETTINGS_STATES", CREATOR);
    }

    public boolean isBlePresent() {
        return this.zzbko;
    }

    public boolean isBleUsable() {
        return this.zzbkl;
    }

    public boolean isGpsPresent() {
        return this.zzbkm;
    }

    public boolean isGpsUsable() {
        return this.zzbkj;
    }

    public boolean isLocationPresent() {
        return this.zzbkm || this.zzbkn;
    }

    public boolean isLocationUsable() {
        return this.zzbkj || this.zzbkk;
    }

    public boolean isNetworkLocationPresent() {
        return this.zzbkn;
    }

    public boolean isNetworkLocationUsable() {
        return this.zzbkk;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzs.zza(this, parcel, i);
    }
}
