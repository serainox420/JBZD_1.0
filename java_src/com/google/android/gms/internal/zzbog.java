package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbny;
import com.google.android.gms.internal.zzbod;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbog<K, V> extends zzbny<K, V> {
    private Comparator<K> zzcaO;
    private zzbod<K, V> zzcbf;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza<A, B, C> {
        private final Map<B, C> values;
        private final List<A> zzcbg;
        private final zzbny.zza.InterfaceC0309zza<A, B> zzcbh;
        private zzbof<A, C> zzcbi;
        private zzbof<A, C> zzcbj;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.android.gms.internal.zzbog$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0310zza implements Iterable<zzb> {
            private final int length;
            private long value;

            public C0310zza(int i) {
                int i2 = i + 1;
                this.length = (int) Math.floor(Math.log(i2) / Math.log(2.0d));
                this.value = i2 & (((long) Math.pow(2.0d, this.length)) - 1);
            }

            @Override // java.lang.Iterable
            public Iterator<zzb> iterator() {
                return new Iterator<zzb>() { // from class: com.google.android.gms.internal.zzbog.zza.zza.1
                    private int zzcbk;

                    {
                        this.zzcbk = C0310zza.this.length - 1;
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.zzcbk >= 0;
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                    }

                    @Override // java.util.Iterator
                    /* renamed from: zzXo */
                    public zzb next() {
                        boolean z = true;
                        zzb zzbVar = new zzb();
                        if ((C0310zza.this.value & (1 << this.zzcbk)) != 0) {
                            z = false;
                        }
                        zzbVar.zzcbm = z;
                        zzbVar.zzcbn = (int) Math.pow(2.0d, this.zzcbk);
                        this.zzcbk--;
                        return zzbVar;
                    }
                };
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public static class zzb {
            public boolean zzcbm;
            public int zzcbn;

            zzb() {
            }
        }

        private zza(List<A> list, Map<B, C> map, zzbny.zza.InterfaceC0309zza<A, B> interfaceC0309zza) {
            this.zzcbg = list;
            this.values = map;
            this.zzcbh = interfaceC0309zza;
        }

        private zzbod<A, C> zzF(int i, int i2) {
            if (i2 == 0) {
                return zzboc.zzXb();
            }
            if (i2 == 1) {
                A a2 = this.zzcbg.get(i);
                return new zzbob(a2, zzap(a2), null, null);
            }
            int i3 = i2 / 2;
            int i4 = i + i3;
            zzbod<A, C> zzF = zzF(i, i3);
            zzbod<A, C> zzF2 = zzF(i4 + 1, i3);
            A a3 = this.zzcbg.get(i4);
            return new zzbob(a3, zzap(a3), zzF, zzF2);
        }

        private void zza(zzbod.zza zzaVar, int i, int i2) {
            zzbod<A, C> zzF = zzF(i2 + 1, i - 1);
            A a2 = this.zzcbg.get(i2);
            zzbof<A, C> zzboeVar = zzaVar == zzbod.zza.RED ? new zzboe<>(a2, zzap(a2), null, zzF) : new zzbob<>(a2, zzap(a2), null, zzF);
            if (this.zzcbi == null) {
                this.zzcbi = zzboeVar;
                this.zzcbj = zzboeVar;
                return;
            }
            this.zzcbj.zzb(zzboeVar);
            this.zzcbj = zzboeVar;
        }

        private C zzap(A a2) {
            return this.values.get(this.zzcbh.zzak(a2));
        }

        public static <A, B, C> zzbog<A, C> zzc(List<A> list, Map<B, C> map, zzbny.zza.InterfaceC0309zza<A, B> interfaceC0309zza, Comparator<A> comparator) {
            zza zzaVar = new zza(list, map, interfaceC0309zza);
            Collections.sort(list, comparator);
            Iterator<zzb> it = new C0310zza(list.size()).iterator();
            int size = list.size();
            while (true) {
                int i = size;
                if (!it.hasNext()) {
                    break;
                }
                zzb next = it.next();
                int i2 = i - next.zzcbn;
                if (next.zzcbm) {
                    zzaVar.zza(zzbod.zza.BLACK, next.zzcbn, i2);
                } else {
                    zzaVar.zza(zzbod.zza.BLACK, next.zzcbn, i2);
                    i2 -= next.zzcbn;
                    zzaVar.zza(zzbod.zza.RED, next.zzcbn, i2);
                }
                size = i2;
            }
            return new zzbog<>(zzaVar.zzcbi == null ? zzboc.zzXb() : zzaVar.zzcbi, comparator);
        }
    }

    private zzbog(zzbod<K, V> zzbodVar, Comparator<K> comparator) {
        this.zzcbf = zzbodVar;
        this.zzcaO = comparator;
    }

    private zzbod<K, V> zzao(K k) {
        zzbod<K, V> zzbodVar = this.zzcbf;
        while (!zzbodVar.isEmpty()) {
            int compare = this.zzcaO.compare(k, zzbodVar.getKey());
            if (compare < 0) {
                zzbodVar = zzbodVar.zzXc();
            } else if (compare == 0) {
                return zzbodVar;
            } else {
                zzbodVar = zzbodVar.zzXd();
            }
        }
        return null;
    }

    public static <A, B, C> zzbog<A, C> zzc(List<A> list, Map<B, C> map, zzbny.zza.InterfaceC0309zza<A, B> interfaceC0309zza, Comparator<A> comparator) {
        return zza.zzc(list, map, interfaceC0309zza, comparator);
    }

    public static <A, B> zzbog<A, B> zzc(Map<A, B> map, Comparator<A> comparator) {
        return zza.zzc(new ArrayList(map.keySet()), map, zzbny.zza.zzWW(), comparator);
    }

    @Override // com.google.android.gms.internal.zzbny
    public boolean containsKey(K k) {
        return zzao(k) != null;
    }

    @Override // com.google.android.gms.internal.zzbny
    public V get(K k) {
        zzbod<K, V> zzao = zzao(k);
        if (zzao != null) {
            return zzao.getValue();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzbny
    public Comparator<K> getComparator() {
        return this.zzcaO;
    }

    @Override // com.google.android.gms.internal.zzbny
    public boolean isEmpty() {
        return this.zzcbf.isEmpty();
    }

    @Override // com.google.android.gms.internal.zzbny, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new zzbnz(this.zzcbf, null, this.zzcaO, false);
    }

    @Override // com.google.android.gms.internal.zzbny
    public int size() {
        return this.zzcbf.zzXg();
    }

    @Override // com.google.android.gms.internal.zzbny
    public K zzWT() {
        return this.zzcbf.zzXe().getKey();
    }

    @Override // com.google.android.gms.internal.zzbny
    public K zzWU() {
        return this.zzcbf.zzXf().getKey();
    }

    @Override // com.google.android.gms.internal.zzbny
    public Iterator<Map.Entry<K, V>> zzWV() {
        return new zzbnz(this.zzcbf, null, this.zzcaO, true);
    }

    @Override // com.google.android.gms.internal.zzbny
    public void zza(zzbod.zzb<K, V> zzbVar) {
        this.zzcbf.zza(zzbVar);
    }

    @Override // com.google.android.gms.internal.zzbny
    public zzbny<K, V> zzag(K k) {
        return !containsKey(k) ? this : new zzbog(this.zzcbf.zza(k, this.zzcaO).zza(null, null, zzbod.zza.BLACK, null, null), this.zzcaO);
    }

    @Override // com.google.android.gms.internal.zzbny
    public K zzah(K k) {
        zzbod<K, V> zzbodVar = this.zzcbf;
        zzbod<K, V> zzbodVar2 = null;
        while (!zzbodVar.isEmpty()) {
            int compare = this.zzcaO.compare(k, zzbodVar.getKey());
            if (compare == 0) {
                if (zzbodVar.zzXc().isEmpty()) {
                    if (zzbodVar2 == null) {
                        return null;
                    }
                    return zzbodVar2.getKey();
                }
                zzbod<K, V> zzXc = zzbodVar.zzXc();
                while (!zzXc.zzXd().isEmpty()) {
                    zzXc = zzXc.zzXd();
                }
                return zzXc.getKey();
            } else if (compare < 0) {
                zzbodVar = zzbodVar.zzXc();
            } else {
                zzbod<K, V> zzbodVar3 = zzbodVar;
                zzbodVar = zzbodVar.zzXd();
                zzbodVar2 = zzbodVar3;
            }
        }
        String valueOf = String.valueOf(k);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Couldn't find predecessor key of non-present key: ").append(valueOf).toString());
    }

    @Override // com.google.android.gms.internal.zzbny
    public zzbny<K, V> zzi(K k, V v) {
        return new zzbog(this.zzcbf.zza(k, v, this.zzcaO).zza(null, null, zzbod.zza.BLACK, null, null), this.zzcaO);
    }
}
