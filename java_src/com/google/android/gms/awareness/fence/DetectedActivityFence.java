package com.google.android.gms.awareness.fence;

import com.google.android.gms.internal.zzaei;
import com.google.android.gms.internal.zzaep;
/* loaded from: classes2.dex */
public final class DetectedActivityFence {
    public static final int IN_VEHICLE = 0;
    public static final int ON_BICYCLE = 1;
    public static final int ON_FOOT = 2;
    public static final int RUNNING = 8;
    public static final int STILL = 3;
    public static final int TILTING = 5;
    public static final int UNKNOWN = 4;
    public static final int WALKING = 7;

    private DetectedActivityFence() {
    }

    public static AwarenessFence during(int... iArr) {
        return zzaep.zza(zzaei.zzb(iArr));
    }

    public static AwarenessFence starting(int... iArr) {
        return zzaep.zza(zzaei.zza(2, iArr));
    }

    public static AwarenessFence stopping(int... iArr) {
        return zzaep.zza(zzaei.zza(3, iArr));
    }
}
