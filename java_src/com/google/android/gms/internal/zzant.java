package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzant {
    private static final List<TimeUnit> zzaSm = Arrays.asList(TimeUnit.NANOSECONDS, TimeUnit.MICROSECONDS, TimeUnit.MILLISECONDS, TimeUnit.SECONDS, TimeUnit.MINUTES, TimeUnit.HOURS, TimeUnit.DAYS);

    public static long zza(long j, TimeUnit timeUnit, TimeUnit timeUnit2) {
        return timeUnit.convert(timeUnit2.convert(j, timeUnit), timeUnit2);
    }

    public static boolean zza(TimeUnit timeUnit) {
        return zza(timeUnit, TimeUnit.MILLISECONDS);
    }

    private static boolean zza(TimeUnit timeUnit, TimeUnit timeUnit2) {
        return zzaSm.indexOf(timeUnit) < zzaSm.indexOf(timeUnit2);
    }
}
