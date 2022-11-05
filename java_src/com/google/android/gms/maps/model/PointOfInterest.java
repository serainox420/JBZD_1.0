package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class PointOfInterest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<PointOfInterest> CREATOR = new zzj();
    public final LatLng latLng;
    public final String name;
    public final String placeId;

    public PointOfInterest(LatLng latLng, String str, String str2) {
        this.latLng = latLng;
        this.placeId = str;
        this.name = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }
}
