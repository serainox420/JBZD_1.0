package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;
/* compiled from: Row.java */
/* loaded from: classes3.dex */
public interface n {
    byte[] getBinaryByteArray(long j);

    boolean getBoolean(long j);

    long getColumnCount();

    long getColumnIndex(String str);

    String getColumnName(long j);

    RealmFieldType getColumnType(long j);

    Date getDate(long j);

    double getDouble(long j);

    float getFloat(long j);

    long getIndex();

    long getLink(long j);

    LinkView getLinkList(long j);

    long getLong(long j);

    String getString(long j);

    Table getTable();

    boolean isAttached();

    boolean isNull(long j);

    boolean isNullLink(long j);

    void nullifyLink(long j);

    void setBoolean(long j, boolean z);

    void setDate(long j, Date date);

    void setFloat(long j, float f);

    void setLink(long j, long j2);

    void setLong(long j, long j2);

    void setNull(long j);

    void setString(long j, String str);
}
