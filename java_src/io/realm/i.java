package io.realm;

import io.realm.internal.Collection;
import io.realm.internal.InvalidRow;
import io.realm.internal.UncheckedRow;
import io.realm.t;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.ListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OrderedRealmCollectionImpl.java */
/* loaded from: classes.dex */
public abstract class i<E extends t> extends AbstractList<E> implements OrderedRealmCollection<E> {

    /* renamed from: a  reason: collision with root package name */
    final io.realm.b f5761a;
    Class<E> b;
    String c;
    final Collection d;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* synthetic */ boolean add(Object obj) {
        return a((i<E>) ((t) obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(io.realm.b bVar, Collection collection, Class<E> cls) {
        this.f5761a = bVar;
        this.b = cls;
        this.d = collection;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(io.realm.b bVar, Collection collection, String str) {
        this.f5761a = bVar;
        this.c = str;
        this.d = collection;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (a()) {
            if ((obj instanceof io.realm.internal.l) && ((io.realm.internal.l) obj).c().b() == InvalidRow.INSTANCE) {
                return false;
            }
            Iterator<E> it = iterator();
            while (it.hasNext()) {
                if (it.next().equals(obj)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public E get(int i) {
        this.f5761a.e();
        return (E) this.f5761a.a(this.b, this.c, this.d.getUncheckedRow(i));
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new a();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return new b(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int i) {
        return new b(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        if (a()) {
            long size = this.d.size();
            if (size <= 2147483647L) {
                return (int) size;
            }
            return Integer.MAX_VALUE;
        }
        return 0;
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    /* renamed from: b */
    public E remove(int i) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean removeAll(java.util.Collection<?> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    /* renamed from: a */
    public E set(int i, E e) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean retainAll(java.util.Collection<?> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Deprecated
    public boolean a(E e) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    /* renamed from: b */
    public void add(int i, E e) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public boolean addAll(int i, java.util.Collection<? extends E> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean addAll(java.util.Collection<? extends E> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: OrderedRealmCollectionImpl.java */
    /* loaded from: classes3.dex */
    public class a extends Collection.c<E> {
        a() {
            super(i.this.d);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.realm.internal.Collection.c
        /* renamed from: a */
        public E b(UncheckedRow uncheckedRow) {
            return (E) i.this.f5761a.a(i.this.b, i.this.c, uncheckedRow);
        }
    }

    /* compiled from: OrderedRealmCollectionImpl.java */
    /* loaded from: classes3.dex */
    private class b extends Collection.d<E> {
        b(int i) {
            super(i.this.d, i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.realm.internal.Collection.c
        /* renamed from: a */
        public E b(UncheckedRow uncheckedRow) {
            return (E) i.this.f5761a.a(i.this.b, i.this.c, uncheckedRow);
        }
    }
}
