package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbny;
import com.google.android.gms.internal.zzbod;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbnx<K, V> extends zzbny<K, V> {
    private final K[] zzcaM;
    private final V[] zzcaN;
    private final Comparator<K> zzcaO;

    public zzbnx(Comparator<K> comparator) {
        this.zzcaM = (K[]) new Object[0];
        this.zzcaN = (V[]) new Object[0];
        this.zzcaO = comparator;
    }

    private zzbnx(Comparator<K> comparator, K[] kArr, V[] vArr) {
        this.zzcaM = kArr;
        this.zzcaN = vArr;
        this.zzcaO = comparator;
    }

    public static <A, B, C> zzbnx<A, C> zza(List<A> list, Map<B, C> map, zzbny.zza.InterfaceC0309zza<A, B> interfaceC0309zza, Comparator<A> comparator) {
        Collections.sort(list, comparator);
        int size = list.size();
        Object[] objArr = new Object[size];
        Object[] objArr2 = new Object[size];
        int i = 0;
        for (A a2 : list) {
            objArr[i] = a2;
            objArr2[i] = map.get(interfaceC0309zza.zzak(a2));
            i++;
        }
        return new zzbnx<>(comparator, objArr, objArr2);
    }

    public static <K, V> zzbnx<K, V> zza(Map<K, V> map, Comparator<K> comparator) {
        return zza(new ArrayList(map.keySet()), map, zzbny.zza.zzWW(), comparator);
    }

    private static <T> T[] zza(T[] tArr, int i) {
        int length = tArr.length - 1;
        T[] tArr2 = (T[]) new Object[length];
        System.arraycopy(tArr, 0, tArr2, 0, i);
        System.arraycopy(tArr, i + 1, tArr2, i, length - i);
        return tArr2;
    }

    private static <T> T[] zza(T[] tArr, int i, T t) {
        int length = tArr.length + 1;
        T[] tArr2 = (T[]) new Object[length];
        System.arraycopy(tArr, 0, tArr2, 0, i);
        tArr2[i] = t;
        System.arraycopy(tArr, i, tArr2, i + 1, (length - i) - 1);
        return tArr2;
    }

    private int zzai(K k) {
        int i = 0;
        while (i < this.zzcaM.length && this.zzcaO.compare(this.zzcaM[i], k) < 0) {
            i++;
        }
        return i;
    }

    private int zzaj(K k) {
        int i = 0;
        K[] kArr = this.zzcaM;
        int length = kArr.length;
        int i2 = 0;
        while (i2 < length) {
            if (this.zzcaO.compare(k, kArr[i2]) == 0) {
                return i;
            }
            i2++;
            i++;
        }
        return -1;
    }

    private static <T> T[] zzb(T[] tArr, int i, T t) {
        int length = tArr.length;
        T[] tArr2 = (T[]) new Object[length];
        System.arraycopy(tArr, 0, tArr2, 0, length);
        tArr2[i] = t;
        return tArr2;
    }

    private Iterator<Map.Entry<K, V>> zze(final int i, final boolean z) {
        return new Iterator<Map.Entry<K, V>>() { // from class: com.google.android.gms.internal.zzbnx.1
            int zzcaP;

            {
                this.zzcaP = i;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return z ? this.zzcaP >= 0 : this.zzcaP < zzbnx.this.zzcaM.length;
            }

            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                Object obj = zzbnx.this.zzcaM[this.zzcaP];
                Object obj2 = zzbnx.this.zzcaN[this.zzcaP];
                this.zzcaP = z ? this.zzcaP - 1 : this.zzcaP + 1;
                return new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Can't remove elements from ImmutableSortedMap");
            }
        };
    }

    @Override // com.google.android.gms.internal.zzbny
    public boolean containsKey(K k) {
        return zzaj(k) != -1;
    }

    @Override // com.google.android.gms.internal.zzbny
    public V get(K k) {
        int zzaj = zzaj(k);
        if (zzaj != -1) {
            return this.zzcaN[zzaj];
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzbny
    public Comparator<K> getComparator() {
        return this.zzcaO;
    }

    @Override // com.google.android.gms.internal.zzbny
    public boolean isEmpty() {
        return this.zzcaM.length == 0;
    }

    @Override // com.google.android.gms.internal.zzbny, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return zze(0, false);
    }

    @Override // com.google.android.gms.internal.zzbny
    public int size() {
        return this.zzcaM.length;
    }

    @Override // com.google.android.gms.internal.zzbny
    public K zzWT() {
        if (this.zzcaM.length > 0) {
            return this.zzcaM[0];
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzbny
    public K zzWU() {
        if (this.zzcaM.length > 0) {
            return this.zzcaM[this.zzcaM.length - 1];
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzbny
    public Iterator<Map.Entry<K, V>> zzWV() {
        return zze(this.zzcaM.length - 1, true);
    }

    @Override // com.google.android.gms.internal.zzbny
    public void zza(zzbod.zzb<K, V> zzbVar) {
        for (int i = 0; i < this.zzcaM.length; i++) {
            zzbVar.zzj(this.zzcaM[i], this.zzcaN[i]);
        }
    }

    @Override // com.google.android.gms.internal.zzbny
    public zzbny<K, V> zzag(K k) {
        int zzaj = zzaj(k);
        if (zzaj == -1) {
            return this;
        }
        return new zzbnx(this.zzcaO, zza(this.zzcaM, zzaj), zza(this.zzcaN, zzaj));
    }

    @Override // com.google.android.gms.internal.zzbny
    public K zzah(K k) {
        int zzaj = zzaj(k);
        if (zzaj == -1) {
            throw new IllegalArgumentException("Can't find predecessor of nonexistent key");
        }
        if (zzaj <= 0) {
            return null;
        }
        return this.zzcaM[zzaj - 1];
    }

    @Override // com.google.android.gms.internal.zzbny
    public zzbny<K, V> zzi(K k, V v) {
        int zzaj = zzaj(k);
        if (zzaj != -1) {
            if (this.zzcaM[zzaj] == k && this.zzcaN[zzaj] == v) {
                return this;
            }
            return new zzbnx(this.zzcaO, zzb(this.zzcaM, zzaj, k), zzb(this.zzcaN, zzaj, v));
        } else if (this.zzcaM.length <= 25) {
            int zzai = zzai(k);
            return new zzbnx(this.zzcaO, zza(this.zzcaM, zzai, k), zza(this.zzcaN, zzai, v));
        } else {
            HashMap hashMap = new HashMap(this.zzcaM.length + 1);
            for (int i = 0; i < this.zzcaM.length; i++) {
                hashMap.put(this.zzcaM[i], this.zzcaN[i]);
            }
            hashMap.put(k, v);
            return zzbog.zzc(hashMap, this.zzcaO);
        }
    }
}
