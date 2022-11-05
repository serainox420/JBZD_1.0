package io.realm.internal;
/* loaded from: classes3.dex */
public class LinkView implements g {
    private static final long e = nativeGetFinalizerPtr();

    /* renamed from: a  reason: collision with root package name */
    final Table f5772a;
    final long b;
    private final d c;
    private final long d;

    public static native void nativeAdd(long j, long j2);

    public static native void nativeClear(long j);

    private native long nativeFind(long j, long j2);

    private static native long nativeGetFinalizerPtr();

    private native long nativeGetTargetRowIndex(long j, long j2);

    private native long nativeGetTargetTable(long j);

    private native void nativeInsert(long j, long j2, long j3);

    private native boolean nativeIsAttached(long j);

    private native boolean nativeIsEmpty(long j);

    private native void nativeMove(long j, long j2, long j3);

    private native void nativeRemove(long j, long j2);

    private native void nativeRemoveAllTargetRows(long j);

    private native void nativeRemoveTargetRow(long j, long j2);

    private native void nativeSet(long j, long j2, long j3);

    private native long nativeSize(long j);

    native long nativeGetRow(long j, long j2);

    protected native long nativeWhere(long j);

    public LinkView(d dVar, Table table, long j, long j2) {
        this.c = dVar;
        this.f5772a = table;
        this.b = j;
        this.d = j2;
        dVar.a(this);
    }

    @Override // io.realm.internal.g
    public long getNativePtr() {
        return this.d;
    }

    @Override // io.realm.internal.g
    public long getNativeFinalizerPtr() {
        return e;
    }

    public long a(long j) {
        return nativeGetTargetRowIndex(this.d, j);
    }

    public void b(long j) {
        f();
        nativeAdd(this.d, j);
    }

    public void a(long j, long j2) {
        f();
        nativeInsert(this.d, j, j2);
    }

    public void b(long j, long j2) {
        f();
        nativeSet(this.d, j, j2);
    }

    public void c(long j) {
        f();
        nativeRemove(this.d, j);
    }

    public void a() {
        f();
        nativeClear(this.d);
    }

    public long b() {
        return nativeSize(this.d);
    }

    public boolean c() {
        return nativeIsAttached(this.d);
    }

    public Table d() {
        return this.f5772a;
    }

    public Table e() {
        return new Table(this.f5772a, nativeGetTargetTable(this.d));
    }

    private void f() {
        if (this.f5772a.e()) {
            throw new IllegalStateException("Changing Realm data can only be done from inside a write transaction.");
        }
    }
}
