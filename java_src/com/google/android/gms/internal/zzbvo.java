package com.google.android.gms.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzbvo<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Comparator<Comparable> zzcqh;
    int modCount;
    int size;
    Comparator<? super K> zzcaO;
    zzd<K, V> zzcqi;
    final zzd<K, V> zzcqj;
    private zza zzcqk;
    private zzb zzcql;

    /* loaded from: classes2.dex */
    class zza extends AbstractSet<Map.Entry<K, V>> {
        zza() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            zzbvo.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && zzbvo.this.zzc((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new zzc<Map.Entry<K, V>>() { // from class: com.google.android.gms.internal.zzbvo.zza.1
                {
                    zzbvo zzbvoVar = zzbvo.this;
                }

                @Override // java.util.Iterator
                public Map.Entry<K, V> next() {
                    return zzadA();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            zzd<K, V> zzc;
            if ((obj instanceof Map.Entry) && (zzc = zzbvo.this.zzc((Map.Entry) obj)) != null) {
                zzbvo.this.zza((zzd) zzc, true);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return zzbvo.this.size;
        }
    }

    /* loaded from: classes2.dex */
    final class zzb extends AbstractSet<K> {
        zzb() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            zzbvo.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return zzbvo.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new zzc<K>() { // from class: com.google.android.gms.internal.zzbvo.zzb.1
                {
                    zzbvo zzbvoVar = zzbvo.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return zzadA().zzcbc;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return zzbvo.this.zzaS(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return zzbvo.this.size;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public abstract class zzc<T> implements Iterator<T> {
        zzd<K, V> zzcqp;
        zzd<K, V> zzcqq;
        int zzcqr;

        private zzc() {
            this.zzcqp = zzbvo.this.zzcqj.zzcqp;
            this.zzcqq = null;
            this.zzcqr = zzbvo.this.modCount;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.zzcqp != zzbvo.this.zzcqj;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.zzcqq == null) {
                throw new IllegalStateException();
            }
            zzbvo.this.zza((zzd) this.zzcqq, true);
            this.zzcqq = null;
            this.zzcqr = zzbvo.this.modCount;
        }

        final zzd<K, V> zzadA() {
            zzd<K, V> zzdVar = this.zzcqp;
            if (zzdVar == zzbvo.this.zzcqj) {
                throw new NoSuchElementException();
            }
            if (zzbvo.this.modCount != this.zzcqr) {
                throw new ConcurrentModificationException();
            }
            this.zzcqp = zzdVar.zzcqp;
            this.zzcqq = zzdVar;
            return zzdVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzd<K, V> implements Map.Entry<K, V> {
        int height;
        V value;
        final K zzcbc;
        zzd<K, V> zzcqp;
        zzd<K, V> zzcqs;
        zzd<K, V> zzcqt;
        zzd<K, V> zzcqu;
        zzd<K, V> zzcqv;

        zzd() {
            this.zzcbc = null;
            this.zzcqv = this;
            this.zzcqp = this;
        }

        zzd(zzd<K, V> zzdVar, K k, zzd<K, V> zzdVar2, zzd<K, V> zzdVar3) {
            this.zzcqs = zzdVar;
            this.zzcbc = k;
            this.height = 1;
            this.zzcqp = zzdVar2;
            this.zzcqv = zzdVar3;
            zzdVar3.zzcqp = this;
            zzdVar2.zzcqv = this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (this.zzcbc == null) {
                    if (entry.getKey() != null) {
                        return false;
                    }
                } else if (!this.zzcbc.equals(entry.getKey())) {
                    return false;
                }
                if (this.value == null) {
                    if (entry.getValue() != null) {
                        return false;
                    }
                } else if (!this.value.equals(entry.getValue())) {
                    return false;
                }
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.zzcbc;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int i = 0;
            int hashCode = this.zzcbc == null ? 0 : this.zzcbc.hashCode();
            if (this.value != null) {
                i = this.value.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.value;
            this.value = v;
            return v2;
        }

        public String toString() {
            String valueOf = String.valueOf(this.zzcbc);
            String valueOf2 = String.valueOf(this.value);
            return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("=").append(valueOf2).toString();
        }

        public zzd<K, V> zzadB() {
            for (zzd<K, V> zzdVar = this.zzcqt; zzdVar != null; zzdVar = zzdVar.zzcqt) {
                this = zzdVar;
            }
            return this;
        }

        public zzd<K, V> zzadC() {
            for (zzd<K, V> zzdVar = this.zzcqu; zzdVar != null; zzdVar = zzdVar.zzcqu) {
                this = zzdVar;
            }
            return this;
        }
    }

    static {
        $assertionsDisabled = !zzbvo.class.desiredAssertionStatus();
        zzcqh = new Comparator<Comparable>() { // from class: com.google.android.gms.internal.zzbvo.1
            @Override // java.util.Comparator
            /* renamed from: zza */
            public int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public zzbvo() {
        this(zzcqh);
    }

    public zzbvo(Comparator<? super K> comparator) {
        this.size = 0;
        this.modCount = 0;
        this.zzcqj = new zzd<>();
        this.zzcaO = comparator == null ? zzcqh : comparator;
    }

    private boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void zza(zzd<K, V> zzdVar) {
        int i = 0;
        zzd<K, V> zzdVar2 = zzdVar.zzcqt;
        zzd<K, V> zzdVar3 = zzdVar.zzcqu;
        zzd<K, V> zzdVar4 = zzdVar3.zzcqt;
        zzd<K, V> zzdVar5 = zzdVar3.zzcqu;
        zzdVar.zzcqu = zzdVar4;
        if (zzdVar4 != null) {
            zzdVar4.zzcqs = zzdVar;
        }
        zza(zzdVar, zzdVar3);
        zzdVar3.zzcqt = zzdVar;
        zzdVar.zzcqs = zzdVar3;
        zzdVar.height = Math.max(zzdVar2 != null ? zzdVar2.height : 0, zzdVar4 != null ? zzdVar4.height : 0) + 1;
        int i2 = zzdVar.height;
        if (zzdVar5 != null) {
            i = zzdVar5.height;
        }
        zzdVar3.height = Math.max(i2, i) + 1;
    }

    private void zza(zzd<K, V> zzdVar, zzd<K, V> zzdVar2) {
        zzd<K, V> zzdVar3 = zzdVar.zzcqs;
        zzdVar.zzcqs = null;
        if (zzdVar2 != null) {
            zzdVar2.zzcqs = zzdVar3;
        }
        if (zzdVar3 == null) {
            this.zzcqi = zzdVar2;
        } else if (zzdVar3.zzcqt == zzdVar) {
            zzdVar3.zzcqt = zzdVar2;
        } else if (!$assertionsDisabled && zzdVar3.zzcqu != zzdVar) {
            throw new AssertionError();
        } else {
            zzdVar3.zzcqu = zzdVar2;
        }
    }

    private void zzb(zzd<K, V> zzdVar) {
        int i = 0;
        zzd<K, V> zzdVar2 = zzdVar.zzcqt;
        zzd<K, V> zzdVar3 = zzdVar.zzcqu;
        zzd<K, V> zzdVar4 = zzdVar2.zzcqt;
        zzd<K, V> zzdVar5 = zzdVar2.zzcqu;
        zzdVar.zzcqt = zzdVar5;
        if (zzdVar5 != null) {
            zzdVar5.zzcqs = zzdVar;
        }
        zza(zzdVar, zzdVar2);
        zzdVar2.zzcqu = zzdVar;
        zzdVar.zzcqs = zzdVar2;
        zzdVar.height = Math.max(zzdVar3 != null ? zzdVar3.height : 0, zzdVar5 != null ? zzdVar5.height : 0) + 1;
        int i2 = zzdVar.height;
        if (zzdVar4 != null) {
            i = zzdVar4.height;
        }
        zzdVar2.height = Math.max(i2, i) + 1;
    }

    private void zzb(zzd<K, V> zzdVar, boolean z) {
        while (zzdVar != null) {
            zzd<K, V> zzdVar2 = zzdVar.zzcqt;
            zzd<K, V> zzdVar3 = zzdVar.zzcqu;
            int i = zzdVar2 != null ? zzdVar2.height : 0;
            int i2 = zzdVar3 != null ? zzdVar3.height : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                zzd<K, V> zzdVar4 = zzdVar3.zzcqt;
                zzd<K, V> zzdVar5 = zzdVar3.zzcqu;
                int i4 = (zzdVar4 != null ? zzdVar4.height : 0) - (zzdVar5 != null ? zzdVar5.height : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    zza(zzdVar);
                } else if (!$assertionsDisabled && i4 != 1) {
                    throw new AssertionError();
                } else {
                    zzb(zzdVar3);
                    zza(zzdVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                zzd<K, V> zzdVar6 = zzdVar2.zzcqt;
                zzd<K, V> zzdVar7 = zzdVar2.zzcqu;
                int i5 = (zzdVar6 != null ? zzdVar6.height : 0) - (zzdVar7 != null ? zzdVar7.height : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    zzb(zzdVar);
                } else if (!$assertionsDisabled && i5 != -1) {
                    throw new AssertionError();
                } else {
                    zza(zzdVar2);
                    zzb(zzdVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                zzdVar.height = i + 1;
                if (z) {
                    return;
                }
            } else if (!$assertionsDisabled && i3 != -1 && i3 != 1) {
                throw new AssertionError();
            } else {
                zzdVar.height = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            zzdVar = zzdVar.zzcqs;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.zzcqi = null;
        this.size = 0;
        this.modCount++;
        zzd<K, V> zzdVar = this.zzcqj;
        zzdVar.zzcqv = zzdVar;
        zzdVar.zzcqp = zzdVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return zzaR(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        zza zzaVar = this.zzcqk;
        if (zzaVar != null) {
            return zzaVar;
        }
        zza zzaVar2 = new zza();
        this.zzcqk = zzaVar2;
        return zzaVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        zzd<K, V> zzaR = zzaR(obj);
        if (zzaR != null) {
            return zzaR.value;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        zzb zzbVar = this.zzcql;
        if (zzbVar != null) {
            return zzbVar;
        }
        zzb zzbVar2 = new zzb();
        this.zzcql = zzbVar2;
        return zzbVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        zzd<K, V> zza2 = zza((zzbvo<K, V>) k, true);
        V v2 = zza2.value;
        zza2.value = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzd<K, V> zzaS = zzaS(obj);
        if (zzaS != null) {
            return zzaS.value;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    zzd<K, V> zza(K k, boolean z) {
        zzd<K, V> zzdVar;
        int i;
        zzd<K, V> zzdVar2;
        Comparator<? super K> comparator = this.zzcaO;
        zzd<K, V> zzdVar3 = this.zzcqi;
        if (zzdVar3 != null) {
            Comparable comparable = comparator == zzcqh ? (Comparable) k : null;
            while (true) {
                int compareTo = comparable != null ? comparable.compareTo(zzdVar3.zzcbc) : comparator.compare(k, (K) zzdVar3.zzcbc);
                if (compareTo == 0) {
                    return zzdVar3;
                }
                zzd<K, V> zzdVar4 = compareTo < 0 ? zzdVar3.zzcqt : zzdVar3.zzcqu;
                if (zzdVar4 == null) {
                    int i2 = compareTo;
                    zzdVar = zzdVar3;
                    i = i2;
                    break;
                }
                zzdVar3 = zzdVar4;
            }
        } else {
            zzdVar = zzdVar3;
            i = 0;
        }
        if (z) {
            zzd<K, V> zzdVar5 = this.zzcqj;
            if (zzdVar != null) {
                zzdVar2 = new zzd<>(zzdVar, k, zzdVar5, zzdVar5.zzcqv);
                if (i < 0) {
                    zzdVar.zzcqt = zzdVar2;
                } else {
                    zzdVar.zzcqu = zzdVar2;
                }
                zzb(zzdVar, true);
            } else if (comparator == zzcqh && !(k instanceof Comparable)) {
                throw new ClassCastException(String.valueOf(k.getClass().getName()).concat(" is not Comparable"));
            } else {
                zzdVar2 = new zzd<>(zzdVar, k, zzdVar5, zzdVar5.zzcqv);
                this.zzcqi = zzdVar2;
            }
            this.size++;
            this.modCount++;
            return zzdVar2;
        }
        return null;
    }

    void zza(zzd<K, V> zzdVar, boolean z) {
        int i;
        int i2 = 0;
        if (z) {
            zzdVar.zzcqv.zzcqp = zzdVar.zzcqp;
            zzdVar.zzcqp.zzcqv = zzdVar.zzcqv;
        }
        zzd<K, V> zzdVar2 = zzdVar.zzcqt;
        zzd<K, V> zzdVar3 = zzdVar.zzcqu;
        zzd<K, V> zzdVar4 = zzdVar.zzcqs;
        if (zzdVar2 == null || zzdVar3 == null) {
            if (zzdVar2 != null) {
                zza(zzdVar, zzdVar2);
                zzdVar.zzcqt = null;
            } else if (zzdVar3 != null) {
                zza(zzdVar, zzdVar3);
                zzdVar.zzcqu = null;
            } else {
                zza(zzdVar, (zzd) null);
            }
            zzb(zzdVar4, false);
            this.size--;
            this.modCount++;
            return;
        }
        zzd<K, V> zzadC = zzdVar2.height > zzdVar3.height ? zzdVar2.zzadC() : zzdVar3.zzadB();
        zza((zzd) zzadC, false);
        zzd<K, V> zzdVar5 = zzdVar.zzcqt;
        if (zzdVar5 != null) {
            i = zzdVar5.height;
            zzadC.zzcqt = zzdVar5;
            zzdVar5.zzcqs = zzadC;
            zzdVar.zzcqt = null;
        } else {
            i = 0;
        }
        zzd<K, V> zzdVar6 = zzdVar.zzcqu;
        if (zzdVar6 != null) {
            i2 = zzdVar6.height;
            zzadC.zzcqu = zzdVar6;
            zzdVar6.zzcqs = zzadC;
            zzdVar.zzcqu = null;
        }
        zzadC.height = Math.max(i, i2) + 1;
        zza(zzdVar, zzadC);
    }

    /* JADX WARN: Multi-variable type inference failed */
    zzd<K, V> zzaR(Object obj) {
        if (obj != 0) {
            try {
                return zza((zzbvo<K, V>) obj, false);
            } catch (ClassCastException e) {
                return null;
            }
        }
        return null;
    }

    zzd<K, V> zzaS(Object obj) {
        zzd<K, V> zzaR = zzaR(obj);
        if (zzaR != null) {
            zza((zzd) zzaR, true);
        }
        return zzaR;
    }

    zzd<K, V> zzc(Map.Entry<?, ?> entry) {
        zzd<K, V> zzaR = zzaR(entry.getKey());
        if (zzaR != null && equal(zzaR.value, entry.getValue())) {
            return zzaR;
        }
        return null;
    }
}
