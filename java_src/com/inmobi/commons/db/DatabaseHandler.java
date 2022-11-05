package com.inmobi.commons.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
/* loaded from: classes2.dex */
public abstract class DatabaseHandler extends SQLiteOpenHelper {
    public static final String DATABASE_NAME = "im.db";
    private static String c = "CREATE TABLE IF NOT EXISTS ";
    private static String d = "DROP TABLE IF EXISTS ";
    private static String e = " PRIMARY KEY ";
    private static String f = " AUTOINCREMENT ";
    private static String g = " NOT NULL ";
    private static String h = "SELECT * FROM ";
    private static String i = " WHERE ";
    private static String j = " ORDER BY ";
    private static String k = "; ";
    private static String l = " Limit ?";

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<TableData> f3784a;
    private SQLiteDatabase b;

    /* JADX INFO: Access modifiers changed from: protected */
    public DatabaseHandler(Context context, ArrayList<TableData> arrayList) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        this.f3784a = arrayList;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            a(sQLiteDatabase);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception Creating table", e2);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        try {
            Iterator<TableData> it = this.f3784a.iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL(d + it.next().getmTableName());
            }
            onCreate(sQLiteDatabase);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception Deleting table", e2);
        }
    }

    public void open() {
        try {
            this.b = getWritableDatabase();
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to open  db", e2);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        try {
            this.b.close();
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to close  db", e2);
        }
    }

    public synchronized long insert(String str, ContentValues contentValues) {
        long j2;
        try {
            j2 = this.b.insert(str, null, contentValues);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert to db", e2);
            j2 = -1;
        }
        return j2;
    }

    public synchronized int delete(String str, String str2, String[] strArr) {
        int i2;
        try {
            i2 = this.b.delete(str, str2, strArr);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert to db", e2);
            i2 = -1;
        }
        return i2;
    }

    public synchronized long update(String str, ContentValues contentValues, String str2, String[] strArr) {
        long j2;
        try {
            j2 = this.b.update(str, contentValues, str2, strArr);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert to db", e2);
            j2 = -1;
        }
        return j2;
    }

    public synchronized Cursor getRow(String str, String str2, String[] strArr) {
        Cursor rawQuery;
        Cursor cursor = null;
        synchronized (this) {
            if (str2 != null) {
                try {
                } catch (Exception e2) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to all rows", e2);
                }
                if (!"".equals(str2.trim())) {
                    rawQuery = this.b.rawQuery(h + str + i + str2 + k, strArr);
                    rawQuery.moveToFirst();
                    cursor = rawQuery;
                }
            }
            rawQuery = this.b.rawQuery(h + str + k, null);
            rawQuery.moveToFirst();
            cursor = rawQuery;
        }
        return cursor;
    }

    public synchronized Cursor getAll(String str, String str2) {
        Cursor rawQuery;
        Cursor cursor = null;
        synchronized (this) {
            if (str2 != null) {
                try {
                } catch (Exception e2) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to all rows", e2);
                }
                if (!"".equals(str2.trim())) {
                    rawQuery = this.b.rawQuery(h + str + j + str2 + k, null);
                    rawQuery.moveToFirst();
                    cursor = rawQuery;
                }
            }
            rawQuery = this.b.rawQuery(h + str + k, null);
            rawQuery.moveToFirst();
            cursor = rawQuery;
        }
        return cursor;
    }

    public synchronized Cursor getNRows(String str, String str2, int i2) {
        Cursor rawQuery;
        Cursor cursor = null;
        synchronized (this) {
            if (str2 != null) {
                try {
                } catch (Exception e2) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to all rows", e2);
                }
                if (!"".equals(str2.trim())) {
                    rawQuery = this.b.rawQuery(h + str + j + str2 + l + k, new String[]{String.valueOf(i2)});
                    rawQuery.moveToFirst();
                    cursor = rawQuery;
                }
            }
            rawQuery = this.b.rawQuery(h + str + k, null);
            rawQuery.moveToFirst();
            cursor = rawQuery;
        }
        return cursor;
    }

    public synchronized int getNoOfRows(String str, String str2, String[] strArr) {
        Cursor rawQuery;
        int i2;
        if (str2 != null) {
            try {
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to get number of rows", e2);
                i2 = 0;
            }
            if (!"".equals(str2.trim())) {
                rawQuery = this.b.rawQuery(h + str + i + str2, strArr);
                i2 = rawQuery.getCount();
                rawQuery.close();
            }
        }
        rawQuery = this.b.rawQuery(h + str + k, null);
        i2 = rawQuery.getCount();
        rawQuery.close();
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized int getTableSize(String str) {
        int i2;
        try {
            Cursor rawQuery = this.b.rawQuery(h + str + k, null);
            i2 = rawQuery.getCount();
            rawQuery.close();
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to table size ", e2);
            i2 = 0;
        }
        return i2;
    }

    public synchronized Cursor executeQuery(String str, String[] strArr) {
        Cursor cursor;
        try {
            cursor = this.b.rawQuery(str, strArr);
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to execute db query", e2);
            cursor = null;
        }
        return cursor;
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        String sb;
        try {
            if (this.f3784a != null && !this.f3784a.isEmpty()) {
                Iterator<TableData> it = this.f3784a.iterator();
                while (it.hasNext()) {
                    TableData next = it.next();
                    String str = next.getmTableName();
                    LinkedHashMap<String, ColumnData> linkedHashMap = next.getmColumns();
                    StringBuilder sb2 = new StringBuilder(c + str + " (");
                    for (String str2 : linkedHashMap.keySet()) {
                        ColumnData columnData = linkedHashMap.get(str2);
                        sb2.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str2 + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + columnData.getDataType().toString());
                        if (columnData.isPrimaryKey()) {
                            sb2.append(e);
                        }
                        if (columnData.isAutoIncrement()) {
                            sb2.append(f);
                        }
                        if (columnData.isMandatory()) {
                            sb2.append(g);
                        }
                        sb2.append(",");
                    }
                    if (',' == sb2.charAt(sb2.length() - 1)) {
                        sb = sb2.substring(0, sb2.length() - 2);
                    } else {
                        sb = sb2.toString();
                    }
                    String concat = sb.concat(" );");
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Table: " + concat);
                    sQLiteDatabase.execSQL(concat);
                }
            }
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception creating table", e2);
        }
    }
}
