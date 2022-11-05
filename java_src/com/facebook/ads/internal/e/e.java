package com.facebook.ads.internal.e;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes.dex */
public class e extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private final d f2137a;

    public e(Context context, d dVar) {
        super(context, "ads.db", (SQLiteDatabase.CursorFactory) null, 3);
        if (dVar == null) {
            throw new IllegalArgumentException("AdDatabaseHelper can not be null");
        }
        this.f2137a = dVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        for (g gVar : this.f2137a.c()) {
            gVar.a(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        g[] c;
        for (g gVar : this.f2137a.c()) {
            gVar.b(sQLiteDatabase);
            gVar.a(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        if (!sQLiteDatabase.isReadOnly()) {
            sQLiteDatabase.execSQL("PRAGMA foreign_keys = ON;");
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i == 2 && i2 == 3) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'crashes'");
        }
    }
}
