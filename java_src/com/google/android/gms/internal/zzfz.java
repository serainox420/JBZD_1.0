package com.google.android.gms.internal;

import android.content.SharedPreferences;
@zzme
/* loaded from: classes.dex */
public abstract class zzfz<T> {
    private final int zzAW;
    private final String zzAX;
    private final T zzAY;

    private zzfz(int i, String str, T t) {
        this.zzAW = i;
        this.zzAX = str;
        this.zzAY = t;
        com.google.android.gms.ads.internal.zzw.zzcX().zza(this);
    }

    public static zzfz<String> zza(int i, String str) {
        zzfz<String> zza = zza(i, str, (String) null);
        com.google.android.gms.ads.internal.zzw.zzcX().zzb(zza);
        return zza;
    }

    public static zzfz<Float> zza(int i, String str, float f) {
        return new zzfz<Float>(i, str, Float.valueOf(f)) { // from class: com.google.android.gms.internal.zzfz.4
            @Override // com.google.android.gms.internal.zzfz
            /* renamed from: zze */
            public Float zza(SharedPreferences sharedPreferences) {
                return Float.valueOf(sharedPreferences.getFloat(getKey(), zzfr().floatValue()));
            }
        };
    }

    public static zzfz<Integer> zza(int i, String str, int i2) {
        return new zzfz<Integer>(i, str, Integer.valueOf(i2)) { // from class: com.google.android.gms.internal.zzfz.2
            @Override // com.google.android.gms.internal.zzfz
            /* renamed from: zzc */
            public Integer zza(SharedPreferences sharedPreferences) {
                return Integer.valueOf(sharedPreferences.getInt(getKey(), zzfr().intValue()));
            }
        };
    }

    public static zzfz<Long> zza(int i, String str, long j) {
        return new zzfz<Long>(i, str, Long.valueOf(j)) { // from class: com.google.android.gms.internal.zzfz.3
            @Override // com.google.android.gms.internal.zzfz
            /* renamed from: zzd */
            public Long zza(SharedPreferences sharedPreferences) {
                return Long.valueOf(sharedPreferences.getLong(getKey(), zzfr().longValue()));
            }
        };
    }

    public static zzfz<Boolean> zza(int i, String str, Boolean bool) {
        return new zzfz<Boolean>(i, str, bool) { // from class: com.google.android.gms.internal.zzfz.1
            @Override // com.google.android.gms.internal.zzfz
            /* renamed from: zzb */
            public Boolean zza(SharedPreferences sharedPreferences) {
                return Boolean.valueOf(sharedPreferences.getBoolean(getKey(), zzfr().booleanValue()));
            }
        };
    }

    public static zzfz<String> zza(int i, String str, String str2) {
        return new zzfz<String>(i, str, str2) { // from class: com.google.android.gms.internal.zzfz.5
            @Override // com.google.android.gms.internal.zzfz
            /* renamed from: zzf */
            public String zza(SharedPreferences sharedPreferences) {
                return sharedPreferences.getString(getKey(), zzfr());
            }
        };
    }

    public static zzfz<String> zzb(int i, String str) {
        zzfz<String> zza = zza(i, str, (String) null);
        com.google.android.gms.ads.internal.zzw.zzcX().zzc(zza);
        return zza;
    }

    public T get() {
        return (T) com.google.android.gms.ads.internal.zzw.zzcY().zzd(this);
    }

    public String getKey() {
        return this.zzAX;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract T zza(SharedPreferences sharedPreferences);

    public T zzfr() {
        return this.zzAY;
    }
}
