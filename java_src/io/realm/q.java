package io.realm;

import io.realm.internal.Collection;
import io.realm.internal.InvalidRow;
import io.realm.internal.LinkView;
import io.realm.internal.SortDescriptor;
import io.realm.t;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
/* compiled from: RealmList.java */
/* loaded from: classes3.dex */
public class q<E extends t> extends AbstractList<E> implements OrderedRealmCollection<E> {

    /* renamed from: a  reason: collision with root package name */
    protected Class<E> f5813a;
    protected String b;
    final LinkView c;
    protected io.realm.b d;
    private final Collection e;
    private List<E> f;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* synthetic */ boolean add(Object obj) {
        return a((q<E>) ((t) obj));
    }

    public q() {
        this.e = null;
        this.c = null;
        this.f = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Class<E> cls, LinkView linkView, io.realm.b bVar) {
        this.e = new Collection(bVar.e, linkView, (SortDescriptor) null);
        this.f5813a = cls;
        this.c = linkView;
        this.d = bVar;
    }

    public boolean b() {
        return this.d != null;
    }

    private boolean c() {
        return this.c != null && this.c.c();
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public void add(int i, E e) {
        c((q<E>) e);
        if (b()) {
            d();
            if (i < 0 || i > size()) {
                throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + size());
            }
            this.c.a(i, ((io.realm.internal.l) b((q<E>) e)).c().b().getIndex());
        } else {
            this.f.add(i, e);
        }
        this.modCount++;
    }

    public boolean a(E e) {
        c((q<E>) e);
        if (b()) {
            d();
            this.c.b(((io.realm.internal.l) b((q<E>) e)).c().b().getIndex());
        } else {
            this.f.add(e);
        }
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: b */
    public E set(int i, E e) {
        c((q<E>) e);
        if (b()) {
            d();
            E e2 = get(i);
            this.c.b(i, ((io.realm.internal.l) b((q<E>) e)).c().b().getIndex());
            return e2;
        }
        return this.f.set(i, e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private E b(E e) {
        if (e instanceof io.realm.internal.l) {
            io.realm.internal.l lVar = (io.realm.internal.l) e;
            if (lVar instanceof e) {
                String a2 = RealmSchema.a(this.c.e());
                if (lVar.c().a() == this.d) {
                    String d = ((e) e).d();
                    if (!a2.equals(d)) {
                        throw new IllegalArgumentException(String.format("The object has a different type from list's. Type of the list is '%s', type of object is '%s'.", a2, d));
                    }
                    return e;
                } else if (this.d.c == lVar.c().a().c) {
                    throw new IllegalArgumentException("Cannot copy DynamicRealmObject between Realm instances.");
                } else {
                    throw new IllegalStateException("Cannot copy an object to a Realm instance created in another thread.");
                }
            } else if (lVar.c().b() != null && lVar.c().a().f().equals(this.d.f())) {
                if (this.d != lVar.c().a()) {
                    throw new IllegalArgumentException("Cannot copy an object from another Realm instance.");
                }
                return e;
            }
        }
        l lVar2 = (l) this.d;
        if (lVar2.b((Class<? extends t>) e.getClass()).d()) {
            return (E) lVar2.b((l) e);
        }
        return (E) lVar2.a((l) e);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (b()) {
            d();
            this.c.a();
        } else {
            this.f.clear();
        }
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public E remove(int i) {
        E remove;
        if (b()) {
            d();
            remove = get(i);
            this.c.c(i);
        } else {
            remove = this.f.remove(i);
        }
        this.modCount++;
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        if (b() && !this.d.a()) {
            throw new IllegalStateException("Objects can only be removed from inside a write transaction");
        }
        return super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(java.util.Collection<?> collection) {
        if (b() && !this.d.a()) {
            throw new IllegalStateException("Objects can only be removed from inside a write transaction");
        }
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: b */
    public E get(int i) {
        if (b()) {
            d();
            return (E) this.d.a(this.f5813a, this.b, this.c.a(i));
        }
        return this.f.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        if (b()) {
            d();
            long b2 = this.c.b();
            if (b2 >= 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) b2;
        }
        return this.f.size();
    }

    @Override // io.realm.RealmCollection
    public boolean a() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (b()) {
            this.d.e();
            if ((obj instanceof io.realm.internal.l) && ((io.realm.internal.l) obj).c().b() == InvalidRow.INSTANCE) {
                return false;
            }
            Iterator<E> it = iterator();
            while (it.hasNext()) {
                if (it.next().equals(obj)) {
                    return true;
                }
            }
            return false;
        }
        return this.f.contains(obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return b() ? new a() : super.iterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int i) {
        return b() ? new b(i) : super.listIterator(i);
    }

    private void c(E e) {
        if (e == null) {
            throw new IllegalArgumentException("RealmList does not accept null values");
        }
    }

    private void d() {
        this.d.e();
        if (this.c == null || !this.c.c()) {
            throw new IllegalStateException("Realm instance has been closed or this object or its parent has been deleted.");
        }
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(b() ? this.f5813a.getSimpleName() : getClass().getSimpleName());
        sb.append("@[");
        if (b() && !c()) {
            sb.append("invalid");
        } else {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= size()) {
                    break;
                }
                if (b()) {
                    sb.append(((io.realm.internal.l) get(i2)).c().b().getIndex());
                } else {
                    sb.append(System.identityHashCode(get(i2)));
                }
                if (i2 < size() - 1) {
                    sb.append(',');
                }
                i = i2 + 1;
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RealmList.java */
    /* loaded from: classes3.dex */
    public class a implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        int f5814a;
        int b;
        int c;

        private a() {
            this.f5814a = 0;
            this.b = -1;
            this.c = q.this.modCount;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            q.this.d.e();
            b();
            return this.f5814a != q.this.size();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public E next() {
            q.this.d.e();
            b();
            int i = this.f5814a;
            try {
                E e = (E) q.this.get(i);
                this.b = i;
                this.f5814a = i + 1;
                return e;
            } catch (IndexOutOfBoundsException e2) {
                b();
                throw new NoSuchElementException("Cannot access index " + i + " when size is " + q.this.size() + ". Remember to check hasNext() before using next().");
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            q.this.d.e();
            if (this.b < 0) {
                throw new IllegalStateException("Cannot call remove() twice. Must call next() in between.");
            }
            b();
            try {
                q.this.remove(this.b);
                if (this.b < this.f5814a) {
                    this.f5814a--;
                }
                this.b = -1;
                this.c = q.this.modCount;
            } catch (IndexOutOfBoundsException e) {
                throw new ConcurrentModificationException();
            }
        }

        final void b() {
            if (q.this.modCount != this.c) {
                throw new ConcurrentModificationException();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RealmList.java */
    /* loaded from: classes3.dex */
    public class b extends q<E>.a implements ListIterator<E> {
        b(int i) {
            super();
            if (i >= 0 && i <= q.this.size()) {
                this.f5814a = i;
                return;
            }
            throw new IndexOutOfBoundsException("Starting location must be a valid index: [0, " + (q.this.size() - 1) + "]. Index was " + i);
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f5814a != 0;
        }

        @Override // java.util.ListIterator
        /* renamed from: c */
        public E previous() {
            b();
            int i = this.f5814a - 1;
            try {
                E e = (E) q.this.get(i);
                this.f5814a = i;
                this.b = i;
                return e;
            } catch (IndexOutOfBoundsException e2) {
                b();
                throw new NoSuchElementException("Cannot access index less than zero. This was " + i + ". Remember to check hasPrevious() before using previous().");
            }
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f5814a;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f5814a - 1;
        }

        @Override // java.util.ListIterator
        /* renamed from: a */
        public void set(E e) {
            q.this.d.e();
            if (this.b < 0) {
                throw new IllegalStateException();
            }
            b();
            try {
                q.this.set(this.b, e);
                this.c = q.this.modCount;
            } catch (IndexOutOfBoundsException e2) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        /* renamed from: b */
        public void add(E e) {
            q.this.d.e();
            b();
            try {
                int i = this.f5814a;
                q.this.add(i, e);
                this.b = -1;
                this.f5814a = i + 1;
                this.c = q.this.modCount;
            } catch (IndexOutOfBoundsException e2) {
                throw new ConcurrentModificationException();
            }
        }
    }
}
