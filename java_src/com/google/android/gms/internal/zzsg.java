package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzsg extends zzsa implements Closeable {
    private static final String zzaeu = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");
    private static final String zzaev = String.format("SELECT MAX(%s) FROM %s WHERE 1;", "hit_time", "hits2");
    private final zza zzaew;
    private final zztj zzaex;
    private final zztj zzaey;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class zza extends SQLiteOpenHelper {
        zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        }

        private void zza(SQLiteDatabase sQLiteDatabase) {
            boolean z = true;
            Set<String> zzb = zzb(sQLiteDatabase, "hits2");
            String[] strArr = {"hit_id", "hit_string", "hit_time", "hit_url"};
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
                if (!zzb.remove(str)) {
                    String valueOf = String.valueOf(str);
                    throw new SQLiteException(valueOf.length() != 0 ? "Database hits2 is missing required column: ".concat(valueOf) : new String("Database hits2 is missing required column: "));
                }
            }
            if (zzb.remove("hit_app_id")) {
                z = false;
            }
            if (!zzb.isEmpty()) {
                throw new SQLiteException("Database hits2 has extra columns");
            }
            if (!z) {
                return;
            }
            sQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER");
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private boolean zza(SQLiteDatabase sQLiteDatabase, String str) {
            Cursor cursor;
            Cursor cursor2 = null;
            try {
                cursor = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                try {
                    try {
                        boolean moveToFirst = cursor.moveToFirst();
                        if (cursor == null) {
                            return moveToFirst;
                        }
                        cursor.close();
                        return moveToFirst;
                    } catch (SQLiteException e) {
                        e = e;
                        zzsg.this.zzc("Error querying for table", str, e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return false;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
                if (cursor2 != null) {
                }
                throw th;
            }
        }

        private Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
            HashSet hashSet = new HashSet();
            Cursor rawQuery = sQLiteDatabase.rawQuery(new StringBuilder(String.valueOf(str).length() + 22).append("SELECT * FROM ").append(str).append(" LIMIT 0").toString(), null);
            try {
                for (String str2 : rawQuery.getColumnNames()) {
                    hashSet.add(str2);
                }
                return hashSet;
            } finally {
                rawQuery.close();
            }
        }

        private void zzb(SQLiteDatabase sQLiteDatabase) {
            Set<String> zzb = zzb(sQLiteDatabase, "properties");
            String[] strArr = {"app_uid", "cid", "tid", NativeProtocol.WEB_DIALOG_PARAMS, "adid", "hits_count"};
            for (int i = 0; i < 6; i++) {
                String str = strArr[i];
                if (!zzb.remove(str)) {
                    String valueOf = String.valueOf(str);
                    throw new SQLiteException(valueOf.length() != 0 ? "Database properties is missing required column: ".concat(valueOf) : new String("Database properties is missing required column: "));
                }
            }
            if (!zzb.isEmpty()) {
                throw new SQLiteException("Database properties table has extra columns");
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            if (!zzsg.this.zzaey.zzA(3600000L)) {
                throw new SQLiteException("Database open failed");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e) {
                zzsg.this.zzaey.start();
                zzsg.this.zzbT("Opening the database failed, dropping the table and recreating it");
                zzsg.this.getContext().getDatabasePath(zzsg.this.zzow()).delete();
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    zzsg.this.zzaey.clear();
                    return writableDatabase;
                } catch (SQLiteException e2) {
                    zzsg.this.zze("Failed to open freshly created database", e2);
                    throw e2;
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzsv.zzca(sQLiteDatabase.getPath());
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
            if (!zza(sQLiteDatabase, "hits2")) {
                sQLiteDatabase.execSQL(zzsg.zzaeu);
            } else {
                zza(sQLiteDatabase);
            }
            if (!zza(sQLiteDatabase, "properties")) {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;");
            } else {
                zzb(sQLiteDatabase);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsg(zzsc zzscVar) {
        super(zzscVar);
        this.zzaex = new zztj(zznR());
        this.zzaey = new zztj(zznR());
        this.zzaew = new zza(zzscVar.getContext(), zzow());
    }

    private static String zzT(Map<String, String> map) {
        com.google.android.gms.common.internal.zzac.zzw(map);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builder.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String encodedQuery = builder.build().getEncodedQuery();
        return encodedQuery == null ? "" : encodedQuery;
    }

    private long zza(String str, String[] strArr, long j) {
        Cursor cursor = null;
        try {
            try {
                cursor = getWritableDatabase().rawQuery(str, strArr);
                if (cursor.moveToFirst()) {
                    j = cursor.getLong(0);
                } else if (cursor != null) {
                    cursor.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzd("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private long zzb(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = getWritableDatabase().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzd("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private String zzd(zzsz zzszVar) {
        return zzszVar.zzpS() ? zznT().zzpj() : zznT().zzpk();
    }

    private static String zze(zzsz zzszVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzszVar);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : zzszVar.zzfE().entrySet()) {
            String key = entry.getKey();
            if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key)) {
                builder.appendQueryParameter(key, entry.getValue());
            }
        }
        String encodedQuery = builder.build().getEncodedQuery();
        return encodedQuery == null ? "" : encodedQuery;
    }

    private void zzov() {
        int zzpt = zznT().zzpt();
        long zzom = zzom();
        if (zzom > zzpt - 1) {
            List<Long> zzt = zzt((zzom - zzpt) + 1);
            zzd("Store full, deleting hits to make room, count", Integer.valueOf(zzt.size()));
            zzr(zzt);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String zzow() {
        return zznT().zzpv();
    }

    public void beginTransaction() {
        zzob();
        getWritableDatabase().beginTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.zzaew.close();
        } catch (SQLiteException e) {
            zze("Sql error closing database", e);
        } catch (IllegalStateException e2) {
            zze("Error closing database", e2);
        }
    }

    public void endTransaction() {
        zzob();
        getWritableDatabase().endTransaction();
    }

    SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzaew.getWritableDatabase();
        } catch (SQLiteException e) {
            zzd("Error opening database", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEmpty() {
        return zzom() == 0;
    }

    public void setTransactionSuccessful() {
        zzob();
        getWritableDatabase().setTransactionSuccessful();
    }

    public long zza(long j, String str, String str2) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        zzob();
        zzmR();
        return zza("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{String.valueOf(j), str, str2}, 0L);
    }

    public void zza(long j, String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzob();
        zzmR();
        int delete = getWritableDatabase().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(j), str});
        if (delete > 0) {
            zza("Deleted property records", Integer.valueOf(delete));
        }
    }

    public void zzb(zzse zzseVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzseVar);
        zzob();
        zzmR();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String zzT = zzT(zzseVar.zzfE());
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_uid", Long.valueOf(zzseVar.zzoj()));
        contentValues.put("cid", zzseVar.zzmy());
        contentValues.put("tid", zzseVar.zzok());
        contentValues.put("adid", Integer.valueOf(zzseVar.zzol() ? 1 : 0));
        contentValues.put("hits_count", Long.valueOf(zzseVar.zzom()));
        contentValues.put(NativeProtocol.WEB_DIALOG_PARAMS, zzT);
        try {
            if (writableDatabase.insertWithOnConflict("properties", null, contentValues, 5) != -1) {
                return;
            }
            zzbT("Failed to insert/update a property (got -1)");
        } catch (SQLiteException e) {
            zze("Error storing a property", e);
        }
    }

    Map<String, String> zzbU(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            if (!str.startsWith("?")) {
                String valueOf = String.valueOf(str);
                str = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            return com.google.android.gms.common.util.zzo.zza(new URI(str), "UTF-8");
        } catch (URISyntaxException e) {
            zze("Error parsing hit parameters", e);
            return new HashMap(0);
        }
    }

    Map<String, String> zzbV(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            String valueOf = String.valueOf(str);
            return com.google.android.gms.common.util.zzo.zza(new URI(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")), "UTF-8");
        } catch (URISyntaxException e) {
            zze("Error parsing property parameters", e);
            return new HashMap(0);
        }
    }

    public void zzc(zzsz zzszVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzszVar);
        zzmR();
        zzob();
        String zze = zze(zzszVar);
        if (zze.length() > 8192) {
            zznS().zza(zzszVar, "Hit length exceeds the maximum allowed size");
            return;
        }
        zzov();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", zze);
        contentValues.put("hit_time", Long.valueOf(zzszVar.zzpQ()));
        contentValues.put("hit_app_id", Integer.valueOf(zzszVar.zzpO()));
        contentValues.put("hit_url", zzd(zzszVar));
        try {
            long insert = writableDatabase.insert("hits2", null, contentValues);
            if (insert == -1) {
                zzbT("Failed to insert a hit (got -1)");
            } else {
                zzb("Hit saved to database. db-id, hit", Long.valueOf(insert), zzszVar);
            }
        } catch (SQLiteException e) {
            zze("Error storing a hit", e);
        }
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
    }

    public long zzom() {
        zzmR();
        zzob();
        return zzb("SELECT COUNT(*) FROM hits2", (String[]) null);
    }

    public void zzor() {
        zzmR();
        zzob();
        getWritableDatabase().delete("hits2", null, null);
    }

    public void zzos() {
        zzmR();
        zzob();
        getWritableDatabase().delete("properties", null, null);
    }

    public int zzot() {
        zzmR();
        zzob();
        if (!this.zzaex.zzA(86400000L)) {
            return 0;
        }
        this.zzaex.start();
        zzbP("Deleting stale hits (if any)");
        int delete = getWritableDatabase().delete("hits2", "hit_time < ?", new String[]{Long.toString(zznR().currentTimeMillis() - 2592000000L)});
        zza("Deleted stale hits, count", Integer.valueOf(delete));
        return delete;
    }

    public long zzou() {
        zzmR();
        zzob();
        return zza(zzaev, (String[]) null, 0L);
    }

    public void zzr(List<Long> list) {
        com.google.android.gms.common.internal.zzac.zzw(list);
        zzmR();
        zzob();
        if (list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("hit_id");
        sb.append(" in (");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                sb.append(")");
                String sb2 = sb.toString();
                try {
                    SQLiteDatabase writableDatabase = getWritableDatabase();
                    zza("Deleting dispatched hits. count", Integer.valueOf(list.size()));
                    int delete = writableDatabase.delete("hits2", sb2, null);
                    if (delete == list.size()) {
                        return;
                    }
                    zzb("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(delete), sb2);
                    return;
                } catch (SQLiteException e) {
                    zze("Error deleting hits", e);
                    throw e;
                }
            }
            Long l = list.get(i2);
            if (l == null || l.longValue() == 0) {
                break;
            }
            if (i2 > 0) {
                sb.append(",");
            }
            sb.append(l);
            i = i2 + 1;
        }
        throw new SQLiteException("Invalid hit id");
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0073: MOVE  (r10 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:25:0x0073 */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<Long> zzt(long j) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3 = null;
        zzmR();
        zzob();
        if (j <= 0) {
            return Collections.emptyList();
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ArrayList arrayList = new ArrayList();
        try {
            try {
                cursor = writableDatabase.query("hits2", new String[]{"hit_id"}, null, null, null, null, String.format("%s ASC", "hit_id"), Long.toString(j));
                try {
                } catch (SQLiteException e) {
                    e = e;
                    zzd("Error selecting hit ids", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return arrayList;
                }
            } catch (Throwable th) {
                th = th;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor3 != null) {
            }
            throw th;
        }
        if (!cursor.moveToFirst()) {
            if (cursor != null) {
            }
            return arrayList;
        }
        do {
            arrayList.add(Long.valueOf(cursor.getLong(0)));
        } while (cursor.moveToNext());
        if (cursor != null) {
            cursor.close();
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<zzsz> zzu(long j) {
        Cursor cursor;
        boolean z = true;
        Cursor cursor2 = null;
        if (j < 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        zzmR();
        zzob();
        try {
            try {
                Cursor query = getWritableDatabase().query("hits2", new String[]{"hit_id", "hit_time", "hit_string", "hit_url", "hit_app_id"}, null, null, null, null, String.format("%s ASC", "hit_id"), Long.toString(j));
                try {
                    ArrayList arrayList = new ArrayList();
                    if (!query.moveToFirst()) {
                        if (query != null) {
                        }
                        return arrayList;
                    }
                    do {
                        arrayList.add(new zzsz(this, zzbU(query.getString(2)), query.getLong(1), zztm.zzcj(query.getString(3)), query.getLong(0), query.getInt(4)));
                    } while (query.moveToNext());
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                } catch (SQLiteException e) {
                    e = e;
                    cursor = query;
                    try {
                        zze("Error loading hits from the database", e);
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        cursor2 = cursor;
                        if (cursor2 != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        }
    }

    public void zzv(long j) {
        zzmR();
        zzob();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j));
        zza("Deleting hit, id", Long.valueOf(j));
        zzr(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0091 A[Catch: SQLiteException -> 0x00a8, all -> 0x00b8, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x00a8, blocks: (B:4:0x0048, B:6:0x0053, B:9:0x0065, B:11:0x007a, B:23:0x009e, B:14:0x0085, B:13:0x0080, B:16:0x008b, B:18:0x0091), top: B:40:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<zzse> zzw(long j) {
        Cursor cursor;
        zzob();
        zzmR();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursor2 = null;
        try {
            try {
                String[] strArr = {"cid", "tid", "adid", "hits_count", NativeProtocol.WEB_DIALOG_PARAMS};
                int zzpu = zznT().zzpu();
                Cursor query = writableDatabase.query("properties", strArr, "app_uid=?", new String[]{String.valueOf(j)}, null, null, null, String.valueOf(zzpu));
                try {
                    ArrayList arrayList = new ArrayList();
                    if (!query.moveToFirst()) {
                        if (arrayList.size() >= zzpu) {
                        }
                        if (query != null) {
                        }
                        return arrayList;
                    }
                    do {
                        String string = query.getString(0);
                        String string2 = query.getString(1);
                        boolean z = query.getInt(2) != 0;
                        long j2 = query.getInt(3);
                        Map<String, String> zzbV = zzbV(query.getString(4));
                        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
                            zzc("Read property with empty client id or tracker id", string, string2);
                        } else {
                            arrayList.add(new zzse(j, string, string2, z, j2, zzbV));
                        }
                    } while (query.moveToNext());
                    if (arrayList.size() >= zzpu) {
                        zzbS("Sending hits to too many properties. Campaign report might be incorrect");
                    }
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                } catch (SQLiteException e) {
                    e = e;
                    cursor = query;
                    try {
                        zze("Error loading hits from the database", e);
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        cursor2 = cursor;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        throw th;
                    }
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor = null;
            }
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }
}
