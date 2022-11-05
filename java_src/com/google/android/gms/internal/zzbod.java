package com.google.android.gms.internal;

import java.util.Comparator;
/* loaded from: classes2.dex */
public interface zzbod<K, V> {

    /* loaded from: classes2.dex */
    public enum zza {
        RED,
        BLACK
    }

    /* loaded from: classes2.dex */
    public static abstract class zzb<K, V> {
        public abstract void zzj(K k, V v);
    }

    K getKey();

    V getValue();

    boolean isEmpty();

    boolean zzXa();

    zzbod<K, V> zzXc();

    zzbod<K, V> zzXd();

    zzbod<K, V> zzXe();

    zzbod<K, V> zzXf();

    int zzXg();

    zzbod<K, V> zza(K k, V v, zza zzaVar, zzbod<K, V> zzbodVar, zzbod<K, V> zzbodVar2);

    zzbod<K, V> zza(K k, V v, Comparator<K> comparator);

    zzbod<K, V> zza(K k, Comparator<K> comparator);

    void zza(zzb<K, V> zzbVar);
}
