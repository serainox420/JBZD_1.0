package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public final class LocationSettingsResult extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new zzr();
    private final Status zzair;
    private final LocationSettingsStates zzbki;

    public LocationSettingsResult(Status status) {
        this(status, null);
    }

    public LocationSettingsResult(Status status, LocationSettingsStates locationSettingsStates) {
        this.zzair = status;
        this.zzbki = locationSettingsStates;
    }

    public LocationSettingsStates getLocationSettingsStates() {
        return this.zzbki;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzr.zza(this, parcel, i);
    }
}
