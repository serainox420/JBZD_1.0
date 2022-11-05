package com.google.android.gms.ads.internal.purchase;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
@zzme
/* loaded from: classes.dex */
public class zzh {
    private static zzh zzPN;
    private final zza zzPM;
    private static final String zzPL = String.format(Locale.US, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", "InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time");
    private static final Object zzrJ = new Object();

    /* loaded from: classes2.dex */
    public class zza extends SQLiteOpenHelper {
        public zza(zzh zzhVar, Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 4);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(zzh.zzPL);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            zzpk.zzbg(new StringBuilder(64).append("Database updated from version ").append(i).append(" to version ").append(i2).toString());
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS InAppPurchase");
            onCreate(sQLiteDatabase);
        }
    }

    zzh(Context context) {
        this.zzPM = new zza(this, context, "google_inapp_purchase.db");
    }

    public static zzh zzu(Context context) {
        zzh zzhVar;
        synchronized (zzrJ) {
            if (zzPN == null) {
                zzPN = new zzh(context);
            }
            zzhVar = zzPN;
        }
        return zzhVar;
    }

    public int getRecordCount() {
        Cursor cursor = null;
        int i = 0;
        synchronized (zzrJ) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase != null) {
                try {
                    cursor = writableDatabase.rawQuery("select count(*) from InAppPurchase", null);
                } catch (SQLiteException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    zzpk.zzbh(valueOf.length() != 0 ? "Error getting record count".concat(valueOf) : new String("Error getting record count"));
                    if (cursor != null) {
                        cursor.close();
                    }
                }
                if (cursor.moveToFirst()) {
                    i = cursor.getInt(0);
                    if (cursor != null) {
                        cursor.close();
                    }
                } else if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return i;
    }

    public SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzPM.getWritableDatabase();
        } catch (SQLiteException e) {
            zzpk.zzbh("Error opening writable conversion tracking database");
            return null;
        }
    }

    public zzf zza(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        return new zzf(cursor.getLong(0), cursor.getString(1), cursor.getString(2));
    }

    public void zza(zzf zzfVar) {
        if (zzfVar == null) {
            return;
        }
        synchronized (zzrJ) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.delete("InAppPurchase", String.format(Locale.US, "%s = %d", "purchase_id", Long.valueOf(zzfVar.zzPG)), null);
            }
        }
    }

    public void zzb(zzf zzfVar) {
        if (zzfVar == null) {
            return;
        }
        synchronized (zzrJ) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("product_id", zzfVar.zzPI);
            contentValues.put("developer_payload", zzfVar.zzPH);
            contentValues.put("record_time", Long.valueOf(SystemClock.elapsedRealtime()));
            zzfVar.zzPG = writableDatabase.insert("InAppPurchase", null, contentValues);
            if (getRecordCount() > 20000) {
                zziL();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041 A[Catch: all -> 0x0066, TRY_ENTER, TryCatch #3 {, blocks: (B:4:0x0004, B:6:0x000f, B:9:0x0012, B:11:0x0018, B:19:0x0041, B:20:0x0044, B:37:0x0072, B:38:0x0075, B:29:0x0062), top: B:45:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0072 A[Catch: all -> 0x0066, TRY_ENTER, TryCatch #3 {, blocks: (B:4:0x0004, B:6:0x000f, B:9:0x0012, B:11:0x0018, B:19:0x0041, B:20:0x0044, B:37:0x0072, B:38:0x0075, B:29:0x0062), top: B:45:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<zzf> zzg(long j) {
        Cursor cursor;
        synchronized (zzrJ) {
            LinkedList linkedList = new LinkedList();
            if (j <= 0) {
                return linkedList;
            }
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return linkedList;
            }
            try {
                cursor = writableDatabase.query("InAppPurchase", null, null, null, null, null, "record_time ASC", String.valueOf(j));
                try {
                    try {
                    } catch (SQLiteException e) {
                        e = e;
                        String valueOf = String.valueOf(e.getMessage());
                        zzpk.zzbh(valueOf.length() != 0 ? "Error extracing purchase info: ".concat(valueOf) : new String("Error extracing purchase info: "));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return linkedList;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
                if (cursor != null) {
                }
                throw th;
            }
            if (!cursor.moveToFirst()) {
                if (cursor != null) {
                }
                return linkedList;
            }
            do {
                linkedList.add(zza(cursor));
            } while (cursor.moveToNext());
            if (cursor != null) {
                cursor.close();
            }
            return linkedList;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x005c A[Catch: all -> 0x0031, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x0004, B:6:0x000a, B:14:0x002c, B:15:0x002f, B:33:0x005c, B:34:0x005f, B:27:0x004f), top: B:39:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void zziL() {
        Cursor cursor;
        synchronized (zzrJ) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            try {
                cursor = writableDatabase.query("InAppPurchase", null, null, null, null, null, "record_time ASC", "1");
                if (cursor != null) {
                    try {
                        try {
                            if (cursor.moveToFirst()) {
                                zza(zza(cursor));
                            }
                        } catch (SQLiteException e) {
                            e = e;
                            String valueOf = String.valueOf(e.getMessage());
                            zzpk.zzbh(valueOf.length() != 0 ? "Error remove oldest record".concat(valueOf) : new String("Error remove oldest record"));
                            if (cursor != null) {
                                cursor.close();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
                if (cursor != null) {
                }
                throw th;
            }
        }
    }
}
