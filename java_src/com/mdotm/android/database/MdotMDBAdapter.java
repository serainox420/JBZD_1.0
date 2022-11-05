package com.mdotm.android.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mdotm.android.utils.MdotMLogger;
/* loaded from: classes2.dex */
class MdotMDBAdapter extends SQLiteOpenHelper {
    public MdotMDBAdapter(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public synchronized void onCreate(SQLiteDatabase sQLiteDatabase) {
        MdotMLogger.d(this, "oncreate of DbAdapter is called");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public synchronized void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
