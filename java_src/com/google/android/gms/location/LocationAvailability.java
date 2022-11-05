package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public final class LocationAvailability extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new zzl();
    int zzbjQ;
    int zzbjR;
    long zzbjS;
    int zzbjT;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocationAvailability(int i, int i2, int i3, long j) {
        this.zzbjT = i;
        this.zzbjQ = i2;
        this.zzbjR = i3;
        this.zzbjS = j;
    }

    public static LocationAvailability extractLocationAvailability(Intent intent) {
        if (!hasLocationAvailability(intent)) {
            return null;
        }
        return (LocationAvailability) intent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public static boolean hasLocationAvailability(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocationAvailability)) {
            return false;
        }
        LocationAvailability locationAvailability = (LocationAvailability) obj;
        return this.zzbjT == locationAvailability.zzbjT && this.zzbjQ == locationAvailability.zzbjQ && this.zzbjR == locationAvailability.zzbjR && this.zzbjS == locationAvailability.zzbjS;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzbjT), Integer.valueOf(this.zzbjQ), Integer.valueOf(this.zzbjR), Long.valueOf(this.zzbjS));
    }

    public boolean isLocationAvailable() {
        return this.zzbjT < 1000;
    }

    public String toString() {
        return new StringBuilder(48).append("LocationAvailability[isLocationAvailable: ").append(isLocationAvailable()).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }
}
