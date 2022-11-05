package io.realm.internal;
/* loaded from: classes3.dex */
public class CollectionChangeSet implements io.realm.g, g {

    /* renamed from: a  reason: collision with root package name */
    private static long f5769a = nativeGetFinalizerPtr();
    private final long b;

    private static native long nativeGetFinalizerPtr();

    private static native int[] nativeGetIndices(long j, int i);

    private static native int[] nativeGetRanges(long j, int i);

    public CollectionChangeSet(long j) {
        this.b = j;
        d.f5794a.a(this);
    }

    @Override // io.realm.internal.g
    public long getNativePtr() {
        return this.b;
    }

    @Override // io.realm.internal.g
    public long getNativeFinalizerPtr() {
        return f5769a;
    }
}
