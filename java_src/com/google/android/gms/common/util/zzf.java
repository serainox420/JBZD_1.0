package com.google.android.gms.common.util;

import android.support.v4.f.a;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzf {
    public static <K, V> Map<K, V> zza(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6) {
        a aVar = new a(6);
        aVar.put(k, v);
        aVar.put(k2, v2);
        aVar.put(k3, v3);
        aVar.put(k4, v4);
        aVar.put(k5, v5);
        aVar.put(k6, v6);
        return Collections.unmodifiableMap(aVar);
    }

    public static <T> Set<T> zza(T t, T t2, T t3) {
        zza zzaVar = new zza(3);
        zzaVar.add(t);
        zzaVar.add(t2);
        zzaVar.add(t3);
        return Collections.unmodifiableSet(zzaVar);
    }

    public static <T> Set<T> zza(T t, T t2, T t3, T t4) {
        zza zzaVar = new zza(4);
        zzaVar.add(t);
        zzaVar.add(t2);
        zzaVar.add(t3);
        zzaVar.add(t4);
        return Collections.unmodifiableSet(zzaVar);
    }

    private static <K, V> void zza(K[] kArr, V[] vArr) {
        if (kArr.length != vArr.length) {
            int length = kArr.length;
            throw new IllegalArgumentException(new StringBuilder(66).append("Key and values array lengths not equal: ").append(length).append(" != ").append(vArr.length).toString());
        }
    }

    public static <K, V> Map<K, V> zzb(K[] kArr, V[] vArr) {
        zza(kArr, vArr);
        int length = kArr.length;
        switch (length) {
            case 0:
                return zzza();
            case 1:
                return zzd(kArr[0], vArr[0]);
            default:
                Map aVar = length <= 32 ? new a(length) : new HashMap(length, 1.0f);
                for (int i = 0; i < length; i++) {
                    aVar.put(kArr[i], vArr[i]);
                }
                return Collections.unmodifiableMap(aVar);
        }
    }

    public static <T> Set<T> zzc(T t, T t2) {
        zza zzaVar = new zza(2);
        zzaVar.add(t);
        zzaVar.add(t2);
        return Collections.unmodifiableSet(zzaVar);
    }

    public static <T> Set<T> zzc(T... tArr) {
        switch (tArr.length) {
            case 0:
                return zzyZ();
            case 1:
                return zzy(tArr[0]);
            case 2:
                return zzc(tArr[0], tArr[1]);
            case 3:
                return zza(tArr[0], tArr[1], tArr[2]);
            case 4:
                return zza(tArr[0], tArr[1], tArr[2], tArr[3]);
            default:
                return Collections.unmodifiableSet(tArr.length <= 32 ? new zza(Arrays.asList(tArr)) : new HashSet(Arrays.asList(tArr)));
        }
    }

    public static <K, V> Map<K, V> zzd(K k, V v) {
        return Collections.singletonMap(k, v);
    }

    public static <T> List<T> zzx(T t) {
        return Collections.singletonList(t);
    }

    public static <T> Set<T> zzy(T t) {
        return Collections.singleton(t);
    }

    public static <T> Set<T> zzyZ() {
        return Collections.emptySet();
    }

    public static <K, V> Map<K, V> zzza() {
        return Collections.emptyMap();
    }
}
