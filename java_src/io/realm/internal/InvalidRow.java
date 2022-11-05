package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;
/* loaded from: classes3.dex */
public enum InvalidRow implements n {
    INSTANCE;

    @Override // io.realm.internal.n
    public long getColumnCount() {
        throw a();
    }

    @Override // io.realm.internal.n
    public String getColumnName(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public long getColumnIndex(String str) {
        throw a();
    }

    @Override // io.realm.internal.n
    public RealmFieldType getColumnType(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public Table getTable() {
        throw a();
    }

    @Override // io.realm.internal.n
    public long getIndex() {
        throw a();
    }

    @Override // io.realm.internal.n
    public long getLong(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public boolean getBoolean(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public float getFloat(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public double getDouble(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public Date getDate(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public String getString(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public byte[] getBinaryByteArray(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public long getLink(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public boolean isNullLink(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public LinkView getLinkList(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public void setLong(long j, long j2) {
        throw a();
    }

    @Override // io.realm.internal.n
    public void setBoolean(long j, boolean z) {
        throw a();
    }

    @Override // io.realm.internal.n
    public void setFloat(long j, float f) {
        throw a();
    }

    public void setDouble(long j, double d) {
        throw a();
    }

    @Override // io.realm.internal.n
    public void setDate(long j, Date date) {
        throw a();
    }

    @Override // io.realm.internal.n
    public void setString(long j, String str) {
        throw a();
    }

    public void setBinaryByteArray(long j, byte[] bArr) {
        throw a();
    }

    @Override // io.realm.internal.n
    public void setLink(long j, long j2) {
        throw a();
    }

    @Override // io.realm.internal.n
    public void nullifyLink(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public boolean isNull(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public void setNull(long j) {
        throw a();
    }

    @Override // io.realm.internal.n
    public boolean isAttached() {
        return false;
    }

    public boolean hasColumn(String str) {
        throw a();
    }

    private RuntimeException a() {
        return new IllegalStateException("Object is no longer managed by Realm. Has it been deleted?");
    }
}
