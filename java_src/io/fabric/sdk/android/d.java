package io.fabric.sdk.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* compiled from: FabricContext.java */
/* loaded from: classes3.dex */
class d extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    private final String f5646a;
    private final String b;

    public d(Context context, String str, String str2) {
        super(context);
        this.b = str;
        this.f5646a = str2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDatabasePath(String str) {
        File file = new File(super.getDatabasePath(str).getParentFile(), this.f5646a);
        file.mkdirs();
        return new File(file, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str), cursorFactory);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(11)
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str).getPath(), cursorFactory, databaseErrorHandler);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        return new File(super.getFilesDir(), this.f5646a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(8)
    public File getExternalFilesDir(String str) {
        return new File(super.getExternalFilesDir(str), this.f5646a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCacheDir() {
        return new File(super.getCacheDir(), this.f5646a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(8)
    public File getExternalCacheDir() {
        return new File(super.getExternalCacheDir(), this.f5646a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        return super.getSharedPreferences(this.b + ":" + str, i);
    }
}
