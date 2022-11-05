package com.mdotm.android.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.mdotm.android.http.MdotMNetworkManager;
import com.mdotm.android.utils.MdotMLogger;
import java.io.File;
/* loaded from: classes2.dex */
public class MdotMCacheHandler extends MdotMDBAdapter {
    public static final int CACHE_IS_ON_INTERNAL = 2;
    public static final int CACHE_IS_ON_SD_CARD = 1;
    protected static final String DATABASE_NAME = "AdDatabase.db";
    protected static final int DATABASE_VERSION = 1;
    public static final String TABLE_NAME_AD_CACHE = "AdCache";
    public static final String TABLE_NAME_AD_NATIVE = "Native";
    public static final String TABLE_NAME_AD_RESOURCES = "AdHtmlResources";
    private static MdotMCacheHandler instance;
    final String FILE_NAME;
    final String HTML_FILE_NAME;
    final String LAST_USED;
    final String LOCATION;
    final String NATIVE_FILE_NAME;
    final String NATIVE_LAST_USED;
    final String RESOURCE_NAME;
    private final String TABLE_CREATE_AD_CACHE;
    private final String TABLE_CREATE_LOCATION_TABLE;
    private final String TABLE_CREATE_NATIVE_TABLE;
    private final String TABLE_CREATE_RESOURCE_TABLE;
    final String TABLE_NAME_CACHE_LOCATION;

    @Override // com.mdotm.android.database.MdotMDBAdapter, android.database.sqlite.SQLiteOpenHelper
    public /* bridge */ /* synthetic */ void onCreate(SQLiteDatabase sQLiteDatabase) {
        super.onCreate(sQLiteDatabase);
    }

    @Override // com.mdotm.android.database.MdotMDBAdapter, android.database.sqlite.SQLiteOpenHelper
    public /* bridge */ /* synthetic */ void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        super.onUpgrade(sQLiteDatabase, i, i2);
    }

    public static synchronized MdotMCacheHandler getInstance(Context context) {
        MdotMCacheHandler mdotMCacheHandler;
        synchronized (MdotMCacheHandler.class) {
            if (instance == null) {
                instance = new MdotMCacheHandler(context, DATABASE_NAME, 1);
            }
            mdotMCacheHandler = instance;
        }
        return mdotMCacheHandler;
    }

    public MdotMCacheHandler(Context context, String str, int i) {
        super(context, str, i);
        this.FILE_NAME = "FileName";
        this.LAST_USED = "lastUsed";
        this.HTML_FILE_NAME = "HtmlName";
        this.RESOURCE_NAME = "ResourceName";
        this.NATIVE_FILE_NAME = "NativeName";
        this.NATIVE_LAST_USED = "LastUsed";
        this.TABLE_NAME_CACHE_LOCATION = "CacheLocation";
        this.LOCATION = "Location";
        this.TABLE_CREATE_AD_CACHE = "CREATE TABLE IF NOT EXISTS AdCache (  FileName TEXT NOT NULL,lastUsed INTEGER );";
        this.TABLE_CREATE_RESOURCE_TABLE = "CREATE TABLE IF NOT EXISTS AdHtmlResources (  HtmlName TEXT NOT NULL,ResourceName TEXT );";
        this.TABLE_CREATE_LOCATION_TABLE = "CREATE TABLE IF NOT EXISTS CacheLocation ( Location INTEGER NOT NULL);";
        this.TABLE_CREATE_NATIVE_TABLE = "CREATE TABLE IF NOT EXISTS Native (  NativeName TEXT NOT NULL,LastUsed INTEGER );";
        createTable();
    }

    public synchronized void createTable() {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        SQLiteDatabase writableDatabase;
        SQLiteDatabase sQLiteDatabase2 = null;
        MdotMLogger.d(this, "creating table");
        try {
            try {
                MdotMLogger.d(this, "Create table is called");
                writableDatabase = getWritableDatabase();
            } catch (Throwable th2) {
                sQLiteDatabase = null;
                th = th2;
            }
        } catch (Exception e) {
            sQLiteDatabase2.close();
            MdotMLogger.d(this, "DB CLOSED");
        }
        try {
            writableDatabase.execSQL("CREATE TABLE IF NOT EXISTS AdCache (  FileName TEXT NOT NULL,lastUsed INTEGER );");
            writableDatabase.execSQL("CREATE TABLE IF NOT EXISTS AdHtmlResources (  HtmlName TEXT NOT NULL,ResourceName TEXT );");
            writableDatabase.execSQL("CREATE TABLE IF NOT EXISTS CacheLocation ( Location INTEGER NOT NULL);");
            writableDatabase.execSQL("CREATE TABLE IF NOT EXISTS Native (  NativeName TEXT NOT NULL,LastUsed INTEGER );");
            MdotMLogger.d(this, "database path is " + writableDatabase.getPath());
            writableDatabase.close();
            MdotMLogger.d(this, "DB CLOSED");
        } catch (Throwable th3) {
            sQLiteDatabase = writableDatabase;
            th = th3;
            sQLiteDatabase.close();
            MdotMLogger.d(this, "DB CLOSED");
            throw th;
        }
    }

    public void insertCache(String str, String str2) throws Exception {
        ContentValues contentValues = new ContentValues();
        contentValues.put("FileName", str);
        contentValues.put("lastUsed", Long.valueOf(System.currentTimeMillis()));
        MdotMLogger.d(this, "Inserting file name " + str + " to " + str2);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.insert(str2, null, contentValues);
        MdotMLogger.d(this, "Name inserted successfuly");
        if (writableDatabase != null) {
            writableDatabase.close();
        }
    }

    public void insertNative(String str, String str2) throws Exception {
        ContentValues contentValues = new ContentValues();
        contentValues.put("NativeName", str);
        contentValues.put("LastUsed", Long.valueOf(System.currentTimeMillis()));
        MdotMLogger.d(this, "Inserting file name  native" + str + " to " + str2);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        MdotMLogger.d(this, "Name of native inserted successfuly" + writableDatabase.insert(str2, null, contentValues));
        if (writableDatabase != null) {
            writableDatabase.close();
        }
    }

    public boolean deleteNative(Context context) {
        SQLiteDatabase sQLiteDatabase;
        MdotMLogger.d(this, "delete native from file count:SELECT NativeName FROM Native WHERE LastUsed<?");
        try {
            sQLiteDatabase = getWritableDatabase();
            try {
                Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT NativeName FROM Native WHERE LastUsed<?", new String[]{new StringBuilder().append(System.currentTimeMillis() - 86400000).toString()});
                MdotMLogger.d(this, "delete native from file count:" + rawQuery.getCount());
                if (rawQuery != null && rawQuery.moveToFirst()) {
                    do {
                        MdotMLogger.d(this, "delete native file in do while");
                        String string = rawQuery.getString(rawQuery.getColumnIndex("NativeName"));
                        String str = context.getCacheDir() + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/" + MdotMNetworkManager.MdotM_Native + "/";
                        if (string != null && !string.equalsIgnoreCase("null") && string.trim().length() > 0) {
                            File file = new File(String.valueOf(str) + string);
                            MdotMLogger.d(this, "delete native file" + string + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + file.exists());
                            if (file.exists()) {
                                file.delete();
                            }
                        }
                    } while (rawQuery.moveToNext());
                    rawQuery.close();
                }
            } catch (Exception e) {
            }
        } catch (Exception e2) {
            sQLiteDatabase = null;
        }
        MdotMLogger.e(this, " delete native from db is:" + sQLiteDatabase.delete(TABLE_NAME_AD_NATIVE, "LastUsed<'" + (System.currentTimeMillis() - 86400000) + "'", null) + "::");
        try {
            getWritableDatabase();
        } catch (Exception e3) {
        }
        return false;
    }

    public boolean deleteCache(Context context, int i) {
        String str;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                Cursor rawQuery = writableDatabase.rawQuery("SELECT FileName FROM AdCache ORDER BY lastUsed ASC LIMIT 1", null);
                MdotMLogger.e(this, "delete from DB:" + rawQuery.moveToFirst());
                if (rawQuery != null && rawQuery.moveToFirst()) {
                    String string = rawQuery.getString(rawQuery.getColumnIndex("FileName"));
                    rawQuery.close();
                    if (i == 2) {
                        str = context.getCacheDir() + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/";
                    } else {
                        str = Environment.getExternalStorageDirectory() + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/";
                    }
                    if (string != null && !string.equalsIgnoreCase("null") && string.trim().length() > 0) {
                        File file = new File(String.valueOf(str) + string);
                        MdotMLogger.d(this, "delete file" + string + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + file.exists());
                        if (file.exists()) {
                            file.delete();
                        }
                        MdotMLogger.e(this, "the deleted file is:" + writableDatabase.delete(TABLE_NAME_AD_CACHE, "FileName='" + string + "'", null) + "::" + file.getAbsolutePath());
                        String[] relatedResources = getRelatedResources(string);
                        if (relatedResources != null) {
                            for (String str2 : relatedResources) {
                                clearCachedResource(str2, context, i, string);
                            }
                        }
                    }
                } else {
                    File file2 = new File(Environment.getExternalStorageDirectory() + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/" + MdotMNetworkManager.MdotM_PermanentCaching);
                    if (file2.exists()) {
                        for (File file3 : file2.listFiles()) {
                            file3.delete();
                        }
                    }
                }
                if (writableDatabase != null && writableDatabase.isOpen()) {
                    writableDatabase.close();
                }
                return true;
            } catch (Exception e) {
                MdotMLogger.e(this, e.getMessage());
                if (0 == 0 || !sQLiteDatabase.isOpen()) {
                    return false;
                }
                sQLiteDatabase.close();
                return false;
            }
        } catch (Throwable th) {
            if (0 != 0 && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
            throw th;
        }
    }

    public void clearCachedResource(String str, Context context, int i, String str2) throws Exception {
        if (str != null) {
            deleteFileFromResourceTable(str, str2);
            String[] relatedResources = getRelatedResources(str);
            if (relatedResources != null) {
                for (String str3 : relatedResources) {
                    clearCachedResource(str3, context, i, str);
                }
            }
        }
    }

    public String[] getRelatedResources(String str) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        String[] strArr;
        String[] strArr2;
        Cursor cursor2 = null;
        cursor2 = null;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                Cursor query = writableDatabase.query(TABLE_NAME_AD_RESOURCES, new String[]{"ResourceName"}, "HtmlName= '" + str + "'", null, null, null, null);
                try {
                    try {
                        if (query.moveToFirst()) {
                            String[] strArr3 = new String[query.getCount()];
                            int i = 0;
                            while (true) {
                                int i2 = i + 1;
                                try {
                                    strArr3[i] = query.getString(0);
                                    if (!query.moveToNext()) {
                                        break;
                                    }
                                    i = i2;
                                } catch (Exception e) {
                                    cursor = query;
                                    sQLiteDatabase2 = writableDatabase;
                                    strArr = strArr3;
                                    if (cursor != null && !cursor.isClosed()) {
                                        cursor.close();
                                    }
                                    if (sQLiteDatabase2 != null && sQLiteDatabase2.isOpen()) {
                                        sQLiteDatabase2.close();
                                        return strArr;
                                    }
                                    return strArr;
                                }
                            }
                            strArr2 = strArr3;
                        } else {
                            strArr2 = null;
                        }
                        if (query != null && !query.isClosed()) {
                            query.close();
                        }
                        if (writableDatabase != null && writableDatabase.isOpen()) {
                            writableDatabase.close();
                        }
                        return strArr2;
                    } catch (Exception e2) {
                        cursor = query;
                        sQLiteDatabase2 = writableDatabase;
                        strArr = null;
                    }
                } catch (Throwable th) {
                    cursor2 = query;
                    sQLiteDatabase = writableDatabase;
                    th = th;
                    if (cursor2 != null && !cursor2.isClosed()) {
                        cursor2.close();
                    }
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                cursor = null;
                sQLiteDatabase2 = writableDatabase;
                strArr = null;
            } catch (Throwable th2) {
                sQLiteDatabase = writableDatabase;
                th = th2;
            }
        } catch (Exception e4) {
            cursor = null;
            strArr = null;
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase = null;
        }
    }

    public int getCacheLocation() {
        Cursor cursor;
        Cursor cursor2;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                cursor = writableDatabase.query("CacheLocation", new String[]{"Location"}, null, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.getCount() > 0) {
                            MdotMLogger.d(this, "location column index  " + cursor.getColumnIndex("Location") + " row count " + cursor.getCount());
                            cursor.moveToFirst();
                            int i = cursor.getInt(cursor.getColumnIndex("Location"));
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            if (writableDatabase != null && writableDatabase.isOpen()) {
                                writableDatabase.close();
                            }
                            return i;
                        }
                    } catch (Exception e) {
                        sQLiteDatabase = writableDatabase;
                        cursor2 = cursor;
                        if (cursor2 != null && !cursor2.isClosed()) {
                            cursor2.close();
                        }
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            sQLiteDatabase.close();
                        }
                        return 0;
                    } catch (Throwable th) {
                        sQLiteDatabase = writableDatabase;
                        th = th;
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            sQLiteDatabase.close();
                        }
                        throw th;
                    }
                }
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                if (writableDatabase != null && writableDatabase.isOpen()) {
                    writableDatabase.close();
                }
            } catch (Exception e2) {
                sQLiteDatabase = writableDatabase;
                cursor2 = null;
            } catch (Throwable th2) {
                cursor = null;
                sQLiteDatabase = writableDatabase;
                th = th2;
            }
        } catch (Exception e3) {
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean insertCacheLocation(int i) {
        Throwable th;
        SQLiteDatabase sQLiteDatabase;
        boolean z;
        ContentValues contentValues = new ContentValues();
        contentValues.put("Location", Integer.valueOf(i));
        SQLiteDatabase sQLiteDatabase2 = "Inserting location name " + i + " to CacheLocation";
        MdotMLogger.d(this, sQLiteDatabase2);
        try {
            try {
                sQLiteDatabase = getWritableDatabase();
                try {
                    sQLiteDatabase.delete("CacheLocation", null, null);
                    sQLiteDatabase.insert("CacheLocation", null, contentValues);
                    MdotMLogger.d(this, "location inserted successfuly");
                    z = true;
                    sQLiteDatabase2 = sQLiteDatabase;
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.close();
                        sQLiteDatabase2 = sQLiteDatabase;
                    }
                } catch (Exception e) {
                    z = false;
                    MdotMLogger.d(this, "Exception while inserting");
                    sQLiteDatabase2 = sQLiteDatabase;
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.close();
                        sQLiteDatabase2 = sQLiteDatabase;
                    }
                    return z;
                }
            } catch (Throwable th2) {
                th = th2;
                if (sQLiteDatabase2 != 0) {
                    sQLiteDatabase2.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            sQLiteDatabase = null;
        } catch (Throwable th3) {
            sQLiteDatabase2 = 0;
            th = th3;
            if (sQLiteDatabase2 != 0) {
            }
            throw th;
        }
        return z;
    }

    public String[] getAllFileFromCacheTable() {
        Cursor cursor;
        Cursor cursor2;
        SQLiteDatabase sQLiteDatabase;
        String[] strArr;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                cursor = writableDatabase.query(TABLE_NAME_AD_CACHE, new String[]{"FileName"}, null, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.getCount() > 0) {
                            strArr = new String[cursor.getCount()];
                            if (cursor.moveToFirst()) {
                                int i = 0;
                                while (true) {
                                    int i2 = i + 1;
                                    strArr[i] = cursor.getString(0);
                                    if (!cursor.moveToNext()) {
                                        break;
                                    }
                                    i = i2;
                                }
                            } else {
                                strArr = null;
                            }
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            if (writableDatabase != null && writableDatabase.isOpen()) {
                                writableDatabase.close();
                            }
                            return strArr;
                        }
                    } catch (Exception e) {
                        sQLiteDatabase = writableDatabase;
                        cursor2 = cursor;
                        if (cursor2 != null && !cursor2.isClosed()) {
                            cursor2.close();
                        }
                        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                            return null;
                        }
                        sQLiteDatabase.close();
                        return null;
                    } catch (Throwable th) {
                        sQLiteDatabase2 = writableDatabase;
                        th = th;
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        if (sQLiteDatabase2 != null && sQLiteDatabase2.isOpen()) {
                            sQLiteDatabase2.close();
                        }
                        throw th;
                    }
                }
                strArr = null;
                if (cursor != null) {
                    cursor.close();
                }
                if (writableDatabase != null) {
                    writableDatabase.close();
                }
                return strArr;
            } catch (Exception e2) {
                sQLiteDatabase = writableDatabase;
                cursor2 = null;
            } catch (Throwable th2) {
                cursor = null;
                sQLiteDatabase2 = writableDatabase;
                th = th2;
            }
        } catch (Exception e3) {
            cursor2 = null;
            sQLiteDatabase = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public String[] getAllFilesfromResourceTable() {
        Cursor cursor;
        Cursor cursor2;
        SQLiteDatabase sQLiteDatabase;
        String[] strArr;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                cursor = writableDatabase.query(TABLE_NAME_AD_RESOURCES, new String[]{"ResourceName"}, null, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.getCount() > 0) {
                            strArr = new String[cursor.getCount()];
                            if (cursor.moveToFirst()) {
                                int i = 0;
                                while (true) {
                                    int i2 = i + 1;
                                    strArr[i] = cursor.getString(0);
                                    if (!cursor.moveToNext()) {
                                        break;
                                    }
                                    i = i2;
                                }
                            } else {
                                strArr = null;
                            }
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            if (writableDatabase != null && writableDatabase.isOpen()) {
                                writableDatabase.close();
                            }
                            return strArr;
                        }
                    } catch (Exception e) {
                        sQLiteDatabase = writableDatabase;
                        cursor2 = cursor;
                        if (cursor2 != null && !cursor2.isClosed()) {
                            cursor2.close();
                        }
                        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                            return null;
                        }
                        sQLiteDatabase.close();
                        return null;
                    } catch (Throwable th) {
                        sQLiteDatabase2 = writableDatabase;
                        th = th;
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        if (sQLiteDatabase2 != null && sQLiteDatabase2.isOpen()) {
                            sQLiteDatabase2.close();
                        }
                        throw th;
                    }
                }
                strArr = null;
                if (cursor != null) {
                    cursor.close();
                }
                if (writableDatabase != null) {
                    writableDatabase.close();
                }
                return strArr;
            } catch (Exception e2) {
                sQLiteDatabase = writableDatabase;
                cursor2 = null;
            } catch (Throwable th2) {
                cursor = null;
                sQLiteDatabase2 = writableDatabase;
                th = th2;
            }
        } catch (Exception e3) {
            cursor2 = null;
            sQLiteDatabase = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public void clearAllTable(Context context) {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                try {
                    writableDatabase.delete(TABLE_NAME_AD_CACHE, null, null);
                    writableDatabase.delete(TABLE_NAME_AD_RESOURCES, null, null);
                    writableDatabase.delete("CacheLocation", null, null);
                    if (writableDatabase != null && writableDatabase.isOpen()) {
                        writableDatabase.close();
                    }
                } catch (Throwable th2) {
                    sQLiteDatabase = writableDatabase;
                    th = th2;
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                sQLiteDatabase = null;
                th = th3;
            }
        } catch (Exception e) {
            if (0 != 0 && sQLiteDatabase2.isOpen()) {
                sQLiteDatabase2.close();
            }
        }
    }

    public void deleteFileFromCacheTable(String str) {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                try {
                    writableDatabase.execSQL("DELETE FROM AdCache WHERE FileName = '" + str + "'");
                    writableDatabase.execSQL("DELETE FROM AdHtmlResources WHERE HtmlName = '" + str + "'");
                    if (writableDatabase != null && writableDatabase.isOpen()) {
                        writableDatabase.close();
                    }
                } catch (Throwable th2) {
                    sQLiteDatabase = writableDatabase;
                    th = th2;
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                sQLiteDatabase = null;
                th = th3;
            }
        } catch (Exception e) {
            if (0 != 0 && sQLiteDatabase2.isOpen()) {
                sQLiteDatabase2.close();
            }
        }
    }

    public void deleteFileFromResourceTable(String str, String str2) throws Exception {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = getWritableDatabase();
            sQLiteDatabase.execSQL("DELETE FROM AdHtmlResources WHERE ResourceName = '" + str + "' AND HtmlName='" + str2 + "'");
            if (sQLiteDatabase == null) {
                return;
            }
        } finally {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        }
    }

    public void deleteAllCacheFromCacheAndResourceTable(Context context, int i) {
        String str;
        String[] allFileFromCacheTable;
        String[] allFilesfromResourceTable;
        SQLiteDatabase sQLiteDatabase = null;
        if (i == 2) {
            str = String.valueOf(context.getCacheDir().getAbsolutePath()) + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/";
        } else {
            str = String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/";
        }
        int length = getAllFileFromCacheTable().length;
        for (int i2 = 0; i2 < length; i2++) {
            new File(String.valueOf(str) + allFileFromCacheTable[i2]).delete();
        }
        try {
            sQLiteDatabase = getWritableDatabase();
            sQLiteDatabase.delete(TABLE_NAME_AD_CACHE, null, null);
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        } catch (Exception e) {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        } catch (Throwable th) {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
            throw th;
        }
        int length2 = getAllFilesfromResourceTable().length;
        for (int i3 = 0; i3 < length2; i3++) {
            new File(String.valueOf(str) + allFilesfromResourceTable[i3]).delete();
        }
        try {
            sQLiteDatabase = getWritableDatabase();
            sQLiteDatabase.delete(TABLE_NAME_AD_RESOURCES, null, null);
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        } catch (Exception e2) {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        } catch (Throwable th2) {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void insertToResourceTable(String str, String str2) {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        SQLiteDatabase sQLiteDatabase2 = null;
        ContentValues contentValues = new ContentValues();
        contentValues.put("HtmlName", str2);
        contentValues.put("ResourceName", str);
        MdotMLogger.d(this, "Inserting file name " + str + " of main file " + str2);
        try {
            try {
                try {
                    SQLiteDatabase writableDatabase = getWritableDatabase();
                    writableDatabase.insert(TABLE_NAME_AD_RESOURCES, null, contentValues);
                    MdotMLogger.d(this, "Name inserted successfuly");
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                } catch (Throwable th2) {
                    sQLiteDatabase = null;
                    th = th2;
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                sQLiteDatabase = null;
                th = th3;
                if (sQLiteDatabase != null) {
                }
                throw th;
            }
        } catch (Exception e) {
            MdotMLogger.d(this, "Exception while inserting");
            if (0 != 0) {
                sQLiteDatabase2.close();
            }
        }
    }

    public String[] getResourceParents(String str) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        String[] strArr;
        String[] strArr2;
        Cursor cursor2 = null;
        cursor2 = null;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                Cursor query = writableDatabase.query(TABLE_NAME_AD_RESOURCES, new String[]{"HtmlName"}, "ResourceName= '" + str + "'", null, null, null, null);
                try {
                    try {
                        if (query.moveToFirst()) {
                            String[] strArr3 = new String[query.getCount()];
                            int i = 0;
                            while (true) {
                                int i2 = i + 1;
                                try {
                                    strArr3[i] = query.getString(0);
                                    if (!query.moveToNext()) {
                                        break;
                                    }
                                    i = i2;
                                } catch (Exception e) {
                                    cursor = query;
                                    sQLiteDatabase2 = writableDatabase;
                                    strArr = strArr3;
                                    if (cursor != null && !cursor.isClosed()) {
                                        cursor.close();
                                    }
                                    if (sQLiteDatabase2 != null && sQLiteDatabase2.isOpen()) {
                                        sQLiteDatabase2.close();
                                        return strArr;
                                    }
                                    return strArr;
                                }
                            }
                            strArr2 = strArr3;
                        } else {
                            strArr2 = null;
                        }
                        if (query != null && !query.isClosed()) {
                            query.close();
                        }
                        if (writableDatabase != null && writableDatabase.isOpen()) {
                            writableDatabase.close();
                        }
                        return strArr2;
                    } catch (Exception e2) {
                        cursor = query;
                        sQLiteDatabase2 = writableDatabase;
                        strArr = null;
                    }
                } catch (Throwable th) {
                    cursor2 = query;
                    sQLiteDatabase = writableDatabase;
                    th = th;
                    if (cursor2 != null && !cursor2.isClosed()) {
                        cursor2.close();
                    }
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                cursor = null;
                sQLiteDatabase2 = writableDatabase;
                strArr = null;
            } catch (Throwable th2) {
                sQLiteDatabase = writableDatabase;
                th = th2;
            }
        } catch (Exception e4) {
            cursor = null;
            strArr = null;
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase = null;
        }
    }
}
