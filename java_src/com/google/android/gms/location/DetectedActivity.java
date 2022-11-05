package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class DetectedActivity extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final int IN_VEHICLE = 0;
    public static final int ON_BICYCLE = 1;
    public static final int ON_FOOT = 2;
    public static final int RUNNING = 8;
    public static final int STILL = 3;
    public static final int TILTING = 5;
    public static final int UNKNOWN = 4;
    public static final int WALKING = 7;
    int zzbjB;
    int zzbjC;
    public static final Comparator<DetectedActivity> zzbjy = new Comparator<DetectedActivity>() { // from class: com.google.android.gms.location.DetectedActivity.1
        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(DetectedActivity detectedActivity, DetectedActivity detectedActivity2) {
            int compareTo = Integer.valueOf(detectedActivity2.getConfidence()).compareTo(Integer.valueOf(detectedActivity.getConfidence()));
            return compareTo == 0 ? Integer.valueOf(detectedActivity.getType()).compareTo(Integer.valueOf(detectedActivity2.getType())) : compareTo;
        }
    };
    public static final int[] zzbjz = {9, 10};
    public static final int[] zzbjA = {0, 1, 2, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14};
    public static final Parcelable.Creator<DetectedActivity> CREATOR = new zzh();

    public DetectedActivity(int i, int i2) {
        this.zzbjB = i;
        this.zzbjC = i2;
    }

    private int zzke(int i) {
        if (i > 15) {
            return 4;
        }
        return i;
    }

    public static String zzkf(int i) {
        switch (i) {
            case 0:
                return "IN_VEHICLE";
            case 1:
                return "ON_BICYCLE";
            case 2:
                return "ON_FOOT";
            case 3:
                return "STILL";
            case 4:
                return "UNKNOWN";
            case 5:
                return "TILTING";
            case 6:
            default:
                return Integer.toString(i);
            case 7:
                return "WALKING";
            case 8:
                return "RUNNING";
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DetectedActivity detectedActivity = (DetectedActivity) obj;
        return this.zzbjB == detectedActivity.zzbjB && this.zzbjC == detectedActivity.zzbjC;
    }

    public int getConfidence() {
        return this.zzbjC;
    }

    public int getType() {
        return zzke(this.zzbjB);
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzbjB), Integer.valueOf(this.zzbjC));
    }

    public String toString() {
        String valueOf = String.valueOf(zzkf(getType()));
        return new StringBuilder(String.valueOf(valueOf).length() + 48).append("DetectedActivity [type=").append(valueOf).append(", confidence=").append(this.zzbjC).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }
}
