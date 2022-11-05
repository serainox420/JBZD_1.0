package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.o;
import java.lang.ref.WeakReference;
import java.util.Date;
/* compiled from: PendingRow.java */
/* loaded from: classes3.dex */
public class j implements n {

    /* renamed from: a  reason: collision with root package name */
    private Collection f5799a;
    private o<j> b;
    private WeakReference<Object> c;
    private boolean d;

    @Override // io.realm.internal.n
    public long getColumnCount() {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public String getColumnName(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public long getColumnIndex(String str) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public RealmFieldType getColumnType(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public Table getTable() {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public long getIndex() {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public long getLong(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public boolean getBoolean(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public float getFloat(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public double getDouble(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public Date getDate(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public String getString(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public byte[] getBinaryByteArray(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public long getLink(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public boolean isNullLink(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public LinkView getLinkList(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public void setLong(long j, long j2) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public void setBoolean(long j, boolean z) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public void setFloat(long j, float f) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public void setDate(long j, Date date) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public void setString(long j, String str) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public void setLink(long j, long j2) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public void nullifyLink(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public boolean isNull(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public void setNull(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.n
    public boolean isAttached() {
        return false;
    }

    private void b() {
        this.f5799a.removeListener((Collection) this, (o<Collection>) this.b);
        this.f5799a = null;
        this.b = null;
    }

    public n a() {
        if (this.f5799a == null) {
            throw new IllegalStateException("The query has been executed. This 'PendingRow' is not valid anymore.");
        }
        if (this.c == null) {
            throw new IllegalStateException("The 'frontEnd' has not been set.");
        }
        UncheckedRow firstUncheckedRow = this.f5799a.firstUncheckedRow();
        b();
        if (firstUncheckedRow == null) {
            return InvalidRow.INSTANCE;
        }
        return this.d ? CheckedRow.a(firstUncheckedRow) : firstUncheckedRow;
    }
}
