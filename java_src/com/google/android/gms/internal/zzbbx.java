package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.internal.zzbci;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzbbx implements zzbbp {
    private final Context mContext;
    private final String zzbGV;
    private long zzbGW;
    private final int zzbGX;
    private final zzb zzbJW;
    private volatile zzbbh zzbJX;
    private final zzbbq zzbJY;
    private com.google.android.gms.common.util.zze zzuP;
    private static final String zzbJT = String.format("CREATE TABLE IF NOT EXISTS %s ('%s' TEXT UNIQUE);", "gtm_hit_unique_ids", "hit_unique_id");
    private static final String zzaeu = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT UNIQUE, '%s' TEXT, '%s' TEXT);", "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time", "hit_method", "hit_unique_id", "hit_headers", "hit_body");
    private static final String zzbJU = String.format("CREATE TRIGGER IF NOT EXISTS %s DELETE ON %s FOR EACH ROW WHEN OLD.%s NOTNULL BEGIN     INSERT OR IGNORE INTO %s (%s) VALUES (OLD.%s); END;", "save_unique_on_delete", "gtm_hits", "hit_unique_id", "gtm_hit_unique_ids", "hit_unique_id", "hit_unique_id");
    private static final String zzbJV = String.format("CREATE TRIGGER IF NOT EXISTS %s BEFORE INSERT ON %s FOR EACH ROW WHEN NEW.%s NOT NULL BEGIN     SELECT RAISE(ABORT, 'Duplicate unique ID.')     WHERE EXISTS (SELECT 1 FROM %s WHERE %s = NEW.%s); END;", "check_unique_on_insert", "gtm_hits", "hit_unique_id", "gtm_hit_unique_ids", "hit_unique_id", "hit_unique_id");

    /* loaded from: classes2.dex */
    class zza implements zzbci.zza {
        zza() {
        }

        @Override // com.google.android.gms.internal.zzbci.zza
        public void zza(zzbbl zzbblVar) {
            zzbbx.this.zzv(zzbblVar.zzQN());
        }

        @Override // com.google.android.gms.internal.zzbci.zza
        public void zzb(zzbbl zzbblVar) {
            zzbbx.this.zzv(zzbblVar.zzQN());
            zzbbu.v(new StringBuilder(57).append("Permanent failure dispatching hitId: ").append(zzbblVar.zzQN()).toString());
        }

        @Override // com.google.android.gms.internal.zzbci.zza
        public void zzc(zzbbl zzbblVar) {
            long zzQO = zzbblVar.zzQO();
            if (zzQO == 0) {
                zzbbx.this.zzj(zzbblVar.zzQN(), zzbbx.this.zzuP.currentTimeMillis());
            } else if (zzQO + 14400000 >= zzbbx.this.zzuP.currentTimeMillis()) {
            } else {
                zzbbx.this.zzv(zzbblVar.zzQN());
                zzbbu.v(new StringBuilder(47).append("Giving up on failed hitId: ").append(zzbblVar.zzQN()).toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class zzb extends SQLiteOpenHelper {
        private boolean zzbGZ;
        private long zzbHa;

        zzb(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
            this.zzbHa = 0L;
        }

        private void zza(SQLiteDatabase sQLiteDatabase, String str, List<String> list) {
            Cursor rawQuery = sQLiteDatabase.rawQuery(new StringBuilder(String.valueOf(str).length() + 22).append("SELECT * FROM ").append(str).append(" WHERE 0").toString(), null);
            HashSet hashSet = new HashSet();
            try {
                for (String str2 : rawQuery.getColumnNames()) {
                    hashSet.add(str2);
                }
                rawQuery.close();
                for (String str3 : list) {
                    if (!hashSet.remove(str3)) {
                        throw new SQLiteException(String.format("Database column %s missing in table %s.", str3, str));
                    }
                }
                if (hashSet.isEmpty()) {
                    return;
                }
                throw new SQLiteException(String.format("Database has extra columns in table %s.", str));
            } catch (Throwable th) {
                rawQuery.close();
                throw th;
            }
        }

        private boolean zza(String str, SQLiteDatabase sQLiteDatabase) {
            Cursor cursor;
            Cursor cursor2 = null;
            try {
                Cursor query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                try {
                    boolean moveToFirst = query.moveToFirst();
                    if (query == null) {
                        return moveToFirst;
                    }
                    query.close();
                    return moveToFirst;
                } catch (SQLiteException e) {
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = query;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            if (!this.zzbGZ || this.zzbHa + 3600000 <= zzbbx.this.zzuP.currentTimeMillis()) {
                SQLiteDatabase sQLiteDatabase = null;
                this.zzbGZ = true;
                this.zzbHa = zzbbx.this.zzuP.currentTimeMillis();
                try {
                    sQLiteDatabase = super.getWritableDatabase();
                } catch (SQLiteException e) {
                    zzbbx.this.mContext.getDatabasePath(zzbbx.this.zzbGV).delete();
                }
                if (sQLiteDatabase == null) {
                    sQLiteDatabase = super.getWritableDatabase();
                }
                this.zzbGZ = false;
                return sQLiteDatabase;
            }
            throw new SQLiteException("Database creation failed");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzbbk.zzca(sQLiteDatabase.getPath());
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (Build.VERSION.SDK_INT < 15) {
                Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
                try {
                    rawQuery.moveToFirst();
                } finally {
                    rawQuery.close();
                }
            }
            if (!zza("gtm_hit_unique_ids", sQLiteDatabase)) {
                sQLiteDatabase.execSQL(zzbbx.zzbJT);
            } else {
                zza(sQLiteDatabase, "gtm_hit_unique_ids", Arrays.asList("hit_unique_id"));
            }
            if (!zza("gtm_hits", sQLiteDatabase)) {
                sQLiteDatabase.execSQL(zzbbx.zzaeu);
            } else {
                zza(sQLiteDatabase, "gtm_hits", Arrays.asList("hit_id", "hit_url", "hit_time", "hit_first_send_time", "hit_method", "hit_unique_id", "hit_headers", "hit_body"));
            }
            sQLiteDatabase.execSQL(zzbbx.zzbJU);
            sQLiteDatabase.execSQL(zzbbx.zzbJV);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbx(zzbbq zzbbqVar, Context context) {
        this(zzbbqVar, context, "gtm_urls.db", 2000);
    }

    zzbbx(zzbbq zzbbqVar, Context context, String str, int i) {
        this.mContext = context.getApplicationContext();
        this.zzbGV = str;
        this.zzbJY = zzbbqVar;
        this.zzuP = com.google.android.gms.common.util.zzi.zzzc();
        this.zzbJW = new zzb(this.mContext, this.zzbGV);
        this.zzbJX = new zzbci(this.mContext, new zza());
        this.zzbGW = 0L;
        this.zzbGX = i;
    }

    private void zzRa() {
        int zzRb = (zzRb() - this.zzbGX) + 1;
        if (zzRb > 0) {
            List<String> zznG = zznG(zzRb);
            zzbbu.v(new StringBuilder(51).append("Store full, deleting ").append(zznG.size()).append(" hits to make room.").toString());
            zzh((String[]) zznG.toArray(new String[0]));
        }
    }

    private void zzb(long j, String str, String str2, String str3, Map<String, String> map, String str4) {
        String str5 = null;
        SQLiteDatabase zzhe = zzhe("Error opening database for putHit");
        if (zzhe == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_time", Long.valueOf(j));
        contentValues.put("hit_url", str);
        contentValues.put("hit_first_send_time", (Integer) 0);
        if (str2 == null) {
            str2 = "GET";
        }
        contentValues.put("hit_method", str2);
        contentValues.put("hit_unique_id", str3);
        if (map != null) {
            str5 = new JSONObject(map).toString();
        }
        contentValues.put("hit_headers", str5);
        contentValues.put("hit_body", str4);
        try {
            zzhe.insertOrThrow("gtm_hits", null, contentValues);
            zzbbu.v(new StringBuilder(String.valueOf(str).length() + 19).append("Hit stored (url = ").append(str).append(")").toString());
            this.zzbJY.zzaS(false);
        } catch (SQLiteConstraintException e) {
            String valueOf = String.valueOf(str);
            zzbbu.v(valueOf.length() != 0 ? "Hit has already been sent: ".concat(valueOf) : new String("Hit has already been sent: "));
        } catch (SQLiteException e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            zzbbu.zzbh(valueOf2.length() != 0 ? "Error storing hit: ".concat(valueOf2) : new String("Error storing hit: "));
        }
    }

    private SQLiteDatabase zzhe(String str) {
        try {
            return this.zzbJW.getWritableDatabase();
        } catch (SQLiteException e) {
            zzbbe.zzb(str, e, this.mContext);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzj(long j, long j2) {
        SQLiteDatabase zzhe = zzhe("Error opening database for getNumStoredHits.");
        if (zzhe == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_first_send_time", Long.valueOf(j2));
        try {
            zzhe.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(j)});
        } catch (SQLiteException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbbu.zzbh(new StringBuilder(String.valueOf(valueOf).length() + 70).append("Error setting HIT_FIRST_DISPATCH_TIME for hitId ").append(j).append(": ").append(valueOf).toString());
            zzv(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzv(long j) {
        zzh(new String[]{String.valueOf(j)});
    }

    @Override // com.google.android.gms.internal.zzbbp
    public void dispatch() {
        zzbbu.v("GTM Dispatch running...");
        if (!this.zzbJX.zzQF()) {
            return;
        }
        List<zzbbl> zznH = zznH(40);
        if (zznH.isEmpty()) {
            zzbbu.v("...nothing to dispatch");
            this.zzbJY.zzaS(true);
            return;
        }
        this.zzbJX.zzP(zznH);
        if (zzRc() <= 0) {
            return;
        }
        zzbcg.zzSr().dispatch();
    }

    int zzRb() {
        return zzhG("gtm_hits");
    }

    int zzRc() {
        Cursor cursor;
        int i;
        Cursor cursor2 = null;
        SQLiteDatabase zzhe = zzhe("Error opening database for getNumStoredHits.");
        try {
            if (zzhe == null) {
                return 0;
            }
            try {
                cursor = zzhe.query("gtm_hits", new String[]{"hit_id", "hit_first_send_time"}, "hit_first_send_time=0", null, null, null, null);
                try {
                    i = cursor.getCount();
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (SQLiteException e) {
                    e = e;
                    String valueOf = String.valueOf(e.getMessage());
                    zzbbu.zzbh(valueOf.length() != 0 ? "Error getting num untried hits: ".concat(valueOf) : new String("Error getting num untried hits: "));
                    if (cursor != null) {
                        cursor.close();
                        i = 0;
                    } else {
                        i = 0;
                    }
                    return i;
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor2.close();
                }
                throw th;
            }
            return i;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.google.android.gms.internal.zzbbp
    public void zza(long j, String str, String str2, String str3, Map<String, String> map, String str4) {
        zzot();
        zzRa();
        zzb(j, str, str2, str3, map, str4);
        if (zzbbz.zzSg().isPreview()) {
            zzbbu.v("Sending hits immediately under preview.");
            dispatch();
        }
    }

    void zzh(String[] strArr) {
        SQLiteDatabase zzhe;
        boolean z = true;
        if (strArr == null || strArr.length == 0 || (zzhe = zzhe("Error opening database for deleteHits.")) == null) {
            return;
        }
        try {
            zzhe.delete("gtm_hits", String.format("HIT_ID in (%s)", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
            zzbbq zzbbqVar = this.zzbJY;
            if (zzRb() != 0) {
                z = false;
            }
            zzbbqVar.zzaS(z);
        } catch (SQLiteException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbbu.zzbh(valueOf.length() != 0 ? "Error deleting hits: ".concat(valueOf) : new String("Error deleting hits: "));
        }
    }

    int zzhG(String str) {
        Cursor cursor = null;
        int i = 0;
        SQLiteDatabase zzhe = zzhe("Error opening database for getNumRecords.");
        if (zzhe != null) {
            try {
                try {
                    String valueOf = String.valueOf(str);
                    cursor = zzhe.rawQuery(valueOf.length() != 0 ? "SELECT COUNT(*) from ".concat(valueOf) : new String("SELECT COUNT(*) from "), null);
                    if (cursor.moveToFirst()) {
                        i = (int) cursor.getLong(0);
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (SQLiteException e) {
                    String valueOf2 = String.valueOf(e.getMessage());
                    zzbbu.zzbh(valueOf2.length() != 0 ? "Error getting numStoredRecords: ".concat(valueOf2) : new String("Error getting numStoredRecords: "));
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    List<String> zznG(int i) {
        Cursor cursor;
        Cursor cursor2 = null;
        ArrayList arrayList = new ArrayList();
        if (i <= 0) {
            zzbbu.zzbh("Invalid maxHits specified. Skipping");
            return arrayList;
        }
        SQLiteDatabase zzhe = zzhe("Error opening database for peekHitIds.");
        try {
            if (zzhe == null) {
                return arrayList;
            }
            try {
                cursor = zzhe.query("gtm_hits", new String[]{"hit_id"}, null, null, null, null, String.format("%s ASC", "hit_id"), Integer.toString(i));
                try {
                } catch (SQLiteException e) {
                    e = e;
                    String valueOf = String.valueOf(e.getMessage());
                    zzbbu.zzbh(valueOf.length() != 0 ? "Error in peekHits fetching hitIds: ".concat(valueOf) : new String("Error in peekHits fetching hitIds: "));
                    if (cursor != null) {
                        cursor.close();
                    }
                    return arrayList;
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor2.close();
                }
                throw th;
            }
            if (!cursor.moveToFirst()) {
                if (cursor != null) {
                }
                return arrayList;
            }
            do {
                arrayList.add(String.valueOf(cursor.getLong(0)));
            } while (cursor.moveToNext());
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0173  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<zzbbl> zznH(int i) {
        SQLiteException sQLiteException;
        Cursor cursor;
        ArrayList arrayList;
        ArrayList<zzbbl> arrayList2;
        Cursor cursor2;
        int i2;
        HashMap hashMap;
        ArrayList arrayList3 = new ArrayList();
        SQLiteDatabase zzhe = zzhe("Error opening database for peekHits");
        if (zzhe == null) {
            return arrayList3;
        }
        Cursor cursor3 = null;
        try {
            Cursor query = zzhe.query("gtm_hits", new String[]{"hit_id", "hit_time", "hit_first_send_time"}, null, null, null, null, String.format("%s ASC", "hit_id"), Integer.toString(i));
            try {
                try {
                    arrayList2 = new ArrayList();
                } catch (Throwable th) {
                    th = th;
                    cursor3 = query;
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e) {
                sQLiteException = e;
                cursor = query;
                arrayList = arrayList3;
            }
            try {
                if (!query.moveToFirst()) {
                    if (query != null) {
                    }
                    cursor2 = zzhe.query("gtm_hits", new String[]{"hit_id", "hit_url", "hit_method", "hit_headers", "hit_body"}, null, null, null, null, String.format("%s ASC", "hit_id"), Integer.toString(i));
                    if (cursor2.moveToFirst()) {
                    }
                    if (cursor2 != null) {
                    }
                    return arrayList2;
                }
                do {
                    arrayList2.add(new zzbbl(query.getLong(0), query.getLong(1), query.getLong(2)));
                } while (query.moveToNext());
                if (query != null) {
                    query.close();
                }
                try {
                    try {
                        cursor2 = zzhe.query("gtm_hits", new String[]{"hit_id", "hit_url", "hit_method", "hit_headers", "hit_body"}, null, null, null, null, String.format("%s ASC", "hit_id"), Integer.toString(i));
                    } catch (SQLiteException e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = query;
                }
                try {
                    if (cursor2.moveToFirst()) {
                        int i3 = 0;
                        while (true) {
                            if (((SQLiteCursor) cursor2).getWindow().getNumRows() > 0) {
                                ((zzbbl) arrayList2.get(i3)).zzhi(cursor2.getString(1));
                                ((zzbbl) arrayList2.get(i3)).zzhE(cursor2.getString(2));
                                ((zzbbl) arrayList2.get(i3)).zzhF(cursor2.getString(4));
                                try {
                                    String string = cursor2.getString(3);
                                    if (string != null) {
                                        JSONObject jSONObject = new JSONObject(string);
                                        JSONArray names = jSONObject.names();
                                        hashMap = new HashMap();
                                        int i4 = 0;
                                        while (true) {
                                            int i5 = i4;
                                            if (i5 >= names.length()) {
                                                break;
                                            }
                                            String string2 = names.getString(i5);
                                            hashMap.put(string2, (String) jSONObject.opt(string2));
                                            i4 = i5 + 1;
                                        }
                                    } else {
                                        hashMap = null;
                                    }
                                    ((zzbbl) arrayList2.get(i3)).zzan(hashMap);
                                } catch (JSONException e3) {
                                    zzbbu.zzbh(String.format("Failed to read headers for hitId %d: %s", Long.valueOf(((zzbbl) arrayList2.get(i3)).zzQN()), e3.getMessage()));
                                    i2 = i3;
                                }
                            } else {
                                zzbbu.zzbh(String.format("HitString for hitId %d too large. Hit will be deleted.", Long.valueOf(((zzbbl) arrayList2.get(i3)).zzQN())));
                            }
                            i2 = i3 + 1;
                            if (!cursor2.moveToNext()) {
                                break;
                            }
                            i3 = i2;
                        }
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return arrayList2;
                } catch (SQLiteException e4) {
                    e = e4;
                    query = cursor2;
                    String valueOf = String.valueOf(e.getMessage());
                    zzbbu.zzbh(valueOf.length() != 0 ? "Error in peekHits fetching hit url: ".concat(valueOf) : new String("Error in peekHits fetching hit url: "));
                    ArrayList arrayList4 = new ArrayList();
                    boolean z = false;
                    for (zzbbl zzbblVar : arrayList2) {
                        if (TextUtils.isEmpty(zzbblVar.zzQP())) {
                            if (z) {
                                break;
                            }
                            z = true;
                        }
                        arrayList4.add(zzbblVar);
                    }
                    if (query != null) {
                        query.close();
                    }
                    return arrayList4;
                } catch (Throwable th3) {
                    th = th3;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e5) {
                sQLiteException = e5;
                cursor = query;
                arrayList = arrayList2;
                try {
                    String valueOf2 = String.valueOf(sQLiteException.getMessage());
                    zzbbu.zzbh(valueOf2.length() != 0 ? "Error in peekHits fetching hitIds: ".concat(valueOf2) : new String("Error in peekHits fetching hitIds: "));
                    if (cursor == null) {
                        return arrayList;
                    }
                    cursor.close();
                    return arrayList;
                } catch (Throwable th4) {
                    th = th4;
                    cursor3 = cursor;
                    if (cursor3 != null) {
                    }
                    throw th;
                }
            }
        } catch (SQLiteException e6) {
            sQLiteException = e6;
            cursor = null;
            arrayList = arrayList3;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    int zzot() {
        boolean z = true;
        long currentTimeMillis = this.zzuP.currentTimeMillis();
        if (currentTimeMillis <= this.zzbGW + 86400000) {
            return 0;
        }
        this.zzbGW = currentTimeMillis;
        SQLiteDatabase zzhe = zzhe("Error opening database for deleteStaleHits.");
        if (zzhe == null) {
            return 0;
        }
        int delete = zzhe.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(this.zzuP.currentTimeMillis() - 2592000000L)});
        zzbbu.v(new StringBuilder(31).append("Removed ").append(delete).append(" stale hits.").toString());
        zzbbq zzbbqVar = this.zzbJY;
        if (zzRb() != 0) {
            z = false;
        }
        zzbbqVar.zzaS(z);
        return delete;
    }
}
