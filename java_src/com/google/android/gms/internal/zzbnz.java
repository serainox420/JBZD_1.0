package com.google.android.gms.internal;

import java.util.AbstractMap;
import java.util.Comparator;
import java.util.EmptyStackException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Stack;
/* loaded from: classes2.dex */
public class zzbnz<K, V> implements Iterator<Map.Entry<K, V>> {
    private final Stack<zzbof<K, V>> zzcaU = new Stack<>();
    private final boolean zzcaV;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbnz(zzbod<K, V> zzbodVar, K k, Comparator<K> comparator, boolean z) {
        this.zzcaV = z;
        zzbod<K, V> zzbodVar2 = zzbodVar;
        while (!zzbodVar2.isEmpty()) {
            int compare = k != null ? z ? comparator.compare(k, zzbodVar2.getKey()) : comparator.compare(zzbodVar2.getKey(), k) : 1;
            if (compare < 0) {
                zzbodVar2 = z ? zzbodVar2.zzXc() : zzbodVar2.zzXd();
            } else if (compare == 0) {
                this.zzcaU.push((zzbof) zzbodVar2);
                return;
            } else {
                this.zzcaU.push((zzbof) zzbodVar2);
                zzbodVar2 = z ? zzbodVar2.zzXd() : zzbodVar2.zzXc();
            }
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.zzcaU.size() > 0;
    }

    @Override // java.util.Iterator
    public Map.Entry<K, V> next() {
        try {
            zzbof<K, V> pop = this.zzcaU.pop();
            AbstractMap.SimpleEntry simpleEntry = new AbstractMap.SimpleEntry(pop.getKey(), pop.getValue());
            if (this.zzcaV) {
                for (zzbod<K, V> zzXc = pop.zzXc(); !zzXc.isEmpty(); zzXc = zzXc.zzXd()) {
                    this.zzcaU.push((zzbof) zzXc);
                }
            } else {
                for (zzbod<K, V> zzXd = pop.zzXd(); !zzXd.isEmpty(); zzXd = zzXd.zzXc()) {
                    this.zzcaU.push((zzbof) zzXd);
                }
            }
            return simpleEntry;
        } catch (EmptyStackException e) {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove called on immutable collection");
    }
}
