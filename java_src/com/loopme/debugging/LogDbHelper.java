package com.loopme.debugging;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class LogDbHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "LoopMeLogs.db";
    public static final int DATABASE_VERSION = 1;
    static final String ID = "id";
    static final String LOG = "log";
    private static final int MAX_ROW_COUNT = 1000;
    private static final String TABLE_CREATE = "create table loopme_logs (id integer primary key autoincrement,log text not null);";
    private static final String TABLE_NAME = "loopme_logs";

    public LogDbHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(TABLE_CREATE);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS loopme_logs");
        onCreate(sQLiteDatabase);
    }

    public void putLog(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (getCount(writableDatabase) < 1000) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(LOG, str);
            writableDatabase.insert(TABLE_NAME, null, contentValues);
            return;
        }
        clear();
    }

    public int getCount(SQLiteDatabase sQLiteDatabase) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT  * FROM loopme_logs", null);
        int count = rawQuery.getCount();
        rawQuery.close();
        return count;
    }

    public List<String> getLogs() {
        ArrayList arrayList = new ArrayList();
        Cursor rawQuery = getWritableDatabase().rawQuery("SELECT  * FROM loopme_logs", null);
        if (rawQuery.moveToFirst()) {
            do {
                arrayList.add(rawQuery.getString(1));
            } while (rawQuery.moveToNext());
            rawQuery.close();
            return arrayList;
        }
        rawQuery.close();
        return arrayList;
    }

    public void clear() {
        getWritableDatabase().delete(TABLE_NAME, null, null);
    }
}
