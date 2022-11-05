package com.google.android.gms.nearby.messages;

import com.google.android.gms.nearby.messages.internal.zze;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public interface Distance extends Comparable<Distance> {
    public static final Distance UNKNOWN = new zze(1, Double.NaN);

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Accuracy {
        public static final int LOW = 1;
    }

    int compareTo(Distance distance);

    int getAccuracy();

    double getMeters();
}
