package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public final class zzblj {
    public static float zza(float f, float f2, float f3, float f4) {
        return (f <= f2 || f <= f3 || f <= f4) ? (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2 : f;
    }

    public static float zza(float f, float f2, float f3, float f4, float f5, float f6) {
        return zza(zzb(f, f2, f3, f4), zzb(f, f2, f5, f4), zzb(f, f2, f5, f6), zzb(f, f2, f3, f6));
    }

    public static float zzb(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }
}
