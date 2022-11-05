package com.google.android.gms.common.util;

import android.support.v4.f.a;
import android.support.v4.f.k;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class zza<E> extends AbstractSet<E> {
    private final a<E, E> zzaHS;

    public zza() {
        this.zzaHS = new a<>();
    }

    public zza(int i) {
        this.zzaHS = new a<>(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zza(Collection<E> collection) {
        this(collection.size());
        addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        if (this.zzaHS.containsKey(e)) {
            return false;
        }
        this.zzaHS.put(e, e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        return collection instanceof zza ? zza((zza) collection) : super.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.zzaHS.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.zzaHS.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.zzaHS.keySet().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (!this.zzaHS.containsKey(obj)) {
            return false;
        }
        this.zzaHS.remove(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.zzaHS.size();
    }

    public boolean zza(zza<? extends E> zzaVar) {
        int size = size();
        this.zzaHS.a((k<? extends E, ? extends E>) zzaVar.zzaHS);
        return size() > size;
    }
}
