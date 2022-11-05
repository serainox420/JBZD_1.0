package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbod;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class zzbny<K, V> implements Iterable<Map.Entry<K, V>> {

    /* loaded from: classes2.dex */
    public static class zza {
        private static final InterfaceC0309zza zzcaT = new InterfaceC0309zza() { // from class: com.google.android.gms.internal.zzbny.zza.1
            @Override // com.google.android.gms.internal.zzbny.zza.InterfaceC0309zza
            public Object zzak(Object obj) {
                return obj;
            }
        };

        /* renamed from: com.google.android.gms.internal.zzbny$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public interface InterfaceC0309zza<C, D> {
            D zzak(C c);
        }

        public static <A> InterfaceC0309zza<A, A> zzWW() {
            return zzcaT;
        }

        public static <K, V> zzbny<K, V> zza(Comparator<K> comparator) {
            return new zzbnx(comparator);
        }

        public static <A, B, C> zzbny<A, C> zzb(List<A> list, Map<B, C> map, InterfaceC0309zza<A, B> interfaceC0309zza, Comparator<A> comparator) {
            return list.size() < 25 ? zzbnx.zza(list, map, interfaceC0309zza, comparator) : zzbog.zzc(list, map, interfaceC0309zza, comparator);
        }

        public static <A, B> zzbny<A, B> zzb(Map<A, B> map, Comparator<A> comparator) {
            return map.size() < 25 ? zzbnx.zza(map, comparator) : zzbog.zzc(map, comparator);
        }
    }

    public abstract boolean containsKey(K k);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbny)) {
            return false;
        }
        zzbny zzbnyVar = (zzbny) obj;
        if (getComparator().equals(zzbnyVar.getComparator()) && size() == zzbnyVar.size()) {
            Iterator<Map.Entry<K, V>> it = iterator();
            Iterator<Map.Entry<K, V>> it2 = zzbnyVar.iterator();
            while (it.hasNext()) {
                if (!it.next().equals(it2.next())) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public abstract V get(K k);

    public abstract Comparator<K> getComparator();

    public int hashCode() {
        int hashCode = getComparator().hashCode();
        Iterator<Map.Entry<K, V>> it = iterator();
        while (true) {
            int i = hashCode;
            if (it.hasNext()) {
                hashCode = it.next().hashCode() + (i * 31);
            } else {
                return i;
            }
        }
    }

    public abstract boolean isEmpty();

    @Override // java.lang.Iterable
    public abstract Iterator<Map.Entry<K, V>> iterator();

    public abstract int size();

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("{");
        Iterator<Map.Entry<K, V>> it = iterator();
        boolean z = true;
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append("(");
            sb.append(next.getKey());
            sb.append("=>");
            sb.append(next.getValue());
            sb.append(")");
        }
        sb.append("};");
        return sb.toString();
    }

    public abstract K zzWT();

    public abstract K zzWU();

    public abstract Iterator<Map.Entry<K, V>> zzWV();

    public abstract void zza(zzbod.zzb<K, V> zzbVar);

    public abstract zzbny<K, V> zzag(K k);

    public abstract K zzah(K k);

    public abstract zzbny<K, V> zzi(K k, V v);
}
