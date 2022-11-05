package io.realm.internal;

import io.realm.RealmSchema;
import io.realm.internal.Collection;
import io.realm.internal.android.AndroidRealmNotifier;
import io.realm.p;
import java.io.Closeable;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public final class SharedRealm implements g, Closeable {
    private static final long g = nativeGetFinalizerPtr();
    private static volatile File h;

    /* renamed from: a  reason: collision with root package name */
    public final RealmNotifier f5776a;
    public final h b;
    public final io.realm.internal.a d;
    final d f;
    private long i;
    private p j;
    private long k;
    private final a l;
    public final List<WeakReference<Collection>> c = new CopyOnWriteArrayList();
    public final List<WeakReference<Collection.c>> e = new ArrayList();

    /* loaded from: classes3.dex */
    public interface a {
        void a(long j);
    }

    private static native void nativeBeginTransaction(long j);

    private static native void nativeCancelTransaction(long j);

    private static native void nativeCloseConfig(long j);

    private static native void nativeCloseSharedRealm(long j);

    private static native void nativeCommitTransaction(long j);

    private static native boolean nativeCompact(long j);

    private static native long nativeCreateConfig(String str, byte[] bArr, byte b2, boolean z, boolean z2, long j, boolean z3, boolean z4, String str2, String str3);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetSharedRealm(long j, RealmNotifier realmNotifier);

    private static native long nativeGetSnapshotVersion(long j);

    private static native long nativeGetTable(long j, String str);

    private static native String nativeGetTableName(long j, int i);

    private static native long nativeGetVersion(long j);

    private static native long[] nativeGetVersionID(long j);

    private static native boolean nativeHasTable(long j, String str);

    private static native void nativeInit(String str);

    private static native boolean nativeIsAutoRefresh(long j);

    private static native boolean nativeIsClosed(long j);

    private static native boolean nativeIsEmpty(long j);

    private static native boolean nativeIsInTransaction(long j);

    private static native long nativeReadGroup(long j);

    private static native void nativeRefresh(long j);

    private static native void nativeRemoveTable(long j, String str);

    private static native void nativeRenameTable(long j, String str, String str2);

    private static native boolean nativeRequiresMigration(long j, long j2);

    private static native void nativeSetAutoRefresh(long j, boolean z);

    private static native void nativeSetVersion(long j, long j2);

    private static native long nativeSize(long j);

    private static native void nativeStopWaitForChange(long j);

    private static native void nativeUpdateSchema(long j, long j2, long j3);

    private static native boolean nativeWaitForChange(long j);

    private static native void nativeWriteCopy(long j, String str, byte[] bArr);

    public static void a(File file) {
        if (h == null) {
            if (file == null) {
                throw new IllegalArgumentException("'tempDirectory' must not be null.");
            }
            String absolutePath = file.getAbsolutePath();
            if (!file.isDirectory() && !file.mkdirs() && !file.isDirectory()) {
                throw new IOException("failed to create temporary directory: " + absolutePath);
            }
            if (!absolutePath.endsWith("/")) {
                absolutePath = absolutePath + "/";
            }
            nativeInit(absolutePath);
            h = file;
        }
    }

    /* loaded from: classes3.dex */
    public enum Durability {
        FULL(0),
        MEM_ONLY(1);
        

        /* renamed from: a  reason: collision with root package name */
        final int f5777a;

        Durability(int i) {
            this.f5777a = i;
        }
    }

    /* loaded from: classes3.dex */
    public enum SchemaMode {
        SCHEMA_MODE_AUTOMATIC((byte) 0),
        SCHEMA_MODE_READONLY((byte) 1),
        SCHEMA_MODE_RESET_FILE((byte) 2),
        SCHEMA_MODE_ADDITIVE((byte) 3),
        SCHEMA_MODE_MANUAL((byte) 4);
        

        /* renamed from: a  reason: collision with root package name */
        final byte f5778a;

        SchemaMode(byte b2) {
            this.f5778a = b2;
        }

        public byte getNativeValue() {
            return this.f5778a;
        }
    }

    /* loaded from: classes3.dex */
    public static class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        public final long f5779a;
        public final long b;

        b(long j, long j2) {
            this.f5779a = j;
            this.b = j2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b bVar) {
            if (bVar == null) {
                throw new IllegalArgumentException("Version cannot be compared to a null value.");
            }
            if (this.f5779a > bVar.f5779a) {
                return 1;
            }
            if (this.f5779a < bVar.f5779a) {
                return -1;
            }
            return 0;
        }

        public String toString() {
            return "VersionID{version=" + this.f5779a + ", index=" + this.b + '}';
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f5779a == bVar.f5779a && this.b == bVar.b;
        }

        public int hashCode() {
            return (((super.hashCode() * 31) + ((int) (this.f5779a ^ (this.f5779a >>> 32)))) * 31) + ((int) (this.b ^ (this.b >>> 32)));
        }
    }

    private SharedRealm(long j, p pVar, a aVar) {
        io.realm.internal.android.a aVar2 = new io.realm.internal.android.a();
        AndroidRealmNotifier androidRealmNotifier = new AndroidRealmNotifier(this, aVar2);
        this.i = nativeGetSharedRealm(j, androidRealmNotifier);
        this.j = pVar;
        this.d = aVar2;
        this.f5776a = androidRealmNotifier;
        this.l = aVar;
        this.f = new d();
        this.f.a(this);
        this.k = aVar == null ? -1L : e();
        this.b = null;
        nativeSetAutoRefresh(this.i, aVar2.a());
    }

    public static SharedRealm a(p pVar) {
        return a(pVar, null, false);
    }

    public static SharedRealm a(p pVar, a aVar, boolean z) {
        boolean z2 = true;
        String[] c = h.a().c(pVar);
        String str = c[0];
        String str2 = c[1];
        String l = pVar.l();
        byte[] c2 = pVar.c();
        byte nativeValue = str != null ? SchemaMode.SCHEMA_MODE_ADDITIVE.getNativeValue() : SchemaMode.SCHEMA_MODE_MANUAL.getNativeValue();
        if (pVar.g() != Durability.MEM_ONLY) {
            z2 = false;
        }
        long nativeCreateConfig = nativeCreateConfig(l, c2, nativeValue, z2, false, pVar.d(), false, z, str, str2);
        try {
            return new SharedRealm(nativeCreateConfig, pVar, aVar);
        } finally {
            nativeCloseConfig(nativeCreateConfig);
        }
    }

    public void a() {
        m();
        nativeBeginTransaction(this.i);
        l();
    }

    public void b() {
        nativeCommitTransaction(this.i);
    }

    public void c() {
        nativeCancelTransaction(this.i);
    }

    public boolean d() {
        return nativeIsInTransaction(this.i);
    }

    public void a(long j) {
        nativeSetVersion(this.i, j);
    }

    public long e() {
        return nativeGetVersion(this.i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long f() {
        return nativeReadGroup(this.i);
    }

    public boolean a(String str) {
        return nativeHasTable(this.i, str);
    }

    public Table b(String str) {
        return new Table(this, nativeGetTable(this.i, str));
    }

    public String a(int i) {
        return nativeGetTableName(this.i, i);
    }

    public long g() {
        return nativeSize(this.i);
    }

    public String h() {
        return this.j.l();
    }

    public b i() {
        long[] nativeGetVersionID = nativeGetVersionID(this.i);
        return new b(nativeGetVersionID[0], nativeGetVersionID[1]);
    }

    public long j() {
        return nativeGetSnapshotVersion(this.i);
    }

    public boolean k() {
        return this.i == 0 || nativeIsClosed(this.i);
    }

    public void a(RealmSchema realmSchema, long j) {
        nativeUpdateSchema(this.i, realmSchema.a(), j);
    }

    public boolean a(RealmSchema realmSchema) {
        return nativeRequiresMigration(this.i, realmSchema.a());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f5776a != null) {
            this.f5776a.close();
        }
        synchronized (this.f) {
            if (this.i != 0) {
                nativeCloseSharedRealm(this.i);
                this.i = 0L;
            }
        }
    }

    @Override // io.realm.internal.g
    public long getNativePtr() {
        return this.i;
    }

    @Override // io.realm.internal.g
    public long getNativeFinalizerPtr() {
        return g;
    }

    public void l() {
        if (this.l != null) {
            long j = this.k;
            long e = e();
            if (e != j) {
                this.k = e;
                this.l.a(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Collection.c cVar) {
        this.e.add(new WeakReference<>(cVar));
    }

    void m() {
        for (WeakReference<Collection.c> weakReference : this.e) {
            Collection.c cVar = weakReference.get();
            if (cVar != null) {
                cVar.a();
            }
        }
        this.e.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        for (WeakReference<Collection.c> weakReference : this.e) {
            Collection.c cVar = weakReference.get();
            if (cVar != null) {
                cVar.b();
            }
        }
        this.e.clear();
    }
}
