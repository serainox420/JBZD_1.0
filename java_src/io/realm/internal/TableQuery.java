package io.realm.internal;
/* loaded from: classes3.dex */
public class TableQuery implements g {
    private static final long d = nativeGetFinalizerPtr();
    protected long b;
    protected final Table c;
    private final d e;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f5783a = false;
    private boolean f = true;

    private native double nativeAverageDouble(long j, long j2, long j3, long j4, long j5);

    private native double nativeAverageFloat(long j, long j2, long j3, long j4, long j5);

    private native double nativeAverageInt(long j, long j2, long j3, long j4, long j5);

    private native void nativeBeginsWith(long j, long[] jArr, String str, boolean z);

    private native void nativeBetween(long j, long[] jArr, double d2, double d3);

    private native void nativeBetween(long j, long[] jArr, float f, float f2);

    private native void nativeBetween(long j, long[] jArr, long j2, long j3);

    private native void nativeBetweenTimestamp(long j, long[] jArr, long j2, long j3);

    private native void nativeContains(long j, long[] jArr, String str, boolean z);

    private native long nativeCount(long j, long j2, long j3, long j4);

    private native void nativeEndGroup(long j);

    private native void nativeEndsWith(long j, long[] jArr, String str, boolean z);

    private native void nativeEqual(long j, long[] jArr, double d2);

    private native void nativeEqual(long j, long[] jArr, float f);

    private native void nativeEqual(long j, long[] jArr, long j2);

    private native void nativeEqual(long j, long[] jArr, String str, boolean z);

    private native void nativeEqual(long j, long[] jArr, boolean z);

    private native void nativeEqual(long j, long[] jArr, byte[] bArr);

    private native void nativeEqualTimestamp(long j, long[] jArr, long j2);

    private native long nativeFind(long j, long j2);

    private native long nativeFindAll(long j, long j2, long j3, long j4);

    private static native long nativeGetFinalizerPtr();

    private native void nativeGreater(long j, long[] jArr, double d2);

    private native void nativeGreater(long j, long[] jArr, float f);

    private native void nativeGreater(long j, long[] jArr, long j2);

    private native void nativeGreaterEqual(long j, long[] jArr, double d2);

    private native void nativeGreaterEqual(long j, long[] jArr, float f);

    private native void nativeGreaterEqual(long j, long[] jArr, long j2);

    private native void nativeGreaterEqualTimestamp(long j, long[] jArr, long j2);

    private native void nativeGreaterTimestamp(long j, long[] jArr, long j2);

    private native void nativeGroup(long j);

    private native long nativeHandoverQuery(long j, long j2);

    private static native long nativeImportHandoverRowIntoSharedGroup(long j, long j2);

    private native void nativeIsEmpty(long j, long[] jArr);

    private native void nativeIsNotNull(long j, long[] jArr);

    private native void nativeIsNull(long j, long[] jArr);

    private native void nativeLess(long j, long[] jArr, double d2);

    private native void nativeLess(long j, long[] jArr, float f);

    private native void nativeLess(long j, long[] jArr, long j2);

    private native void nativeLessEqual(long j, long[] jArr, double d2);

    private native void nativeLessEqual(long j, long[] jArr, float f);

    private native void nativeLessEqual(long j, long[] jArr, long j2);

    private native void nativeLessEqualTimestamp(long j, long[] jArr, long j2);

    private native void nativeLessTimestamp(long j, long[] jArr, long j2);

    private native void nativeLike(long j, long[] jArr, String str, boolean z);

    private native Double nativeMaximumDouble(long j, long j2, long j3, long j4, long j5);

    private native Float nativeMaximumFloat(long j, long j2, long j3, long j4, long j5);

    private native Long nativeMaximumInt(long j, long j2, long j3, long j4, long j5);

    private native Long nativeMaximumTimestamp(long j, long j2, long j3, long j4, long j5);

    private native Double nativeMinimumDouble(long j, long j2, long j3, long j4, long j5);

    private native Float nativeMinimumFloat(long j, long j2, long j3, long j4, long j5);

    private native Long nativeMinimumInt(long j, long j2, long j3, long j4, long j5);

    private native Long nativeMinimumTimestamp(long j, long j2, long j3, long j4, long j5);

    private native void nativeNot(long j);

    private native void nativeNotEqual(long j, long[] jArr, double d2);

    private native void nativeNotEqual(long j, long[] jArr, float f);

    private native void nativeNotEqual(long j, long[] jArr, long j2);

    private native void nativeNotEqual(long j, long[] jArr, String str, boolean z);

    private native void nativeNotEqual(long j, long[] jArr, byte[] bArr);

    private native void nativeNotEqualTimestamp(long j, long[] jArr, long j2);

    private native void nativeOr(long j);

    private native long nativeRemove(long j);

    private native double nativeSumDouble(long j, long j2, long j3, long j4, long j5);

    private native double nativeSumFloat(long j, long j2, long j3, long j4, long j5);

    private native long nativeSumInt(long j, long j2, long j3, long j4, long j5);

    private native String nativeValidateQuery(long j);

    public TableQuery(d dVar, Table table, long j) {
        if (this.f5783a) {
            System.err.println("++++++ new TableQuery, ptr= " + j);
        }
        this.e = dVar;
        this.c = table;
        this.b = j;
        dVar.a(this);
    }

    @Override // io.realm.internal.g
    public long getNativePtr() {
        return this.b;
    }

    @Override // io.realm.internal.g
    public long getNativeFinalizerPtr() {
        return d;
    }

    public Table a() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (!this.f) {
            String nativeValidateQuery = nativeValidateQuery(this.b);
            if (nativeValidateQuery.equals("")) {
                this.f = true;
                return;
            }
            throw new UnsupportedOperationException(nativeValidateQuery);
        }
    }

    public TableQuery c() {
        nativeOr(this.b);
        this.f = false;
        return this;
    }

    public TableQuery a(long[] jArr, long j) {
        nativeEqual(this.b, jArr, j);
        this.f = false;
        return this;
    }

    public TableQuery a(long[] jArr, boolean z) {
        nativeEqual(this.b, jArr, z);
        this.f = false;
        return this;
    }

    public long d() {
        b();
        return nativeFind(this.b, 0L);
    }

    public TableQuery a(long[] jArr) {
        nativeIsNull(this.b, jArr);
        this.f = false;
        return this;
    }
}
