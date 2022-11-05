package com.google.android.gms.awareness.fence;

import com.google.android.gms.internal.zzaep;
import com.google.android.gms.internal.zzafe;
import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzafg;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class TimeFence {
    public static final int TIME_INSTANT_SUNRISE = 1;
    public static final int TIME_INSTANT_SUNSET = 2;
    public static final int TIME_INTERVAL_AFTERNOON = 5;
    public static final int TIME_INTERVAL_EVENING = 6;
    public static final int TIME_INTERVAL_HOLIDAY = 3;
    public static final int TIME_INTERVAL_MORNING = 4;
    public static final int TIME_INTERVAL_NIGHT = 7;
    public static final int TIME_INTERVAL_WEEKDAY = 1;
    public static final int TIME_INTERVAL_WEEKEND = 2;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TimeInstant {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TimeInterval {
    }

    private TimeFence() {
    }

    public static AwarenessFence aroundTimeInstant(int i, long j, long j2) {
        switch (i) {
            case 1:
                return zzaep.zza(zzafe.zze(j, j2));
            case 2:
                return zzaep.zza(zzafe.zzf(j, j2));
            default:
                throw new IllegalArgumentException(new StringBuilder(40).append("Unknown time instant label = ").append(i).toString());
        }
    }

    public static AwarenessFence inDailyInterval(TimeZone timeZone, long j, long j2) {
        return zzaep.zza(zzaff.zza(2, timeZone, j, j2));
    }

    public static AwarenessFence inFridayInterval(TimeZone timeZone, long j, long j2) {
        return zzaep.zza(zzaff.zza(10, timeZone, j, j2));
    }

    public static AwarenessFence inInterval(long j, long j2) {
        return zzaep.zza(zzaff.zzg(j, j2));
    }

    public static AwarenessFence inMondayInterval(TimeZone timeZone, long j, long j2) {
        return zzaep.zza(zzaff.zza(6, timeZone, j, j2));
    }

    public static AwarenessFence inSaturdayInterval(TimeZone timeZone, long j, long j2) {
        return zzaep.zza(zzaff.zza(11, timeZone, j, j2));
    }

    public static AwarenessFence inSundayInterval(TimeZone timeZone, long j, long j2) {
        return zzaep.zza(zzaff.zza(5, timeZone, j, j2));
    }

    public static AwarenessFence inThursdayInterval(TimeZone timeZone, long j, long j2) {
        return zzaep.zza(zzaff.zza(9, timeZone, j, j2));
    }

    public static AwarenessFence inTimeInterval(int i) {
        return zzaep.zza(zzafg.zzp(1, i));
    }

    public static AwarenessFence inTuesdayInterval(TimeZone timeZone, long j, long j2) {
        return zzaep.zza(zzaff.zza(7, timeZone, j, j2));
    }

    public static AwarenessFence inWednesdayInterval(TimeZone timeZone, long j, long j2) {
        return zzaep.zza(zzaff.zza(8, timeZone, j, j2));
    }
}
