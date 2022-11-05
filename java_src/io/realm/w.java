package io.realm;

import io.realm.t;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
/* compiled from: RealmResults.java */
/* loaded from: classes.dex */
public class w<E extends t> extends i<E> {
    @Override // io.realm.i
    public /* bridge */ /* synthetic */ t a(int i) {
        return super.get(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.i
    @Deprecated
    public /* bridge */ /* synthetic */ t a(int i, t tVar) {
        return super.set(i, tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.i
    @Deprecated
    public /* bridge */ /* synthetic */ boolean a(t tVar) {
        return super.a((w<E>) tVar);
    }

    @Override // io.realm.i, java.util.AbstractList, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean addAll(int i, Collection collection) {
        return super.addAll(i, collection);
    }

    @Override // io.realm.i, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return super.addAll(collection);
    }

    @Override // io.realm.i
    @Deprecated
    public /* bridge */ /* synthetic */ t b(int i) {
        return super.remove(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.i
    @Deprecated
    public /* bridge */ /* synthetic */ void b(int i, t tVar) {
        super.add(i, tVar);
    }

    @Override // io.realm.i, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // io.realm.i, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // io.realm.i, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    @Override // io.realm.i, java.util.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ ListIterator listIterator() {
        return super.listIterator();
    }

    @Override // io.realm.i, java.util.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return super.listIterator(i);
    }

    @Override // io.realm.i, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // io.realm.i, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // io.realm.i, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // io.realm.i, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(b bVar, io.realm.internal.Collection collection, Class<E> cls) {
        super(bVar, collection, cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(b bVar, io.realm.internal.Collection collection, String str) {
        super(bVar, collection, str);
    }

    @Override // io.realm.RealmCollection
    public boolean a() {
        this.f5761a.e();
        return this.d.isLoaded();
    }

    public boolean b() {
        this.f5761a.e();
        this.d.load();
        return true;
    }
}
