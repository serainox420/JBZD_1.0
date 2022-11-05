package io.realm.internal;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.inmobi.monetization.internal.configs.PkInitilaizer;
import io.realm.RealmFieldType;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmPrimaryKeyConstraintException;
import java.util.Date;
/* loaded from: classes3.dex */
public class Table implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final String f5781a = Util.a();
    private static final long d = nativeGetFinalizerPtr();
    final d b;
    private long c;
    private final SharedRealm e;
    private long f;

    private native long nativeAddColumn(long j, int i, String str, boolean z);

    private native long nativeAddColumnLink(long j, int i, String str, long j2);

    public static native long nativeAddEmptyRow(long j, long j2);

    private native void nativeAddSearchIndex(long j, long j2);

    private native double nativeAverageDouble(long j, long j2);

    private native double nativeAverageFloat(long j, long j2);

    private native double nativeAverageInt(long j, long j2);

    private native void nativeClear(long j);

    private native void nativeConvertColumnToNotNullable(long j, long j2);

    private native void nativeConvertColumnToNullable(long j, long j2);

    private native long nativeCountDouble(long j, long j2, double d2);

    private native long nativeCountFloat(long j, long j2, float f);

    private native long nativeCountLong(long j, long j2, long j3);

    private native long nativeCountString(long j, long j2, String str);

    private native long nativeFindFirstBool(long j, long j2, boolean z);

    private native long nativeFindFirstDouble(long j, long j2, double d2);

    private native long nativeFindFirstFloat(long j, long j2, float f);

    public static native long nativeFindFirstInt(long j, long j2, long j3);

    public static native long nativeFindFirstNull(long j, long j2);

    public static native long nativeFindFirstString(long j, long j2, String str);

    private native long nativeFindFirstTimestamp(long j, long j2, long j3);

    private native boolean nativeGetBoolean(long j, long j2, long j3);

    private native byte[] nativeGetByteArray(long j, long j2, long j3);

    private native long nativeGetColumnCount(long j);

    private native long nativeGetColumnIndex(long j, String str);

    private native String nativeGetColumnName(long j, long j2);

    private native int nativeGetColumnType(long j, long j2);

    private native double nativeGetDouble(long j, long j2, long j3);

    private static native long nativeGetFinalizerPtr();

    private native float nativeGetFloat(long j, long j2, long j3);

    private native long nativeGetLink(long j, long j2, long j3);

    private native long nativeGetLinkTarget(long j, long j2);

    public static native long nativeGetLinkView(long j, long j2, long j3);

    private native long nativeGetLong(long j, long j2, long j3);

    private native String nativeGetName(long j);

    private native long nativeGetSortedViewMulti(long j, long[] jArr, boolean[] zArr);

    private native String nativeGetString(long j, long j2, long j3);

    private native long nativeGetTimestamp(long j, long j2, long j3);

    private native boolean nativeHasSameSchema(long j, long j2);

    private native boolean nativeHasSearchIndex(long j, long j2);

    private native boolean nativeIsColumnNullable(long j, long j2);

    private native boolean nativeIsNull(long j, long j2, long j3);

    private native boolean nativeIsNullLink(long j, long j2, long j3);

    private native boolean nativeIsValid(long j);

    private native long nativeLowerBoundInt(long j, long j2, long j3);

    private native double nativeMaximumDouble(long j, long j2);

    private native float nativeMaximumFloat(long j, long j2);

    private native long nativeMaximumInt(long j, long j2);

    private native long nativeMaximumTimestamp(long j, long j2);

    private static native boolean nativeMigratePrimaryKeyTableIfNeeded(long j, long j2);

    private native double nativeMinimumDouble(long j, long j2);

    private native float nativeMinimumFloat(long j, long j2);

    private native long nativeMinimumInt(long j, long j2);

    private native long nativeMinimumTimestamp(long j, long j2);

    private native void nativeMoveLastOver(long j, long j2);

    public static native void nativeNullifyLink(long j, long j2, long j3);

    private native void nativePivot(long j, long j2, long j3, int i, long j4);

    private static native boolean nativePrimaryKeyTableNeedsMigration(long j);

    private native void nativeRemove(long j, long j2);

    private native void nativeRemoveColumn(long j, long j2);

    private native void nativeRemoveLast(long j);

    private native void nativeRemoveSearchIndex(long j, long j2);

    private native void nativeRenameColumn(long j, long j2, String str);

    public static native void nativeSetBoolean(long j, long j2, long j3, boolean z, boolean z2);

    public static native void nativeSetByteArray(long j, long j2, long j3, byte[] bArr, boolean z);

    public static native void nativeSetDouble(long j, long j2, long j3, double d2, boolean z);

    public static native void nativeSetFloat(long j, long j2, long j3, float f, boolean z);

    public static native void nativeSetLink(long j, long j2, long j3, long j4, boolean z);

    public static native void nativeSetLong(long j, long j2, long j3, long j4, boolean z);

    public static native void nativeSetLongUnique(long j, long j2, long j3, long j4);

    public static native void nativeSetNull(long j, long j2, long j3, boolean z);

    public static native void nativeSetNullUnique(long j, long j2, long j3);

    private native long nativeSetPrimaryKey(long j, long j2, String str);

    public static native void nativeSetString(long j, long j2, long j3, String str, boolean z);

    public static native void nativeSetStringUnique(long j, long j2, long j3, String str);

    public static native void nativeSetTimestamp(long j, long j2, long j3, long j4, boolean z);

    private native long nativeSize(long j);

    private native double nativeSumDouble(long j, long j2);

    private native double nativeSumFloat(long j, long j2);

    private native long nativeSumInt(long j, long j2);

    private native String nativeToJson(long j);

    private native long nativeUpperBoundInt(long j, long j2, long j3);

    private native long nativeVersion(long j);

    private native long nativeWhere(long j);

    protected native long createNative();

    /* JADX INFO: Access modifiers changed from: package-private */
    public native long nativeGetRowPtr(long j, long j2);

    public Table() {
        this.f = -1L;
        this.b = new d();
        this.c = createNative();
        if (this.c == 0) {
            throw new java.lang.OutOfMemoryError("Out of native memory.");
        }
        this.e = null;
        this.b.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Table(Table table, long j) {
        this(table.e, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Table(SharedRealm sharedRealm, long j) {
        this.f = -1L;
        this.b = sharedRealm.f;
        this.e = sharedRealm;
        this.c = j;
        this.b.a(this);
    }

    @Override // io.realm.internal.g
    public long getNativePtr() {
        return this.c;
    }

    @Override // io.realm.internal.g
    public long getNativeFinalizerPtr() {
        return d;
    }

    private void e(String str) {
        if (str.length() > 63) {
            throw new IllegalArgumentException("Column names are currently limited to max 63 characters.");
        }
    }

    public long a(RealmFieldType realmFieldType, String str, boolean z) {
        e(str);
        return nativeAddColumn(this.c, realmFieldType.getNativeValue(), str, z);
    }

    public long a(RealmFieldType realmFieldType, String str) {
        return a(realmFieldType, str, false);
    }

    public long a(RealmFieldType realmFieldType, String str, Table table) {
        e(str);
        return nativeAddColumnLink(this.c, realmFieldType.getNativeValue(), str, table.c);
    }

    public boolean a(long j) {
        return nativeIsColumnNullable(this.c, j);
    }

    public long a() {
        return nativeSize(this.c);
    }

    public long b() {
        return nativeGetColumnCount(this.c);
    }

    public String b(long j) {
        return nativeGetColumnName(this.c, j);
    }

    public long a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Column name can not be null.");
        }
        return nativeGetColumnIndex(this.c, str);
    }

    public RealmFieldType c(long j) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.c, j));
    }

    public void d(long j) {
        f();
        nativeMoveLastOver(this.c, j);
    }

    public long a(Object obj) {
        return a(obj, true);
    }

    public long a(Object obj, boolean z) {
        if (z) {
            f();
            k();
        }
        long c = c();
        RealmFieldType c2 = c(c);
        if (obj == null) {
            switch (c2) {
                case STRING:
                case INTEGER:
                    if (z && k(c) != -1) {
                        b((Object) "null");
                    }
                    long nativeAddEmptyRow = nativeAddEmptyRow(this.c, 1L);
                    if (c2 == RealmFieldType.STRING) {
                        nativeSetStringUnique(this.c, c, nativeAddEmptyRow, null);
                        return nativeAddEmptyRow;
                    }
                    nativeSetNullUnique(this.c, c, nativeAddEmptyRow);
                    return nativeAddEmptyRow;
                default:
                    throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + c2);
            }
        }
        switch (c2) {
            case STRING:
                if (!(obj instanceof String)) {
                    throw new IllegalArgumentException("Primary key value is not a String: " + obj);
                }
                if (z && a(c, (String) obj) != -1) {
                    b(obj);
                }
                long nativeAddEmptyRow2 = nativeAddEmptyRow(this.c, 1L);
                nativeSetStringUnique(this.c, c, nativeAddEmptyRow2, (String) obj);
                return nativeAddEmptyRow2;
            case INTEGER:
                try {
                    long parseLong = Long.parseLong(obj.toString());
                    if (z && b(c, parseLong) != -1) {
                        b(Long.valueOf(parseLong));
                    }
                    long nativeAddEmptyRow3 = nativeAddEmptyRow(this.c, 1L);
                    nativeSetLongUnique(this.c, c, nativeAddEmptyRow3, parseLong);
                    return nativeAddEmptyRow3;
                } catch (RuntimeException e) {
                    throw new IllegalArgumentException("Primary key value is not a long: " + obj);
                }
            default:
                throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + c2);
        }
    }

    private boolean l(long j) {
        return j == c();
    }

    public long c() {
        if (this.f >= 0 || this.f == -2) {
            return this.f;
        }
        Table j = j();
        if (j == null) {
            return -2L;
        }
        long a2 = j.a(0L, d(h()));
        if (a2 != -1) {
            this.f = a(j.f(a2).getString(1L));
        } else {
            this.f = -2L;
        }
        return this.f;
    }

    private boolean m(long j) {
        return j >= 0 && j == c();
    }

    public boolean d() {
        return c() >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j, long j2, String str) {
        if (m(j)) {
            long a2 = a(j, str);
            if (a2 != j2 && a2 != -1) {
                b((Object) str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j, long j2, long j3) {
        if (l(j)) {
            long b = b(j, j3);
            if (b != j2 && b != -1) {
                b(Long.valueOf(j3));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j, long j2) {
        if (l(j)) {
            switch (c(j)) {
                case STRING:
                case INTEGER:
                    long k = k(j);
                    if (k != j2 && k != -1) {
                        b((Object) "null");
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public static void b(Object obj) {
        throw new RealmPrimaryKeyConstraintException("Value already exists: " + obj);
    }

    public Table e(long j) {
        return new Table(this.e, nativeGetLinkTarget(this.c, j));
    }

    public UncheckedRow f(long j) {
        return UncheckedRow.b(this.b, this, j);
    }

    public UncheckedRow g(long j) {
        return UncheckedRow.c(this.b, this, j);
    }

    public CheckedRow h(long j) {
        return CheckedRow.a(this.b, this, j);
    }

    public void a(long j, long j2, long j3, boolean z) {
        f();
        a(j, j2, j3);
        nativeSetLong(this.c, j, j2, j3, z);
    }

    public void a(long j, long j2, boolean z, boolean z2) {
        f();
        nativeSetBoolean(this.c, j, j2, z, z2);
    }

    public void a(long j, long j2, float f, boolean z) {
        f();
        nativeSetFloat(this.c, j, j2, f, z);
    }

    public void a(long j, long j2, Date date, boolean z) {
        if (date == null) {
            throw new IllegalArgumentException("Null Date is not allowed.");
        }
        f();
        nativeSetTimestamp(this.c, j, j2, date.getTime(), z);
    }

    public void a(long j, long j2, String str, boolean z) {
        f();
        if (str == null) {
            a(j, j2);
            nativeSetNull(this.c, j, j2, z);
            return;
        }
        a(j, j2, str);
        nativeSetString(this.c, j, j2, str, z);
    }

    public void b(long j, long j2, long j3, boolean z) {
        f();
        nativeSetLink(this.c, j, j2, j3, z);
    }

    public void a(long j, long j2, boolean z) {
        f();
        a(j, j2);
        nativeSetNull(this.c, j, j2, z);
    }

    public void i(long j) {
        f();
        nativeAddSearchIndex(this.c, j);
    }

    public void b(String str) {
        Table j = j();
        if (j == null) {
            throw new RealmException("Primary keys are only supported if Table is part of a Group");
        }
        this.f = nativeSetPrimaryKey(j.c, this.c, str);
    }

    private Table j() {
        if (this.e == null) {
            return null;
        }
        Table b = this.e.b(PkInitilaizer.PRODUCT_PK);
        if (b.b() == 0) {
            f();
            b.i(b.a(RealmFieldType.STRING, "pk_table"));
            b.a(RealmFieldType.STRING, "pk_property");
            return b;
        }
        return b;
    }

    public static boolean a(SharedRealm sharedRealm) {
        if (sharedRealm == null || !sharedRealm.d()) {
            l();
        }
        if (!sharedRealm.a(PkInitilaizer.PRODUCT_PK)) {
            return false;
        }
        return nativeMigratePrimaryKeyTableIfNeeded(sharedRealm.f(), sharedRealm.b(PkInitilaizer.PRODUCT_PK).c);
    }

    public static boolean b(SharedRealm sharedRealm) {
        if (!sharedRealm.a(PkInitilaizer.PRODUCT_PK)) {
            return false;
        }
        return nativePrimaryKeyTableNeedsMigration(sharedRealm.b(PkInitilaizer.PRODUCT_PK).c);
    }

    public boolean j(long j) {
        return nativeHasSearchIndex(this.c, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return this.e != null && !this.e.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (e()) {
            l();
        }
    }

    private void k() {
        if (!d()) {
            throw new IllegalStateException(h() + " has no primary key defined");
        }
    }

    public TableQuery g() {
        return new TableQuery(this.b, this, nativeWhere(this.c));
    }

    public long b(long j, long j2) {
        return nativeFindFirstInt(this.c, j, j2);
    }

    public long a(long j, String str) {
        if (str == null) {
            throw new IllegalArgumentException("null is not supported");
        }
        return nativeFindFirstString(this.c, j, str);
    }

    public long k(long j) {
        return nativeFindFirstNull(this.c, j);
    }

    public String h() {
        return nativeGetName(this.c);
    }

    public String toString() {
        long b = b();
        String h = h();
        StringBuilder sb = new StringBuilder("The Table ");
        if (h != null && !h.isEmpty()) {
            sb.append(h());
            sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
        }
        if (d()) {
            sb.append("has '").append(b(c())).append("' field as a PrimaryKey, and ");
        }
        sb.append("contains ");
        sb.append(b);
        sb.append(" columns: ");
        for (int i = 0; i < b; i++) {
            if (i != 0) {
                sb.append(", ");
            }
            sb.append(b(i));
        }
        sb.append(".");
        sb.append(" And ");
        sb.append(a());
        sb.append(" rows.");
        return sb.toString();
    }

    private static void l() {
        throw new IllegalStateException("Changing Realm data can only be done from inside a transaction.");
    }

    public boolean a(Table table) {
        if (table == null) {
            throw new IllegalArgumentException("The argument cannot be null");
        }
        return nativeHasSameSchema(this.c, table.c);
    }

    public static boolean c(String str) {
        return str.startsWith(f5781a);
    }

    public long i() {
        return nativeVersion(this.c);
    }

    public static String d(String str) {
        return !str.startsWith(f5781a) ? str : str.substring(f5781a.length());
    }
}
