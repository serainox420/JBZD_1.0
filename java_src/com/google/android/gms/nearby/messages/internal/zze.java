package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.nearby.messages.Distance;
import java.util.Locale;
/* loaded from: classes.dex */
public class zze extends com.google.android.gms.common.internal.safeparcel.zza implements Distance {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();
    public final int accuracy;
    final int zzaiI;
    public final double zzbAK;

    public zze(int i, double d) {
        this(1, i, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(int i, int i2, double d) {
        this.zzaiI = i;
        this.accuracy = i2;
        this.zzbAK = d;
    }

    private static String zzmJ(int i) {
        switch (i) {
            case 1:
                return "LOW";
            default:
                return "UNKNOWN";
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(Distance distance) {
        if (!Double.isNaN(getMeters()) || !Double.isNaN(distance.getMeters())) {
            return Double.compare(getMeters(), distance.getMeters());
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zze)) {
            return false;
        }
        zze zzeVar = (zze) obj;
        return getAccuracy() == zzeVar.getAccuracy() && compareTo((Distance) zzeVar) == 0;
    }

    @Override // com.google.android.gms.nearby.messages.Distance
    public int getAccuracy() {
        return this.accuracy;
    }

    @Override // com.google.android.gms.nearby.messages.Distance
    public double getMeters() {
        return this.zzbAK;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(getAccuracy()), Double.valueOf(getMeters()));
    }

    public String toString() {
        return String.format(Locale.US, "(%.1fm, %s)", Double.valueOf(this.zzbAK), zzmJ(this.accuracy));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
