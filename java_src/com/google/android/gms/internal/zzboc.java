package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbod;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class zzboc<K, V> implements zzbod<K, V> {
    private static final zzboc zzcaY = new zzboc();

    private zzboc() {
    }

    public static <K, V> zzboc<K, V> zzXb() {
        return zzcaY;
    }

    @Override // com.google.android.gms.internal.zzbod
    public K getKey() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzbod
    public V getValue() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzbod
    public boolean isEmpty() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzbod
    public boolean zzXa() {
        return false;
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zzXc() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zzXd() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zzXe() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zzXf() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzbod
    public int zzXg() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zza(K k, V v, zzbod.zza zzaVar, zzbod<K, V> zzbodVar, zzbod<K, V> zzbodVar2) {
        return this;
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zza(K k, V v, Comparator<K> comparator) {
        return new zzboe(k, v);
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zza(K k, Comparator<K> comparator) {
        return this;
    }

    @Override // com.google.android.gms.internal.zzbod
    public void zza(zzbod.zzb<K, V> zzbVar) {
    }
}
