package com.inmobi.commons.db;

import java.util.LinkedHashMap;
/* loaded from: classes2.dex */
public class TableData {

    /* renamed from: a  reason: collision with root package name */
    private String f3785a;
    private LinkedHashMap<String, ColumnData> b;

    public String getmTableName() {
        return this.f3785a;
    }

    public void setmTableName(String str) {
        this.f3785a = str;
    }

    public LinkedHashMap<String, ColumnData> getmColumns() {
        return this.b;
    }

    public void setmColumns(LinkedHashMap<String, ColumnData> linkedHashMap) {
        this.b = linkedHashMap;
    }
}
