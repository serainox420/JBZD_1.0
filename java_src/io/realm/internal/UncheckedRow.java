package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;
/* loaded from: classes3.dex */
public class UncheckedRow implements g, n {
    private static final long d = nativeGetFinalizerPtr();

    /* renamed from: a  reason: collision with root package name */
    final d f5784a;
    private final Table b;
    private final long c;

    private static native long nativeGetFinalizerPtr();

    protected native boolean nativeGetBoolean(long j, long j2);

    protected native byte[] nativeGetByteArray(long j, long j2);

    protected native long nativeGetColumnCount(long j);

    protected native long nativeGetColumnIndex(long j, String str);

    protected native String nativeGetColumnName(long j, long j2);

    protected native int nativeGetColumnType(long j, long j2);

    protected native double nativeGetDouble(long j, long j2);

    protected native float nativeGetFloat(long j, long j2);

    protected native long nativeGetIndex(long j);

    protected native long nativeGetLink(long j, long j2);

    protected native long nativeGetLinkView(long j, long j2);

    protected native long nativeGetLong(long j, long j2);

    protected native String nativeGetString(long j, long j2);

    protected native long nativeGetTimestamp(long j, long j2);

    protected native boolean nativeHasColumn(long j, String str);

    protected native boolean nativeIsAttached(long j);

    protected native boolean nativeIsNull(long j, long j2);

    protected native boolean nativeIsNullLink(long j, long j2);

    protected native void nativeNullifyLink(long j, long j2);

    protected native void nativeSetBoolean(long j, long j2, boolean z);

    protected native void nativeSetByteArray(long j, long j2, byte[] bArr);

    protected native void nativeSetDouble(long j, long j2, double d2);

    protected native void nativeSetFloat(long j, long j2, float f);

    protected native void nativeSetLink(long j, long j2, long j3);

    protected native void nativeSetLong(long j, long j2, long j3);

    protected native void nativeSetNull(long j, long j2);

    protected native void nativeSetString(long j, long j2, String str);

    protected native void nativeSetTimestamp(long j, long j2, long j3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public UncheckedRow(d dVar, Table table, long j) {
        this.f5784a = dVar;
        this.b = table;
        this.c = j;
        dVar.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UncheckedRow(UncheckedRow uncheckedRow) {
        this.f5784a = uncheckedRow.f5784a;
        this.b = uncheckedRow.b;
        this.c = uncheckedRow.c;
    }

    @Override // io.realm.internal.g
    public long getNativePtr() {
        return this.c;
    }

    @Override // io.realm.internal.g
    public long getNativeFinalizerPtr() {
        return d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static UncheckedRow b(d dVar, Table table, long j) {
        return new UncheckedRow(dVar, table, table.nativeGetRowPtr(table.getNativePtr(), j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static UncheckedRow c(d dVar, Table table, long j) {
        return new UncheckedRow(dVar, table, j);
    }

    @Override // io.realm.internal.n
    public long getColumnCount() {
        return nativeGetColumnCount(this.c);
    }

    @Override // io.realm.internal.n
    public String getColumnName(long j) {
        return nativeGetColumnName(this.c, j);
    }

    @Override // io.realm.internal.n
    public long getColumnIndex(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Column name can not be null.");
        }
        return nativeGetColumnIndex(this.c, str);
    }

    @Override // io.realm.internal.n
    public RealmFieldType getColumnType(long j) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.c, j));
    }

    @Override // io.realm.internal.n
    public Table getTable() {
        return this.b;
    }

    @Override // io.realm.internal.n
    public long getIndex() {
        return nativeGetIndex(this.c);
    }

    @Override // io.realm.internal.n
    public long getLong(long j) {
        return nativeGetLong(this.c, j);
    }

    @Override // io.realm.internal.n
    public boolean getBoolean(long j) {
        return nativeGetBoolean(this.c, j);
    }

    @Override // io.realm.internal.n
    public float getFloat(long j) {
        return nativeGetFloat(this.c, j);
    }

    @Override // io.realm.internal.n
    public double getDouble(long j) {
        return nativeGetDouble(this.c, j);
    }

    @Override // io.realm.internal.n
    public Date getDate(long j) {
        return new Date(nativeGetTimestamp(this.c, j));
    }

    @Override // io.realm.internal.n
    public String getString(long j) {
        return nativeGetString(this.c, j);
    }

    @Override // io.realm.internal.n
    public byte[] getBinaryByteArray(long j) {
        return nativeGetByteArray(this.c, j);
    }

    @Override // io.realm.internal.n
    public long getLink(long j) {
        return nativeGetLink(this.c, j);
    }

    public boolean isNullLink(long j) {
        return nativeIsNullLink(this.c, j);
    }

    @Override // io.realm.internal.n
    public LinkView getLinkList(long j) {
        return new LinkView(this.f5784a, this.b, j, nativeGetLinkView(this.c, j));
    }

    @Override // io.realm.internal.n
    public void setLong(long j, long j2) {
        this.b.f();
        getTable().a(j, getIndex(), j2);
        nativeSetLong(this.c, j, j2);
    }

    @Override // io.realm.internal.n
    public void setBoolean(long j, boolean z) {
        this.b.f();
        nativeSetBoolean(this.c, j, z);
    }

    @Override // io.realm.internal.n
    public void setFloat(long j, float f) {
        this.b.f();
        nativeSetFloat(this.c, j, f);
    }

    @Override // io.realm.internal.n
    public void setDate(long j, Date date) {
        this.b.f();
        if (date == null) {
            throw new IllegalArgumentException("Null Date is not allowed.");
        }
        nativeSetTimestamp(this.c, j, date.getTime());
    }

    @Override // io.realm.internal.n
    public void setString(long j, String str) {
        this.b.f();
        if (str == null) {
            getTable().a(j, getIndex());
            nativeSetNull(this.c, j);
            return;
        }
        getTable().a(j, getIndex(), str);
        nativeSetString(this.c, j, str);
    }

    public void a(long j, byte[] bArr) {
        this.b.f();
        nativeSetByteArray(this.c, j, bArr);
    }

    @Override // io.realm.internal.n
    public void setLink(long j, long j2) {
        this.b.f();
        nativeSetLink(this.c, j, j2);
    }

    @Override // io.realm.internal.n
    public void nullifyLink(long j) {
        this.b.f();
        nativeNullifyLink(this.c, j);
    }

    public boolean isNull(long j) {
        return nativeIsNull(this.c, j);
    }

    public void setNull(long j) {
        this.b.f();
        getTable().a(j, getIndex());
        nativeSetNull(this.c, j);
    }

    @Override // io.realm.internal.n
    public boolean isAttached() {
        return this.c != 0 && nativeIsAttached(this.c);
    }
}
