package io.realm.internal;

import io.realm.internal.i;
import io.realm.o;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
@Keep
/* loaded from: classes3.dex */
public class Collection implements g {
    public static final byte AGGREGATE_FUNCTION_AVERAGE = 3;
    public static final byte AGGREGATE_FUNCTION_MAXIMUM = 2;
    public static final byte AGGREGATE_FUNCTION_MINIMUM = 1;
    public static final byte AGGREGATE_FUNCTION_SUM = 4;
    public static final byte MODE_EMPTY = 0;
    public static final byte MODE_LINKVIEW = 3;
    public static final byte MODE_QUERY = 2;
    public static final byte MODE_TABLE = 1;
    public static final byte MODE_TABLEVIEW = 4;
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final io.realm.internal.d context;
    private boolean isSnapshot;
    private boolean loaded;
    private final long nativePtr;
    private final i<b> observerPairs;
    private final SharedRealm sharedRealm;
    private final Table table;

    private static native Object nativeAggregate(long j, long j2, byte b2);

    private static native void nativeClear(long j);

    private static native boolean nativeContains(long j, long j2);

    private static native long nativeCreateResults(long j, long j2, SortDescriptor sortDescriptor, SortDescriptor sortDescriptor2);

    private static native long nativeCreateResultsFromLinkView(long j, long j2, SortDescriptor sortDescriptor);

    private static native long nativeCreateSnapshot(long j);

    private static native void nativeDelete(long j, long j2);

    private static native boolean nativeDeleteFirst(long j);

    private static native boolean nativeDeleteLast(long j);

    private static native long nativeDistinct(long j, SortDescriptor sortDescriptor);

    private static native long nativeFirstRow(long j);

    private static native long nativeGetFinalizerPtr();

    private static native byte nativeGetMode(long j);

    private static native long nativeGetRow(long j, int i);

    private static native long nativeIndexOf(long j, long j2);

    private static native long nativeIndexOfBySourceRowIndex(long j, long j2);

    private static native boolean nativeIsValid(long j);

    private static native long nativeLastRow(long j);

    private static native long nativeSize(long j);

    private static native long nativeSort(long j, SortDescriptor sortDescriptor);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    private static native long nativeWhere(long j);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b<T> extends i.b<T, Object> {
        public b(T t, Object obj) {
            super(t, obj);
        }

        public void a(T t, io.realm.g gVar) {
            if (this.c instanceof io.realm.h) {
                ((io.realm.h) this.c).a(t, gVar);
            } else if (this.c instanceof o) {
                ((o) this.c).a(t);
            } else {
                throw new RuntimeException("Unsupported listener type: " + this.c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class e<T> implements io.realm.h<T> {

        /* renamed from: a  reason: collision with root package name */
        private final o<T> f5768a;

        e(o<T> oVar) {
            this.f5768a = oVar;
        }

        @Override // io.realm.h
        public void a(T t, io.realm.g gVar) {
            this.f5768a.a(t);
        }

        public boolean equals(Object obj) {
            return (obj instanceof e) && this.f5768a == ((e) obj).f5768a;
        }

        public int hashCode() {
            return this.f5768a.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a implements i.a<b> {

        /* renamed from: a  reason: collision with root package name */
        private final io.realm.g f5766a;

        a(io.realm.g gVar) {
            this.f5766a = gVar;
        }

        @Override // io.realm.internal.i.a
        public void a(b bVar, Object obj) {
            bVar.a(obj, this.f5766a);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c<T> implements Iterator<T> {
        Collection b;
        protected int c = -1;

        protected abstract T b(UncheckedRow uncheckedRow);

        public c(Collection collection) {
            this.b = collection;
            if (!collection.isSnapshot) {
                if (!collection.sharedRealm.d()) {
                    this.b.sharedRealm.a(this);
                } else {
                    a();
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            c();
            return ((long) (this.c + 1)) < this.b.size();
        }

        @Override // java.util.Iterator
        public T next() {
            c();
            this.c++;
            if (this.c >= this.b.size()) {
                throw new NoSuchElementException("Cannot access index " + this.c + " when size is " + this.b.size() + ". Remember to check hasNext() before using next().");
            }
            return a(this.c);
        }

        @Override // java.util.Iterator
        @Deprecated
        public void remove() {
            throw new UnsupportedOperationException("remove() is not supported by RealmResults iterators.");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            this.b = this.b.createSnapshot();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b() {
            this.b = null;
        }

        void c() {
            if (this.b == null) {
                throw new ConcurrentModificationException("No outside changes to a Realm is allowed while iterating a living Realm collection.");
            }
        }

        T a(int i) {
            return b(this.b.getUncheckedRow(i));
        }
    }

    /* loaded from: classes.dex */
    public static abstract class d<T> extends c<T> implements ListIterator<T> {
        public d(Collection collection, int i) {
            super(collection);
            if (i >= 0 && i <= this.b.size()) {
                this.c = i - 1;
                return;
            }
            throw new IndexOutOfBoundsException("Starting location must be a valid index: [0, " + (this.b.size() - 1) + "]. Yours was " + i);
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void add(T t) {
            throw new UnsupportedOperationException("Adding an element is not supported. Use Realm.createObject() instead.");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            c();
            return this.c >= 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            c();
            return this.c + 1;
        }

        @Override // java.util.ListIterator
        public T previous() {
            c();
            try {
                this.c--;
                return a(this.c);
            } catch (IndexOutOfBoundsException e) {
                throw new NoSuchElementException("Cannot access index less than zero. This was " + this.c + ". Remember to check hasPrevious() before using previous().");
            }
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            c();
            return this.c;
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void set(T t) {
            throw new UnsupportedOperationException("Replacing and element is not supported.");
        }
    }

    /* loaded from: classes3.dex */
    public enum Aggregate {
        MINIMUM((byte) 1),
        MAXIMUM((byte) 2),
        AVERAGE((byte) 3),
        SUM((byte) 4);
        

        /* renamed from: a  reason: collision with root package name */
        private final byte f5764a;

        Aggregate(byte b2) {
            this.f5764a = b2;
        }

        public byte getValue() {
            return this.f5764a;
        }
    }

    /* loaded from: classes3.dex */
    public enum Mode {
        EMPTY,
        TABLE,
        QUERY,
        LINKVIEW,
        TABLEVIEW;

        static Mode a(byte b) {
            switch (b) {
                case 0:
                    return EMPTY;
                case 1:
                    return TABLE;
                case 2:
                    return QUERY;
                case 3:
                    return LINKVIEW;
                case 4:
                    return TABLEVIEW;
                default:
                    throw new IllegalArgumentException("Invalid value: " + ((int) b));
            }
        }
    }

    public Collection(SharedRealm sharedRealm, TableQuery tableQuery, SortDescriptor sortDescriptor, SortDescriptor sortDescriptor2) {
        this.isSnapshot = false;
        this.observerPairs = new i<>();
        tableQuery.b();
        this.nativePtr = nativeCreateResults(sharedRealm.getNativePtr(), tableQuery.getNativePtr(), sortDescriptor, sortDescriptor2);
        this.sharedRealm = sharedRealm;
        this.context = sharedRealm.f;
        this.table = tableQuery.a();
        this.context.a(this);
        this.loaded = false;
    }

    public Collection(SharedRealm sharedRealm, TableQuery tableQuery, SortDescriptor sortDescriptor) {
        this(sharedRealm, tableQuery, sortDescriptor, null);
    }

    public Collection(SharedRealm sharedRealm, TableQuery tableQuery) {
        this(sharedRealm, tableQuery, null, null);
    }

    public Collection(SharedRealm sharedRealm, LinkView linkView, SortDescriptor sortDescriptor) {
        this.isSnapshot = false;
        this.observerPairs = new i<>();
        this.nativePtr = nativeCreateResultsFromLinkView(sharedRealm.getNativePtr(), linkView.getNativePtr(), sortDescriptor);
        this.sharedRealm = sharedRealm;
        this.context = sharedRealm.f;
        this.table = linkView.d();
        this.context.a(this);
        this.loaded = true;
    }

    private Collection(SharedRealm sharedRealm, Table table, long j) {
        this.isSnapshot = false;
        this.observerPairs = new i<>();
        this.sharedRealm = sharedRealm;
        this.context = sharedRealm.f;
        this.table = table;
        this.nativePtr = j;
        this.context.a(this);
        this.loaded = false;
    }

    public Collection createSnapshot() {
        if (!this.isSnapshot) {
            Collection collection = new Collection(this.sharedRealm, this.table, nativeCreateSnapshot(this.nativePtr));
            collection.isSnapshot = true;
            return collection;
        }
        return this;
    }

    @Override // io.realm.internal.g
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.g
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public UncheckedRow getUncheckedRow(int i) {
        return this.table.g(nativeGetRow(this.nativePtr, i));
    }

    public UncheckedRow firstUncheckedRow() {
        long nativeFirstRow = nativeFirstRow(this.nativePtr);
        if (nativeFirstRow != 0) {
            return this.table.g(nativeFirstRow);
        }
        return null;
    }

    public UncheckedRow lastUncheckedRow() {
        long nativeLastRow = nativeLastRow(this.nativePtr);
        if (nativeLastRow != 0) {
            return this.table.g(nativeLastRow);
        }
        return null;
    }

    public Table getTable() {
        return this.table;
    }

    public TableQuery where() {
        return new TableQuery(this.context, this.table, nativeWhere(this.nativePtr));
    }

    public Number aggregateNumber(Aggregate aggregate, long j) {
        return (Number) nativeAggregate(this.nativePtr, j, aggregate.getValue());
    }

    public Date aggregateDate(Aggregate aggregate, long j) {
        return (Date) nativeAggregate(this.nativePtr, j, aggregate.getValue());
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public void clear() {
        nativeClear(this.nativePtr);
    }

    public Collection sort(SortDescriptor sortDescriptor) {
        return new Collection(this.sharedRealm, this.table, nativeSort(this.nativePtr, sortDescriptor));
    }

    public Collection distinct(SortDescriptor sortDescriptor) {
        return new Collection(this.sharedRealm, this.table, nativeDistinct(this.nativePtr, sortDescriptor));
    }

    public boolean contains(UncheckedRow uncheckedRow) {
        return nativeContains(this.nativePtr, uncheckedRow.getNativePtr());
    }

    public int indexOf(UncheckedRow uncheckedRow) {
        long nativeIndexOf = nativeIndexOf(this.nativePtr, uncheckedRow.getNativePtr());
        if (nativeIndexOf > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) nativeIndexOf;
    }

    public int indexOf(long j) {
        long nativeIndexOfBySourceRowIndex = nativeIndexOfBySourceRowIndex(this.nativePtr, j);
        if (nativeIndexOfBySourceRowIndex > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) nativeIndexOfBySourceRowIndex;
    }

    public void delete(long j) {
        nativeDelete(this.nativePtr, j);
    }

    public boolean deleteFirst() {
        return nativeDeleteFirst(this.nativePtr);
    }

    public boolean deleteLast() {
        return nativeDeleteLast(this.nativePtr);
    }

    public <T> void addListener(T t, io.realm.h<T> hVar) {
        if (this.observerPairs.a()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.a((i<b>) new b(t, hVar));
    }

    public <T> void addListener(T t, o<T> oVar) {
        addListener((Collection) t, (io.realm.h<Collection>) new e(oVar));
    }

    public <T> void removeListener(T t, io.realm.h<T> hVar) {
        this.observerPairs.a(t, hVar);
        if (this.observerPairs.a()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public <T> void removeListener(T t, o<T> oVar) {
        removeListener((Collection) t, (io.realm.h<Collection>) new e(oVar));
    }

    public void removeAllListeners() {
        this.observerPairs.b();
        nativeStopListening(this.nativePtr);
    }

    public boolean isValid() {
        return nativeIsValid(this.nativePtr);
    }

    private void notifyChangeListeners(long j) {
        if (j != 0 || !isLoaded()) {
            boolean z = this.loaded;
            this.loaded = true;
            this.observerPairs.a((i.a<b>) new a((j == 0 || !z) ? null : new CollectionChangeSet(j)));
        }
    }

    public Mode getMode() {
        return Mode.a(nativeGetMode(this.nativePtr));
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    public void load() {
        if (!this.loaded) {
            notifyChangeListeners(0L);
        }
    }
}
