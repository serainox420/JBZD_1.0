package com.inmobi.commons.db;
/* loaded from: classes2.dex */
public class ColumnData {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3782a = false;
    private boolean b = false;
    private boolean c = false;
    private ColumnType d;

    /* loaded from: classes2.dex */
    public enum ColumnType {
        INTEGER,
        VARCHAR,
        REAL,
        TEXT
    }

    public ColumnType getDataType() {
        return this.d;
    }

    public void setDataType(ColumnType columnType) {
        this.d = columnType;
    }

    public boolean isPrimaryKey() {
        return this.f3782a;
    }

    public void setPrimaryKey(boolean z) {
        this.f3782a = z;
    }

    public boolean isAutoIncrement() {
        return this.b;
    }

    public void setAutoIncrement(boolean z) {
        this.b = z;
    }

    public boolean isMandatory() {
        return this.c;
    }

    public void setMandatory(boolean z) {
        this.c = z;
    }
}
