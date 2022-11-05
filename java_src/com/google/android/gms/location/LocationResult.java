package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class LocationResult extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    private final List<Location> zzbka;
    static final List<Location> zzbjZ = Collections.emptyList();
    public static final Parcelable.Creator<LocationResult> CREATOR = new zzn();

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocationResult(List<Location> list) {
        this.zzbka = list;
    }

    public static LocationResult create(List<Location> list) {
        if (list == null) {
            list = zzbjZ;
        }
        return new LocationResult(list);
    }

    public static LocationResult extractResult(Intent intent) {
        if (!hasResult(intent)) {
            return null;
        }
        return (LocationResult) intent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocationResult)) {
            return false;
        }
        LocationResult locationResult = (LocationResult) obj;
        if (locationResult.zzbka.size() != this.zzbka.size()) {
            return false;
        }
        Iterator<Location> it = locationResult.zzbka.iterator();
        Iterator<Location> it2 = this.zzbka.iterator();
        while (it.hasNext()) {
            if (it2.next().getTime() != it.next().getTime()) {
                return false;
            }
        }
        return true;
    }

    public Location getLastLocation() {
        int size = this.zzbka.size();
        if (size == 0) {
            return null;
        }
        return this.zzbka.get(size - 1);
    }

    public List<Location> getLocations() {
        return this.zzbka;
    }

    public int hashCode() {
        int i = 17;
        Iterator<Location> it = this.zzbka.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                long time = it.next().getTime();
                i = ((int) (time ^ (time >>> 32))) + (i2 * 31);
            } else {
                return i2;
            }
        }
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzbka);
        return new StringBuilder(String.valueOf(valueOf).length() + 27).append("LocationResult[locations: ").append(valueOf).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzn.zza(this, parcel, i);
    }
}
