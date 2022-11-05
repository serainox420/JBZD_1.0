package com.google.android.gms.awareness.fence;

import com.google.android.gms.internal.zzaep;
import com.google.android.gms.internal.zzafc;
/* loaded from: classes2.dex */
public final class LocationFence {
    private LocationFence() {
    }

    public static AwarenessFence entering(double d, double d2, double d3) {
        return zzaep.zza(zzafc.zza((int) (d * 1.0E7d), (int) (1.0E7d * d2), d3));
    }

    public static AwarenessFence exiting(double d, double d2, double d3) {
        return zzaep.zza(zzafc.zzb((int) (d * 1.0E7d), (int) (1.0E7d * d2), d3));
    }

    public static AwarenessFence in(double d, double d2, double d3, long j) {
        return zzaep.zza(zzafc.zza((int) (d * 1.0E7d), (int) (1.0E7d * d2), d3, j));
    }
}
