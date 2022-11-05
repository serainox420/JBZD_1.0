package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.facebook.common.time.Clock;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public final class LocationRequest extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new zzm();
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
    public static final int PRIORITY_HIGH_ACCURACY = 100;
    public static final int PRIORITY_LOW_POWER = 104;
    public static final int PRIORITY_NO_POWER = 105;
    int mPriority;
    boolean zzaWy;
    long zzbjE;
    long zzbjU;
    long zzbjV;
    int zzbjW;
    float zzbjX;
    long zzbjY;

    public LocationRequest() {
        this.mPriority = 102;
        this.zzbjU = 3600000L;
        this.zzbjV = 600000L;
        this.zzaWy = false;
        this.zzbjE = Clock.MAX_TIME;
        this.zzbjW = Integer.MAX_VALUE;
        this.zzbjX = BitmapDescriptorFactory.HUE_RED;
        this.zzbjY = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocationRequest(int i, long j, long j2, boolean z, long j3, int i2, float f, long j4) {
        this.mPriority = i;
        this.zzbjU = j;
        this.zzbjV = j2;
        this.zzaWy = z;
        this.zzbjE = j3;
        this.zzbjW = i2;
        this.zzbjX = f;
        this.zzbjY = j4;
    }

    public static LocationRequest create() {
        return new LocationRequest();
    }

    private static void zzV(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(new StringBuilder(38).append("invalid interval: ").append(j).toString());
        }
    }

    private static void zze(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException(new StringBuilder(37).append("invalid displacement: ").append(f).toString());
        }
    }

    private static void zzkk(int i) {
        switch (i) {
            case 100:
            case 102:
            case 104:
            case 105:
                return;
            case 101:
            case 103:
            default:
                throw new IllegalArgumentException(new StringBuilder(28).append("invalid quality: ").append(i).toString());
        }
    }

    public static String zzkl(int i) {
        switch (i) {
            case 100:
                return "PRIORITY_HIGH_ACCURACY";
            case 101:
            case 103:
            default:
                return "???";
            case 102:
                return "PRIORITY_BALANCED_POWER_ACCURACY";
            case 104:
                return "PRIORITY_LOW_POWER";
            case 105:
                return "PRIORITY_NO_POWER";
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        return this.mPriority == locationRequest.mPriority && this.zzbjU == locationRequest.zzbjU && this.zzbjV == locationRequest.zzbjV && this.zzaWy == locationRequest.zzaWy && this.zzbjE == locationRequest.zzbjE && this.zzbjW == locationRequest.zzbjW && this.zzbjX == locationRequest.zzbjX && getMaxWaitTime() == locationRequest.getMaxWaitTime();
    }

    public long getExpirationTime() {
        return this.zzbjE;
    }

    public long getFastestInterval() {
        return this.zzbjV;
    }

    public long getInterval() {
        return this.zzbjU;
    }

    public long getMaxWaitTime() {
        long j = this.zzbjY;
        return j < this.zzbjU ? this.zzbjU : j;
    }

    public int getNumUpdates() {
        return this.zzbjW;
    }

    public int getPriority() {
        return this.mPriority;
    }

    public float getSmallestDisplacement() {
        return this.zzbjX;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.mPriority), Long.valueOf(this.zzbjU), Float.valueOf(this.zzbjX), Long.valueOf(this.zzbjY));
    }

    public LocationRequest setExpirationDuration(long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (j > Clock.MAX_TIME - elapsedRealtime) {
            this.zzbjE = Clock.MAX_TIME;
        } else {
            this.zzbjE = elapsedRealtime + j;
        }
        if (this.zzbjE < 0) {
            this.zzbjE = 0L;
        }
        return this;
    }

    public LocationRequest setExpirationTime(long j) {
        this.zzbjE = j;
        if (this.zzbjE < 0) {
            this.zzbjE = 0L;
        }
        return this;
    }

    public LocationRequest setFastestInterval(long j) {
        zzV(j);
        this.zzaWy = true;
        this.zzbjV = j;
        return this;
    }

    public LocationRequest setInterval(long j) {
        zzV(j);
        this.zzbjU = j;
        if (!this.zzaWy) {
            this.zzbjV = (long) (this.zzbjU / 6.0d);
        }
        return this;
    }

    public LocationRequest setMaxWaitTime(long j) {
        zzV(j);
        this.zzbjY = j;
        return this;
    }

    public LocationRequest setNumUpdates(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(new StringBuilder(31).append("invalid numUpdates: ").append(i).toString());
        }
        this.zzbjW = i;
        return this;
    }

    public LocationRequest setPriority(int i) {
        zzkk(i);
        this.mPriority = i;
        return this;
    }

    public LocationRequest setSmallestDisplacement(float f) {
        zze(f);
        this.zzbjX = f;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request[").append(zzkl(this.mPriority));
        if (this.mPriority != 105) {
            sb.append(" requested=");
            sb.append(this.zzbjU).append("ms");
        }
        sb.append(" fastest=");
        sb.append(this.zzbjV).append("ms");
        if (this.zzbjY > this.zzbjU) {
            sb.append(" maxWait=");
            sb.append(this.zzbjY).append("ms");
        }
        if (this.zzbjX > BitmapDescriptorFactory.HUE_RED) {
            sb.append(" smallestDisplacement=");
            sb.append(this.zzbjX).append("m");
        }
        if (this.zzbjE != Clock.MAX_TIME) {
            sb.append(" expireIn=");
            sb.append(this.zzbjE - SystemClock.elapsedRealtime()).append("ms");
        }
        if (this.zzbjW != Integer.MAX_VALUE) {
            sb.append(" num=").append(this.zzbjW);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }
}
