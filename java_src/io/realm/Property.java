package io.realm;
/* loaded from: classes3.dex */
class Property {

    /* renamed from: a  reason: collision with root package name */
    private final long f5739a;

    private static native void nativeClose(long j);

    private static native long nativeCreateProperty(String str, int i, String str2);

    private static native long nativeCreateProperty(String str, int i, boolean z, boolean z2, boolean z3);

    public Property(String str, RealmFieldType realmFieldType, boolean z, boolean z2, boolean z3) {
        this.f5739a = nativeCreateProperty(str, realmFieldType.getNativeValue(), z, z2, !z3);
    }

    public Property(String str, RealmFieldType realmFieldType, RealmObjectSchema realmObjectSchema) {
        this.f5739a = nativeCreateProperty(str, realmFieldType.getNativeValue(), realmObjectSchema.c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Property(long j) {
        this.f5739a = j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long a() {
        return this.f5739a;
    }

    public void b() {
        if (this.f5739a != 0) {
            nativeClose(this.f5739a);
        }
    }
}
