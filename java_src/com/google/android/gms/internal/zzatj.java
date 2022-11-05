package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.support.v4.f.a;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.zzauu;
import com.google.android.gms.internal.zzauw;
import com.google.firebase.a.a;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzatj extends zzauh {
    private static final Map<String, String> zzbrg = new a(1);
    private static final Map<String, String> zzbrh;
    private static final Map<String, String> zzbri;
    private static final Map<String, String> zzbrj;
    private static final Map<String, String> zzbrk;
    private final zzc zzbrl;
    private final zzauo zzbrm;

    /* loaded from: classes2.dex */
    public static class zza {
        long zzbrn;
        long zzbro;
        long zzbrp;
        long zzbrq;
        long zzbrr;
    }

    /* loaded from: classes2.dex */
    interface zzb {
        boolean zza(long j, zzauw.zzb zzbVar);

        void zzb(zzauw.zze zzeVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzc extends SQLiteOpenHelper {
        zzc(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            if (!zzatj.this.zzbrm.zzA(zzatj.this.zzKn().zzLc())) {
                throw new SQLiteException("Database open failed");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e) {
                zzatj.this.zzbrm.start();
                zzatj.this.zzKl().zzLY().log("Opening the database failed, dropping and recreating it");
                String zzow = zzatj.this.zzow();
                if (!zzatj.this.getContext().getDatabasePath(zzow).delete()) {
                    zzatj.this.zzKl().zzLY().zzj("Failed to delete corrupted db file", zzow);
                }
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    zzatj.this.zzbrm.clear();
                    return writableDatabase;
                } catch (SQLiteException e2) {
                    zzatj.this.zzKl().zzLY().zzj("Failed to open freshly created database", e2);
                    throw e2;
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase);
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
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", null);
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", zzatj.zzbrg);
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", zzatj.zzbrh);
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", zzatj.zzbrj);
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", zzatj.zzbri);
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", null);
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", null);
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
            zzatj.zza(zzatj.this.zzKl(), sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", zzatj.zzbrk);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    static {
        zzbrg.put(a.b.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;");
        zzbrh = new android.support.v4.f.a(18);
        zzbrh.put("app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;");
        zzbrh.put("app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;");
        zzbrh.put("gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;");
        zzbrh.put("dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;");
        zzbrh.put("measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;");
        zzbrh.put("last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;");
        zzbrh.put("day", "ALTER TABLE apps ADD COLUMN day INTEGER;");
        zzbrh.put("daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;");
        zzbrh.put("daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;");
        zzbrh.put("daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;");
        zzbrh.put("remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;");
        zzbrh.put("config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;");
        zzbrh.put("failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;");
        zzbrh.put("app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;");
        zzbrh.put("firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;");
        zzbrh.put("daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;");
        zzbrh.put("daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;");
        zzbrh.put("health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;");
        zzbrh.put("android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;");
        zzbri = new android.support.v4.f.a(1);
        zzbri.put("realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;");
        zzbrj = new android.support.v4.f.a(1);
        zzbrj.put("has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;");
        zzbrk = new android.support.v4.f.a(1);
        zzbrk.put("previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatj(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbrm = new zzauo(zznR());
        this.zzbrl = new zzc(getContext(), zzow());
    }

    private boolean zzLM() {
        return getContext().getDatabasePath(zzow()).exists();
    }

    @TargetApi(11)
    static int zza(Cursor cursor, int i) {
        int i2 = Build.VERSION.SDK_INT;
        return cursor.getType(i);
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
                zzKl().zzLY().zze("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzatx zzatxVar, SQLiteDatabase sQLiteDatabase) {
        if (zzatxVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        int i = Build.VERSION.SDK_INT;
        File file = new File(sQLiteDatabase.getPath());
        if (!file.setReadable(false, false)) {
            zzatxVar.zzMa().log("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            zzatxVar.zzMa().log("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            zzatxVar.zzMa().log("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        zzatxVar.zzMa().log("Failed to turn on database write permission for owner");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzatx zzatxVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, Map<String, String> map) throws SQLiteException {
        if (zzatxVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        if (!zza(zzatxVar, sQLiteDatabase, str)) {
            sQLiteDatabase.execSQL(str2);
        }
        try {
            zza(zzatxVar, sQLiteDatabase, str, str3, map);
        } catch (SQLiteException e) {
            zzatxVar.zzLY().zzj("Failed to verify columns on table that was just created", str);
            throw e;
        }
    }

    static void zza(zzatx zzatxVar, SQLiteDatabase sQLiteDatabase, String str, String str2, Map<String, String> map) throws SQLiteException {
        String[] split;
        if (zzatxVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        Set<String> zzb2 = zzb(sQLiteDatabase, str);
        for (String str3 : str2.split(",")) {
            if (!zzb2.remove(str3)) {
                throw new SQLiteException(new StringBuilder(String.valueOf(str).length() + 35 + String.valueOf(str3).length()).append("Table ").append(str).append(" is missing required column: ").append(str3).toString());
            }
        }
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!zzb2.remove(entry.getKey())) {
                    sQLiteDatabase.execSQL(entry.getValue());
                }
            }
        }
        if (zzb2.isEmpty()) {
            return;
        }
        zzatxVar.zzMa().zze("Table has extra columns. table, columns", str, TextUtils.join(", ", zzb2));
    }

    private void zza(String str, zzauu.zza zzaVar) {
        boolean z = false;
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzw(zzaVar);
        com.google.android.gms.common.internal.zzac.zzw(zzaVar.zzbwm);
        com.google.android.gms.common.internal.zzac.zzw(zzaVar.zzbwl);
        if (zzaVar.zzbwk == null) {
            zzKl().zzMa().zzj("Audience with no ID. appId", zzatx.zzfE(str));
            return;
        }
        int intValue = zzaVar.zzbwk.intValue();
        for (zzauu.zzb zzbVar : zzaVar.zzbwm) {
            if (zzbVar.zzbwo == null) {
                zzKl().zzMa().zze("Event filter with no ID. Audience definition ignored. appId, audienceId", zzatx.zzfE(str), zzaVar.zzbwk);
                return;
            }
        }
        for (zzauu.zze zzeVar : zzaVar.zzbwl) {
            if (zzeVar.zzbwo == null) {
                zzKl().zzMa().zze("Property filter with no ID. Audience definition ignored. appId, audienceId", zzatx.zzfE(str), zzaVar.zzbwk);
                return;
            }
        }
        boolean z2 = true;
        zzauu.zzb[] zzbVarArr = zzaVar.zzbwm;
        int length = zzbVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (!zza(str, intValue, zzbVarArr[i])) {
                z2 = false;
                break;
            } else {
                i++;
            }
        }
        if (z2) {
            for (zzauu.zze zzeVar2 : zzaVar.zzbwl) {
                if (!zza(str, intValue, zzeVar2)) {
                    break;
                }
            }
        }
        z = z2;
        if (z) {
            return;
        }
        zzA(str, intValue);
    }

    static boolean zza(zzatx zzatxVar, SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3 = null;
        try {
            if (zzatxVar == null) {
                throw new IllegalArgumentException("Monitor must not be null");
            }
            try {
                cursor2 = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                try {
                    boolean moveToFirst = cursor2.moveToFirst();
                    if (cursor2 == null) {
                        return moveToFirst;
                    }
                    cursor2.close();
                    return moveToFirst;
                } catch (SQLiteException e) {
                    e = e;
                    zzatxVar.zzMa().zze("Error querying for table", str, e);
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return false;
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor2 = null;
            } catch (Throwable th) {
                th = th;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor3 = cursor;
        }
    }

    private boolean zza(String str, int i, zzauu.zzb zzbVar) {
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzw(zzbVar);
        if (TextUtils.isEmpty(zzbVar.zzbwp)) {
            zzKl().zzMa().zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzatx.zzfE(str), Integer.valueOf(i), String.valueOf(zzbVar.zzbwo));
            return false;
        }
        try {
            byte[] bArr = new byte[zzbVar.zzaeT()];
            zzbxm zzag = zzbxm.zzag(bArr);
            zzbVar.zza(zzag);
            zzag.zzaeG();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzbVar.zzbwo);
            contentValues.put("event_name", zzbVar.zzbwp);
            contentValues.put("data", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("event_filters", null, contentValues, 5) == -1) {
                    zzKl().zzLY().zzj("Failed to insert event filter (got -1). appId", zzatx.zzfE(str));
                }
                return true;
            } catch (SQLiteException e) {
                zzKl().zzLY().zze("Error storing event filter. appId", zzatx.zzfE(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzKl().zzLY().zze("Configuration loss. Failed to serialize event filter. appId", zzatx.zzfE(str), e2);
            return false;
        }
    }

    private boolean zza(String str, int i, zzauu.zze zzeVar) {
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzw(zzeVar);
        if (TextUtils.isEmpty(zzeVar.zzbwE)) {
            zzKl().zzMa().zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzatx.zzfE(str), Integer.valueOf(i), String.valueOf(zzeVar.zzbwo));
            return false;
        }
        try {
            byte[] bArr = new byte[zzeVar.zzaeT()];
            zzbxm zzag = zzbxm.zzag(bArr);
            zzeVar.zza(zzag);
            zzag.zzaeG();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzeVar.zzbwo);
            contentValues.put("property_name", zzeVar.zzbwE);
            contentValues.put("data", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                zzKl().zzLY().zzj("Failed to insert property filter (got -1). appId", zzatx.zzfE(str));
                return false;
            } catch (SQLiteException e) {
                zzKl().zzLY().zze("Error storing property filter. appId", zzatx.zzfE(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzKl().zzLY().zze("Configuration loss. Failed to serialize property filter. appId", zzatx.zzfE(str), e2);
            return false;
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
                zzKl().zzLY().zze("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    static Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        Cursor rawQuery = sQLiteDatabase.rawQuery(new StringBuilder(String.valueOf(str).length() + 22).append("SELECT * FROM ").append(str).append(" LIMIT 0").toString(), null);
        try {
            Collections.addAll(hashSet, rawQuery.getColumnNames());
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    public void beginTransaction() {
        zzob();
        getWritableDatabase().beginTransaction();
    }

    public void endTransaction() {
        zzob();
        getWritableDatabase().endTransaction();
    }

    SQLiteDatabase getWritableDatabase() {
        zzmR();
        try {
            return this.zzbrl.getWritableDatabase();
        } catch (SQLiteException e) {
            zzKl().zzMa().zzj("Error opening database", e);
            throw e;
        }
    }

    public void setTransactionSuccessful() {
        zzob();
        getWritableDatabase().setTransactionSuccessful();
    }

    void zzA(String str, int i) {
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(i)});
        writableDatabase.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(i)});
    }

    public void zzJ(List<Long> list) {
        com.google.android.gms.common.internal.zzac.zzw(list);
        zzmR();
        zzob();
        StringBuilder sb = new StringBuilder("rowid in (");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                break;
            }
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append(list.get(i2).longValue());
            i = i2 + 1;
        }
        sb.append(")");
        int delete = getWritableDatabase().delete("raw_events", sb.toString(), null);
        if (delete != list.size()) {
            zzKl().zzLY().zze("Deleted fewer rows from raw events table than expected", Integer.valueOf(delete), Integer.valueOf(list.size()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String zzLD() {
        Cursor cursor;
        Throwable th;
        String str = null;
        try {
            try {
                cursor = getWritableDatabase().rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
                try {
                    if (cursor.moveToFirst()) {
                        str = cursor.getString(0);
                        if (cursor != null) {
                            cursor.close();
                        }
                    } else if (cursor != null) {
                        cursor.close();
                    }
                } catch (SQLiteException e) {
                    e = e;
                    zzKl().zzLY().zzj("Database error getting next bundle app id", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return str;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            cursor = null;
            th = th3;
            if (cursor != null) {
            }
            throw th;
        }
        return str;
    }

    public boolean zzLE() {
        return zzb("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzLF() {
        zzmR();
        zzob();
        if (!zzLM()) {
            return;
        }
        long j = zzKm().zzbtc.get();
        long elapsedRealtime = zznR().elapsedRealtime();
        if (Math.abs(elapsedRealtime - j) <= zzKn().zzLk()) {
            return;
        }
        zzKm().zzbtc.set(elapsedRealtime);
        zzLG();
    }

    void zzLG() {
        int delete;
        zzmR();
        zzob();
        if (zzLM() && (delete = getWritableDatabase().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zznR().currentTimeMillis()), String.valueOf(zzKn().zzLj())})) > 0) {
            zzKl().zzMe().zzj("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
        }
    }

    public long zzLH() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    public long zzLI() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public boolean zzLJ() {
        return zzb("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public boolean zzLK() {
        return zzb("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public long zzLL() {
        long j = -1;
        Cursor cursor = null;
        try {
            try {
                cursor = getWritableDatabase().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (cursor.moveToFirst()) {
                    j = cursor.getLong(0);
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            } catch (SQLiteException e) {
                zzKl().zzLY().zzj("Error querying raw events", e);
                if (cursor != null) {
                    cursor.close();
                }
            }
            return j;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzatn zzQ(String str, String str2) {
        Cursor cursor;
        Cursor query;
        Cursor cursor2 = null;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        zzmR();
        zzob();
        try {
            query = getWritableDatabase().query("events", new String[]{"lifetime_count", "current_bundle_count", "last_fire_timestamp"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
        } catch (SQLiteException e) {
            e = e;
            cursor = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (!query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            zzatn zzatnVar = new zzatn(str, str2, query.getLong(0), query.getLong(1), query.getLong(2));
            if (query.moveToNext()) {
                zzKl().zzLY().zzj("Got multiple records for event aggregates, expected one. appId", zzatx.zzfE(str));
            }
            if (query == null) {
                return zzatnVar;
            }
            query.close();
            return zzatnVar;
        } catch (SQLiteException e2) {
            e = e2;
            cursor = query;
            try {
                zzKl().zzLY().zzd("Error querying events. appId", zzatx.zzfE(str), str2, e);
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor2 = query;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public void zzR(String str, String str2) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        zzmR();
        zzob();
        try {
            zzKl().zzMe().zzj("Deleted user attribute rows", Integer.valueOf(getWritableDatabase().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            zzKl().zzLY().zzd("Error deleting user attribute. appId", zzatx.zzfE(str), str2, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzaus zzS(String str, String str2) {
        Cursor cursor;
        Cursor query;
        Cursor cursor2 = null;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        zzmR();
        zzob();
        try {
            query = getWritableDatabase().query("user_attributes", new String[]{"set_timestamp", "value", a.b.ORIGIN}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
        } catch (SQLiteException e) {
            e = e;
            cursor = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (!query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            zzaus zzausVar = new zzaus(str, query.getString(2), str2, query.getLong(0), zzb(query, 1));
            if (query.moveToNext()) {
                zzKl().zzLY().zzj("Got multiple records for user property, expected one. appId", zzatx.zzfE(str));
            }
            if (query == null) {
                return zzausVar;
            }
            query.close();
            return zzausVar;
        } catch (SQLiteException e2) {
            e = e2;
            cursor = query;
            try {
                zzKl().zzLY().zzd("Error querying user property. appId", zzatx.zzfE(str), str2, e);
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor2 = query;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x013d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzatg zzT(String str, String str2) {
        Cursor cursor;
        Cursor cursor2;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        zzmR();
        zzob();
        try {
            cursor = getWritableDatabase().query("conditional_properties", new String[]{a.b.ORIGIN, "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                if (!cursor.moveToFirst()) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
                String string = cursor.getString(0);
                Object zzb2 = zzb(cursor, 1);
                zzatg zzatgVar = new zzatg(str, string, new zzauq(str2, cursor.getLong(8), zzb2, string), cursor.getLong(6), cursor.getInt(2) != 0, cursor.getString(3), (zzatq) zzKh().zzb(cursor.getBlob(5), zzatq.CREATOR), cursor.getLong(4), (zzatq) zzKh().zzb(cursor.getBlob(7), zzatq.CREATOR), cursor.getLong(9), (zzatq) zzKh().zzb(cursor.getBlob(10), zzatq.CREATOR));
                if (cursor.moveToNext()) {
                    zzKl().zzLY().zze("Got multiple records for conditional property, expected one", zzatx.zzfE(str), str2);
                }
                if (cursor == null) {
                    return zzatgVar;
                }
                cursor.close();
                return zzatgVar;
            } catch (SQLiteException e) {
                e = e;
                cursor2 = cursor;
                try {
                    zzKl().zzLY().zzd("Error querying conditional property", zzatx.zzfE(str), str2, e);
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursor2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public int zzU(String str, String str2) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        zzmR();
        zzob();
        try {
            return getWritableDatabase().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzKl().zzLY().zzd("Error deleting conditional property", zzatx.zzfE(str), str2, e);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Map<Integer, List<zzauu.zzb>> zzV(String str, String str2) {
        Cursor cursor;
        Cursor cursor2 = null;
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        android.support.v4.f.a aVar = new android.support.v4.f.a();
        try {
            try {
                cursor = getWritableDatabase().query("event_filters", new String[]{"audience_id", "data"}, "app_id=? AND event_name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursor.moveToFirst()) {
                        Map<Integer, List<zzauu.zzb>> emptyMap = Collections.emptyMap();
                        if (cursor == null) {
                            return emptyMap;
                        }
                        cursor.close();
                        return emptyMap;
                    }
                    do {
                        zzbxl zzaf = zzbxl.zzaf(cursor.getBlob(1));
                        zzauu.zzb zzbVar = new zzauu.zzb();
                        try {
                            zzbVar.zzb(zzaf);
                            int i = cursor.getInt(0);
                            List list = (List) aVar.get(Integer.valueOf(i));
                            if (list == null) {
                                list = new ArrayList();
                                aVar.put(Integer.valueOf(i), list);
                            }
                            list.add(zzbVar);
                        } catch (IOException e) {
                            zzKl().zzLY().zze("Failed to merge filter. appId", zzatx.zzfE(str), e);
                        }
                    } while (cursor.moveToNext());
                    if (cursor != null) {
                        cursor.close();
                    }
                    return aVar;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzKl().zzLY().zze("Database error querying filters. appId", zzatx.zzfE(str), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Map<Integer, List<zzauu.zze>> zzW(String str, String str2) {
        Cursor cursor;
        Cursor cursor2 = null;
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        android.support.v4.f.a aVar = new android.support.v4.f.a();
        try {
            try {
                cursor = getWritableDatabase().query("property_filters", new String[]{"audience_id", "data"}, "app_id=? AND property_name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursor.moveToFirst()) {
                        Map<Integer, List<zzauu.zze>> emptyMap = Collections.emptyMap();
                        if (cursor == null) {
                            return emptyMap;
                        }
                        cursor.close();
                        return emptyMap;
                    }
                    do {
                        zzbxl zzaf = zzbxl.zzaf(cursor.getBlob(1));
                        zzauu.zze zzeVar = new zzauu.zze();
                        try {
                            zzeVar.zzb(zzaf);
                            int i = cursor.getInt(0);
                            List list = (List) aVar.get(Integer.valueOf(i));
                            if (list == null) {
                                list = new ArrayList();
                                aVar.put(Integer.valueOf(i), list);
                            }
                            list.add(zzeVar);
                        } catch (IOException e) {
                            zzKl().zzLY().zze("Failed to merge filter", zzatx.zzfE(str), e);
                        }
                    } while (cursor.moveToNext());
                    if (cursor != null) {
                        cursor.close();
                    }
                    return aVar;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzKl().zzLY().zze("Database error querying filters. appId", zzatx.zzfE(str), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
    }

    protected long zzX(String str, String str2) {
        SQLiteException e;
        long j;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        zzmR();
        zzob();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            try {
                j = zza(new StringBuilder(String.valueOf(str2).length() + 32).append("select ").append(str2).append(" from app2 where app_id=?").toString(), new String[]{str}, -1L);
                if (j == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put("first_open_count", (Integer) 0);
                    contentValues.put("previous_install_count", (Integer) 0);
                    if (writableDatabase.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        zzKl().zzLY().zze("Failed to insert column (got -1). appId", zzatx.zzfE(str), str2);
                        return -1L;
                    }
                    j = 0;
                }
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLiteException e2) {
            e = e2;
            j = 0;
        }
        try {
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("app_id", str);
            contentValues2.put(str2, Long.valueOf(1 + j));
            if (writableDatabase.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                zzKl().zzLY().zze("Failed to update column (got 0). appId", zzatx.zzfE(str), str2);
                writableDatabase.endTransaction();
                j = -1;
            } else {
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            }
            return j;
        } catch (SQLiteException e3) {
            e = e3;
            zzKl().zzLY().zzd("Error inserting column. appId", zzatx.zzfE(str), str2, e);
            return j;
        }
    }

    public long zza(zzauw.zze zzeVar) throws IOException {
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(zzeVar);
        com.google.android.gms.common.internal.zzac.zzdr(zzeVar.zzaS);
        try {
            byte[] bArr = new byte[zzeVar.zzaeT()];
            zzbxm zzag = zzbxm.zzag(bArr);
            zzeVar.zza(zzag);
            zzag.zzaeG();
            long zzz = zzKh().zzz(bArr);
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzeVar.zzaS);
            contentValues.put("metadata_fingerprint", Long.valueOf(zzz));
            contentValues.put("metadata", bArr);
            try {
                getWritableDatabase().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                return zzz;
            } catch (SQLiteException e) {
                zzKl().zzLY().zze("Error storing raw event metadata. appId", zzatx.zzfE(zzeVar.zzaS), e);
                throw e;
            }
        } catch (IOException e2) {
            zzKl().zzLY().zze("Data loss. Failed to serialize event metadata. appId", zzatx.zzfE(zzeVar.zzaS), e2);
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zza zza(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Cursor cursor;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        String[] strArr = {str};
        zza zzaVar = new zza();
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                cursor = writableDatabase.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                try {
                    if (!cursor.moveToFirst()) {
                        zzKl().zzMa().zzj("Not updating daily counts, app is not known. appId", zzatx.zzfE(str));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return zzaVar;
                    }
                    if (cursor.getLong(0) == j) {
                        zzaVar.zzbro = cursor.getLong(1);
                        zzaVar.zzbrn = cursor.getLong(2);
                        zzaVar.zzbrp = cursor.getLong(3);
                        zzaVar.zzbrq = cursor.getLong(4);
                        zzaVar.zzbrr = cursor.getLong(5);
                    }
                    if (z) {
                        zzaVar.zzbro++;
                    }
                    if (z2) {
                        zzaVar.zzbrn++;
                    }
                    if (z3) {
                        zzaVar.zzbrp++;
                    }
                    if (z4) {
                        zzaVar.zzbrq++;
                    }
                    if (z5) {
                        zzaVar.zzbrr++;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("day", Long.valueOf(j));
                    contentValues.put("daily_public_events_count", Long.valueOf(zzaVar.zzbrn));
                    contentValues.put("daily_events_count", Long.valueOf(zzaVar.zzbro));
                    contentValues.put("daily_conversions_count", Long.valueOf(zzaVar.zzbrp));
                    contentValues.put("daily_error_events_count", Long.valueOf(zzaVar.zzbrq));
                    contentValues.put("daily_realtime_events_count", Long.valueOf(zzaVar.zzbrr));
                    writableDatabase.update("apps", contentValues, "app_id=?", strArr);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return zzaVar;
                } catch (SQLiteException e) {
                    e = e;
                    zzKl().zzLY().zze("Error updating daily counts. appId", zzatx.zzfE(str), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return zzaVar;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
    }

    void zza(ContentValues contentValues, String str, Object obj) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzw(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else if (!(obj instanceof Double)) {
            throw new IllegalArgumentException("Invalid value type");
        } else {
            contentValues.put(str, (Double) obj);
        }
    }

    public void zza(zzatc zzatcVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzatcVar);
        zzmR();
        zzob();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzatcVar.zzke());
        contentValues.put("app_instance_id", zzatcVar.getAppInstanceId());
        contentValues.put("gmp_app_id", zzatcVar.getGmpAppId());
        contentValues.put("resettable_device_id_hash", zzatcVar.zzKp());
        contentValues.put("last_bundle_index", Long.valueOf(zzatcVar.zzKy()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzatcVar.zzKr()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzatcVar.zzKs()));
        contentValues.put("app_version", zzatcVar.zzmZ());
        contentValues.put("app_store", zzatcVar.zzKu());
        contentValues.put("gmp_version", Long.valueOf(zzatcVar.zzKv()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzatcVar.zzKw()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzatcVar.zzKx()));
        contentValues.put("day", Long.valueOf(zzatcVar.zzKC()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzatcVar.zzKD()));
        contentValues.put("daily_events_count", Long.valueOf(zzatcVar.zzKE()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzatcVar.zzKF()));
        contentValues.put("config_fetched_time", Long.valueOf(zzatcVar.zzKz()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzatcVar.zzKA()));
        contentValues.put("app_version_int", Long.valueOf(zzatcVar.zzKt()));
        contentValues.put("firebase_instance_id", zzatcVar.zzKq());
        contentValues.put("daily_error_events_count", Long.valueOf(zzatcVar.zzKH()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzatcVar.zzKG()));
        contentValues.put("health_monitor_sample", zzatcVar.zzKI());
        contentValues.put("android_id", Long.valueOf(zzatcVar.zzuW()));
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase.update("apps", contentValues, "app_id = ?", new String[]{zzatcVar.zzke()}) != 0 || writableDatabase.insertWithOnConflict("apps", null, contentValues, 5) != -1) {
                return;
            }
            zzKl().zzLY().zzj("Failed to insert/update app (got -1). appId", zzatx.zzfE(zzatcVar.zzke()));
        } catch (SQLiteException e) {
            zzKl().zzLY().zze("Error storing app. appId", zzatx.zzfE(zzatcVar.zzke()), e);
        }
    }

    public void zza(zzatn zzatnVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzatnVar);
        zzmR();
        zzob();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzatnVar.mAppId);
        contentValues.put("name", zzatnVar.mName);
        contentValues.put("lifetime_count", Long.valueOf(zzatnVar.zzbrA));
        contentValues.put("current_bundle_count", Long.valueOf(zzatnVar.zzbrB));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzatnVar.zzbrC));
        try {
            if (getWritableDatabase().insertWithOnConflict("events", null, contentValues, 5) != -1) {
                return;
            }
            zzKl().zzLY().zzj("Failed to insert/update event aggregates (got -1). appId", zzatx.zzfE(zzatnVar.mAppId));
        } catch (SQLiteException e) {
            zzKl().zzLY().zze("Error storing event aggregates. appId", zzatx.zzfE(zzatnVar.mAppId), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(String str, int i, zzauw.zzf zzfVar) {
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzw(zzfVar);
        try {
            byte[] bArr = new byte[zzfVar.zzaeT()];
            zzbxm zzag = zzbxm.zzag(bArr);
            zzfVar.zza(zzag);
            zzag.zzaeG();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("current_results", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("audience_filter_values", null, contentValues, 5) != -1) {
                    return;
                }
                zzKl().zzLY().zzj("Failed to insert filter results (got -1). appId", zzatx.zzfE(str));
            } catch (SQLiteException e) {
                zzKl().zzLY().zze("Error storing filter results. appId", zzatx.zzfE(str), e);
            }
        } catch (IOException e2) {
            zzKl().zzLY().zze("Configuration loss. Failed to serialize filter results. appId", zzatx.zzfE(str), e2);
        }
    }

    public void zza(String str, long j, long j2, zzb zzbVar) {
        SQLiteDatabase writableDatabase;
        String str2;
        Cursor cursor;
        String str3;
        String[] strArr;
        com.google.android.gms.common.internal.zzac.zzw(zzbVar);
        zzmR();
        zzob();
        Cursor cursor2 = null;
        try {
            try {
                writableDatabase = getWritableDatabase();
                if (TextUtils.isEmpty(str)) {
                    String[] strArr2 = j2 != -1 ? new String[]{String.valueOf(j2), String.valueOf(j)} : new String[]{String.valueOf(j)};
                    String str4 = j2 != -1 ? "rowid <= ? and " : "";
                    Cursor rawQuery = writableDatabase.rawQuery(new StringBuilder(String.valueOf(str4).length() + 148).append("select app_id, metadata_fingerprint from raw_events where ").append(str4).append("app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;").toString(), strArr2);
                    if (!rawQuery.moveToFirst()) {
                        if (rawQuery == null) {
                            return;
                        }
                        rawQuery.close();
                        return;
                    }
                    str = rawQuery.getString(0);
                    String string = rawQuery.getString(1);
                    rawQuery.close();
                    str2 = string;
                    cursor = rawQuery;
                } else {
                    String[] strArr3 = j2 != -1 ? new String[]{str, String.valueOf(j2)} : new String[]{str};
                    String str5 = j2 != -1 ? " and rowid <= ?" : "";
                    Cursor rawQuery2 = writableDatabase.rawQuery(new StringBuilder(String.valueOf(str5).length() + 84).append("select metadata_fingerprint from raw_events where app_id = ?").append(str5).append(" order by rowid limit 1;").toString(), strArr3);
                    if (!rawQuery2.moveToFirst()) {
                        if (rawQuery2 == null) {
                            return;
                        }
                        rawQuery2.close();
                        return;
                    }
                    String string2 = rawQuery2.getString(0);
                    rawQuery2.close();
                    str2 = string2;
                    cursor = rawQuery2;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e) {
            e = e;
        }
        try {
            cursor = writableDatabase.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str, str2}, null, null, "rowid", "2");
            if (!cursor.moveToFirst()) {
                zzKl().zzLY().zzj("Raw event metadata record is missing. appId", zzatx.zzfE(str));
                if (cursor == null) {
                    return;
                }
                cursor.close();
                return;
            }
            zzbxl zzaf = zzbxl.zzaf(cursor.getBlob(0));
            zzauw.zze zzeVar = new zzauw.zze();
            try {
                zzeVar.zzb(zzaf);
                if (cursor.moveToNext()) {
                    zzKl().zzMa().zzj("Get multiple raw event metadata records, expected one. appId", zzatx.zzfE(str));
                }
                cursor.close();
                zzbVar.zzb(zzeVar);
                if (j2 != -1) {
                    str3 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                    strArr = new String[]{str, str2, String.valueOf(j2)};
                } else {
                    str3 = "app_id = ? and metadata_fingerprint = ?";
                    strArr = new String[]{str, str2};
                }
                Cursor query = writableDatabase.query("raw_events", new String[]{"rowid", "name", "timestamp", "data"}, str3, strArr, null, null, "rowid", null);
                if (!query.moveToFirst()) {
                    zzKl().zzMa().zzj("Raw event data disappeared while in transaction. appId", zzatx.zzfE(str));
                    if (query == null) {
                        return;
                    }
                    query.close();
                    return;
                }
                do {
                    long j3 = query.getLong(0);
                    zzbxl zzaf2 = zzbxl.zzaf(query.getBlob(3));
                    zzauw.zzb zzbVar2 = new zzauw.zzb();
                    try {
                        zzbVar2.zzb(zzaf2);
                        zzbVar2.name = query.getString(1);
                        zzbVar2.zzbwZ = Long.valueOf(query.getLong(2));
                        if (!zzbVar.zza(j3, zzbVar2)) {
                            if (query == null) {
                                return;
                            }
                            query.close();
                            return;
                        }
                    } catch (IOException e2) {
                        zzKl().zzLY().zze("Data loss. Failed to merge raw event. appId", zzatx.zzfE(str), e2);
                    }
                } while (query.moveToNext());
                if (query == null) {
                    return;
                }
                query.close();
            } catch (IOException e3) {
                zzKl().zzLY().zze("Data loss. Failed to merge raw event metadata. appId", zzatx.zzfE(str), e3);
                if (cursor == null) {
                    return;
                }
                cursor.close();
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursor2 = cursor;
            zzKl().zzLY().zze("Data loss. Error selecting raw event. appId", zzatx.zzfE(str), e);
            if (cursor2 == null) {
                return;
            }
            cursor2.close();
        } catch (Throwable th2) {
            th = th2;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    public boolean zza(zzatg zzatgVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar);
        zzmR();
        zzob();
        if (zzS(zzatgVar.packageName, zzatgVar.zzbqW.name) == null) {
            long zzb2 = zzb("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzatgVar.packageName});
            zzKn().zzKZ();
            if (zzb2 >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzatgVar.packageName);
        contentValues.put(a.b.ORIGIN, zzatgVar.zzbqV);
        contentValues.put("name", zzatgVar.zzbqW.name);
        zza(contentValues, "value", zzatgVar.zzbqW.getValue());
        contentValues.put("active", Boolean.valueOf(zzatgVar.zzbqY));
        contentValues.put("trigger_event_name", zzatgVar.zzbqZ);
        contentValues.put("trigger_timeout", Long.valueOf(zzatgVar.zzbrb));
        contentValues.put("timed_out_event", zzKh().zza(zzatgVar.zzbra));
        contentValues.put("creation_timestamp", Long.valueOf(zzatgVar.zzbqX));
        contentValues.put("triggered_event", zzKh().zza(zzatgVar.zzbrc));
        contentValues.put("triggered_timestamp", Long.valueOf(zzatgVar.zzbqW.zzbwc));
        contentValues.put("time_to_live", Long.valueOf(zzatgVar.zzbrd));
        contentValues.put("expired_event", zzKh().zza(zzatgVar.zzbre));
        try {
            if (getWritableDatabase().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzKl().zzLY().zzj("Failed to insert/update conditional user property (got -1)", zzatx.zzfE(zzatgVar.packageName));
            }
        } catch (SQLiteException e) {
            zzKl().zzLY().zze("Error storing conditional user property", zzatx.zzfE(zzatgVar.packageName), e);
        }
        return true;
    }

    public boolean zza(zzatm zzatmVar, long j, boolean z) {
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(zzatmVar);
        com.google.android.gms.common.internal.zzac.zzdr(zzatmVar.mAppId);
        zzauw.zzb zzbVar = new zzauw.zzb();
        zzbVar.zzbxa = Long.valueOf(zzatmVar.zzbry);
        zzbVar.zzbwY = new zzauw.zzc[zzatmVar.zzbrz.size()];
        Iterator<String> it = zzatmVar.zzbrz.iterator();
        int i = 0;
        while (it.hasNext()) {
            String next = it.next();
            zzauw.zzc zzcVar = new zzauw.zzc();
            zzbVar.zzbwY[i] = zzcVar;
            zzcVar.name = next;
            zzKh().zza(zzcVar, zzatmVar.zzbrz.get(next));
            i++;
        }
        try {
            byte[] bArr = new byte[zzbVar.zzaeT()];
            zzbxm zzag = zzbxm.zzag(bArr);
            zzbVar.zza(zzag);
            zzag.zzaeG();
            zzKl().zzMe().zze("Saving event, name, data size", zzatmVar.mName, Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzatmVar.mAppId);
            contentValues.put("name", zzatmVar.mName);
            contentValues.put("timestamp", Long.valueOf(zzatmVar.zzaxb));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("data", bArr);
            contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
            try {
                if (getWritableDatabase().insert("raw_events", null, contentValues) != -1) {
                    return true;
                }
                zzKl().zzLY().zzj("Failed to insert raw event (got -1). appId", zzatx.zzfE(zzatmVar.mAppId));
                return false;
            } catch (SQLiteException e) {
                zzKl().zzLY().zze("Error storing raw event. appId", zzatx.zzfE(zzatmVar.mAppId), e);
                return false;
            }
        } catch (IOException e2) {
            zzKl().zzLY().zze("Data loss. Failed to serialize event params/data. appId", zzatx.zzfE(zzatmVar.mAppId), e2);
            return false;
        }
    }

    public boolean zza(zzaus zzausVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzausVar);
        zzmR();
        zzob();
        if (zzS(zzausVar.mAppId, zzausVar.mName) == null) {
            if (zzaut.zzfT(zzausVar.mName)) {
                long zzb2 = zzb("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzausVar.mAppId});
                zzKn().zzKW();
                if (zzb2 >= 25) {
                    return false;
                }
            } else {
                long zzb3 = zzb("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzausVar.mAppId, zzausVar.mOrigin});
                zzKn().zzKY();
                if (zzb3 >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzausVar.mAppId);
        contentValues.put(a.b.ORIGIN, zzausVar.mOrigin);
        contentValues.put("name", zzausVar.mName);
        contentValues.put("set_timestamp", Long.valueOf(zzausVar.zzbwg));
        zza(contentValues, "value", zzausVar.mValue);
        try {
            if (getWritableDatabase().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                zzKl().zzLY().zzj("Failed to insert/update user property (got -1). appId", zzatx.zzfE(zzausVar.mAppId));
            }
        } catch (SQLiteException e) {
            zzKl().zzLY().zze("Error storing user property. appId", zzatx.zzfE(zzausVar.mAppId), e);
        }
        return true;
    }

    public boolean zza(zzauw.zze zzeVar, boolean z) {
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(zzeVar);
        com.google.android.gms.common.internal.zzac.zzdr(zzeVar.zzaS);
        com.google.android.gms.common.internal.zzac.zzw(zzeVar.zzbxk);
        zzLF();
        long currentTimeMillis = zznR().currentTimeMillis();
        if (zzeVar.zzbxk.longValue() < currentTimeMillis - zzKn().zzLj() || zzeVar.zzbxk.longValue() > zzKn().zzLj() + currentTimeMillis) {
            zzKl().zzMa().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzatx.zzfE(zzeVar.zzaS), Long.valueOf(currentTimeMillis), zzeVar.zzbxk);
        }
        try {
            byte[] bArr = new byte[zzeVar.zzaeT()];
            zzbxm zzag = zzbxm.zzag(bArr);
            zzeVar.zza(zzag);
            zzag.zzaeG();
            byte[] zzk = zzKh().zzk(bArr);
            zzKl().zzMe().zzj("Saving bundle, size", Integer.valueOf(zzk.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzeVar.zzaS);
            contentValues.put("bundle_end_timestamp", zzeVar.zzbxk);
            contentValues.put("data", zzk);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            try {
                if (getWritableDatabase().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzKl().zzLY().zzj("Failed to insert bundle (got -1). appId", zzatx.zzfE(zzeVar.zzaS));
                return false;
            } catch (SQLiteException e) {
                zzKl().zzLY().zze("Error storing bundle. appId", zzatx.zzfE(zzeVar.zzaS), e);
                return false;
            }
        } catch (IOException e2) {
            zzKl().zzLY().zze("Data loss. Failed to serialize bundle. appId", zzatx.zzfE(zzeVar.zzaS), e2);
            return false;
        }
    }

    public void zzan(long j) {
        zzmR();
        zzob();
        try {
            if (getWritableDatabase().delete("queue", "rowid=?", new String[]{String.valueOf(j)}) == 1) {
                return;
            }
            throw new SQLiteException("Deleted fewer rows from queue than expected");
        } catch (SQLiteException e) {
            zzKl().zzLY().zzj("Failed to delete a bundle in a queue table", e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String zzao(long j) {
        Cursor cursor;
        Throwable th;
        String str = null;
        zzmR();
        zzob();
        try {
            cursor = getWritableDatabase().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf(j)});
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        zzKl().zzMe().log("No expired configs for apps with pending events");
                        if (cursor != null) {
                            cursor.close();
                        }
                    } else {
                        str = cursor.getString(0);
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                } catch (SQLiteException e) {
                    e = e;
                    zzKl().zzLY().zzj("Error selecting expired configs", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return str;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            cursor = null;
            th = th3;
            if (cursor != null) {
            }
            throw th;
        }
        return str;
    }

    Object zzb(Cursor cursor, int i) {
        int zza2 = zza(cursor, i);
        switch (zza2) {
            case 0:
                zzKl().zzLY().log("Loaded invalid null value from database");
                return null;
            case 1:
                return Long.valueOf(cursor.getLong(i));
            case 2:
                return Double.valueOf(cursor.getDouble(i));
            case 3:
                return cursor.getString(i);
            case 4:
                zzKl().zzLY().log("Loaded invalid blob type value, ignoring it");
                return null;
            default:
                zzKl().zzLY().zzj("Loaded invalid unknown value type, ignoring it", Integer.valueOf(zza2));
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(String str, zzauu.zza[] zzaVarArr) {
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzw(zzaVarArr);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            zzfx(str);
            for (zzauu.zza zzaVar : zzaVarArr) {
                zza(str, zzaVar);
            }
            ArrayList arrayList = new ArrayList();
            for (zzauu.zza zzaVar2 : zzaVarArr) {
                arrayList.add(zzaVar2.zzbwk);
            }
            zzd(str, arrayList);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public List<zzatg> zzc(String str, String str2, long j) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        zzmR();
        zzob();
        if (j < 0) {
            zzKl().zzMa().zzd("Invalid time querying triggered conditional properties", zzatx.zzfE(str), str2, Long.valueOf(j));
            return Collections.emptyList();
        }
        return zzc("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0091, code lost:
        zzKl().zzLY().zzj("Read more than the max allowed conditional properties, ignoring extra", java.lang.Integer.valueOf(zzKn().zzKZ()));
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<zzatg> zzc(String str, String[] strArr) {
        Cursor cursor;
        Cursor cursor2;
        zzmR();
        zzob();
        ArrayList arrayList = new ArrayList();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr2 = {"app_id", a.b.ORIGIN, "name", "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"};
            zzKn().zzKZ();
            cursor = writableDatabase.query("conditional_properties", strArr2, str, strArr, null, null, "rowid", String.valueOf(1001));
            try {
                if (!cursor.moveToFirst()) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return arrayList;
                }
                while (true) {
                    if (arrayList.size() < zzKn().zzKZ()) {
                        String string = cursor.getString(0);
                        String string2 = cursor.getString(1);
                        String string3 = cursor.getString(2);
                        Object zzb2 = zzb(cursor, 3);
                        arrayList.add(new zzatg(string, string2, new zzauq(string3, cursor.getLong(10), zzb2, string2), cursor.getLong(8), cursor.getInt(4) != 0, cursor.getString(5), (zzatq) zzKh().zzb(cursor.getBlob(7), zzatq.CREATOR), cursor.getLong(6), (zzatq) zzKh().zzb(cursor.getBlob(9), zzatq.CREATOR), cursor.getLong(11), (zzatq) zzKh().zzb(cursor.getBlob(12), zzatq.CREATOR)));
                        if (!cursor.moveToNext()) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                return arrayList;
            } catch (SQLiteException e) {
                e = e;
                cursor2 = cursor;
                try {
                    zzKl().zzLY().zzj("Error querying conditional user property value", e);
                    List<zzatg> emptyList = Collections.emptyList();
                    if (cursor2 == null) {
                        return emptyList;
                    }
                    cursor2.close();
                    return emptyList;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursor2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public void zzd(String str, byte[] bArr) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        try {
            if (getWritableDatabase().update("apps", contentValues, "app_id = ?", new String[]{str}) != 0) {
                return;
            }
            zzKl().zzLY().zzj("Failed to update remote config (got 0). appId", zzatx.zzfE(str));
        } catch (SQLiteException e) {
            zzKl().zzLY().zze("Error storing remote config. appId", zzatx.zzfE(str), e);
        }
    }

    boolean zzd(String str, List<Integer> list) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzob();
        zzmR();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            long zzb2 = zzb("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int zzfo = zzKn().zzfo(str);
            if (zzb2 <= zzfo) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            if (list != null) {
                for (int i = 0; i < list.size(); i++) {
                    Integer num = list.get(i);
                    if (num == null || !(num instanceof Integer)) {
                        return false;
                    }
                    arrayList.add(Integer.toString(num.intValue()));
                }
            }
            String valueOf = String.valueOf(TextUtils.join(",", arrayList));
            String sb = new StringBuilder(String.valueOf(valueOf).length() + 2).append("(").append(valueOf).append(")").toString();
            return writableDatabase.delete("audience_filter_values", new StringBuilder(String.valueOf(sb).length() + 140).append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ").append(sb).append(" order by rowid desc limit -1 offset ?)").toString(), new String[]{str, Integer.toString(zzfo)}) > 0;
        } catch (SQLiteException e) {
            zzKl().zzLY().zze("Database error querying filters. appId", zzatx.zzfE(str), e);
            return false;
        }
    }

    public long zzfA(String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        return zzX(str, "first_open_count");
    }

    public void zzfB(String str) {
        try {
            getWritableDatabase().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{str, str});
        } catch (SQLiteException e) {
            zzKl().zzLY().zze("Failed to remove unused event metadata. appId", zzatx.zzfE(str), e);
        }
    }

    public long zzfC(String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<zzaus> zzft(String str) {
        Cursor cursor;
        Cursor cursor2 = null;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        ArrayList arrayList = new ArrayList();
        try {
            Cursor query = getWritableDatabase().query("user_attributes", new String[]{"name", a.b.ORIGIN, "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(zzKn().zzKX()));
            try {
                if (!query.moveToFirst()) {
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                }
                do {
                    String string = query.getString(0);
                    String string2 = query.getString(1);
                    if (string2 == null) {
                        string2 = "";
                    }
                    long j = query.getLong(2);
                    Object zzb2 = zzb(query, 3);
                    if (zzb2 == null) {
                        zzKl().zzLY().zzj("Read invalid user property value, ignoring it. appId", zzatx.zzfE(str));
                    } else {
                        arrayList.add(new zzaus(str, string2, string, j, zzb2));
                    }
                } while (query.moveToNext());
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } catch (SQLiteException e) {
                e = e;
                cursor = query;
                try {
                    zzKl().zzLY().zze("Error querying user properties. appId", zzatx.zzfE(str), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = query;
                if (cursor2 != null) {
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x01eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzatc zzfu(String str) {
        Cursor cursor;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        try {
            cursor = getWritableDatabase().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                    zzatc zzatcVar = new zzatc(this.zzbqc, str);
                    zzatcVar.zzfd(cursor.getString(0));
                    zzatcVar.zzfe(cursor.getString(1));
                    zzatcVar.zzff(cursor.getString(2));
                    zzatcVar.zzad(cursor.getLong(3));
                    zzatcVar.zzY(cursor.getLong(4));
                    zzatcVar.zzZ(cursor.getLong(5));
                    zzatcVar.setAppVersion(cursor.getString(6));
                    zzatcVar.zzfh(cursor.getString(7));
                    zzatcVar.zzab(cursor.getLong(8));
                    zzatcVar.zzac(cursor.getLong(9));
                    zzatcVar.setMeasurementEnabled((cursor.isNull(10) ? 1 : cursor.getInt(10)) != 0);
                    zzatcVar.zzag(cursor.getLong(11));
                    zzatcVar.zzah(cursor.getLong(12));
                    zzatcVar.zzai(cursor.getLong(13));
                    zzatcVar.zzaj(cursor.getLong(14));
                    zzatcVar.zzae(cursor.getLong(15));
                    zzatcVar.zzaf(cursor.getLong(16));
                    zzatcVar.zzaa(cursor.isNull(17) ? -2147483648L : cursor.getInt(17));
                    zzatcVar.zzfg(cursor.getString(18));
                    zzatcVar.zzal(cursor.getLong(19));
                    zzatcVar.zzak(cursor.getLong(20));
                    zzatcVar.zzfi(cursor.getString(21));
                    zzatcVar.zzam(cursor.isNull(22) ? 0L : cursor.getLong(22));
                    zzatcVar.zzKo();
                    if (cursor.moveToNext()) {
                        zzKl().zzLY().zzj("Got multiple records for app, expected one. appId", zzatx.zzfE(str));
                    }
                    if (cursor == null) {
                        return zzatcVar;
                    }
                    cursor.close();
                    return zzatcVar;
                } catch (SQLiteException e) {
                    e = e;
                    zzKl().zzLY().zze("Error querying app. appId", zzatx.zzfE(str), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
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
    }

    public long zzfv(String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        try {
            return getWritableDatabase().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(zzKn().zzfs(str))});
        } catch (SQLiteException e) {
            zzKl().zzLY().zze("Error deleting over the limit events. appId", zzatx.zzfE(str), e);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] zzfw(String str) {
        Cursor cursor;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        try {
            cursor = getWritableDatabase().query("apps", new String[]{"remote_config"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                    byte[] blob = cursor.getBlob(0);
                    if (cursor.moveToNext()) {
                        zzKl().zzLY().zzj("Got multiple records for app config, expected one. appId", zzatx.zzfE(str));
                    }
                    if (cursor == null) {
                        return blob;
                    }
                    cursor.close();
                    return blob;
                } catch (SQLiteException e) {
                    e = e;
                    zzKl().zzLY().zze("Error querying remote config. appId", zzatx.zzfE(str), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
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
    }

    void zzfx(String str) {
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("property_filters", "app_id=?", new String[]{str});
        writableDatabase.delete("event_filters", "app_id=?", new String[]{str});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Map<Integer, zzauw.zzf> zzfy(String str) {
        Cursor cursor;
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        try {
            cursor = getWritableDatabase().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                    android.support.v4.f.a aVar = new android.support.v4.f.a();
                    do {
                        int i = cursor.getInt(0);
                        zzbxl zzaf = zzbxl.zzaf(cursor.getBlob(1));
                        zzauw.zzf zzfVar = new zzauw.zzf();
                        try {
                            zzfVar.zzb(zzaf);
                            aVar.put(Integer.valueOf(i), zzfVar);
                        } catch (IOException e) {
                            zzKl().zzLY().zzd("Failed to merge filter results. appId, audienceId, error", zzatx.zzfE(str), Integer.valueOf(i), e);
                        }
                    } while (cursor.moveToNext());
                    if (cursor == null) {
                        return aVar;
                    }
                    cursor.close();
                    return aVar;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzKl().zzLY().zze("Database error querying filter results. appId", zzatx.zzfE(str), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzfz(String str) {
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {str};
            int delete = writableDatabase.delete("audience_filter_values", "app_id=?", strArr) + writableDatabase.delete("events", "app_id=?", strArr) + 0 + writableDatabase.delete("user_attributes", "app_id=?", strArr) + writableDatabase.delete("conditional_properties", "app_id=?", strArr) + writableDatabase.delete("apps", "app_id=?", strArr) + writableDatabase.delete("raw_events", "app_id=?", strArr) + writableDatabase.delete("raw_events_metadata", "app_id=?", strArr) + writableDatabase.delete("event_filters", "app_id=?", strArr) + writableDatabase.delete("property_filters", "app_id=?", strArr);
            if (delete <= 0) {
                return;
            }
            zzKl().zzMe().zze("Deleted application data. app, records", str, Integer.valueOf(delete));
        } catch (SQLiteException e) {
            zzKl().zzLY().zze("Error deleting application data. appId, error", zzatx.zzfE(str), e);
        }
    }

    public List<zzatg> zzh(String str, long j) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        if (j < 0) {
            zzKl().zzMa().zze("Invalid time querying timed out conditional properties", zzatx.zzfE(str), Long.valueOf(j));
            return Collections.emptyList();
        }
        return zzc("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
    }

    public List<zzatg> zzi(String str, long j) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        if (j < 0) {
            zzKl().zzMa().zze("Invalid time querying expired conditional properties", zzatx.zzfE(str), Long.valueOf(j));
            return Collections.emptyList();
        }
        return zzc("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a3, code lost:
        zzKl().zzLY().zzj("Read more than the max allowed user properties, ignoring excess", java.lang.Integer.valueOf(zzKn().zzKX()));
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<zzaus> zzk(String str, String str2, String str3) {
        Cursor cursor;
        Cursor cursor2 = null;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList(3);
            arrayList2.add(str);
            StringBuilder sb = new StringBuilder("app_id=?");
            if (!TextUtils.isEmpty(str2)) {
                arrayList2.add(str2);
                sb.append(" and origin=?");
            }
            if (!TextUtils.isEmpty(str3)) {
                arrayList2.add(String.valueOf(str3).concat("*"));
                sb.append(" and name glob ?");
            }
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = {"name", "set_timestamp", "value", a.b.ORIGIN};
            String sb2 = sb.toString();
            zzKn().zzKX();
            Cursor query = writableDatabase.query("user_attributes", strArr, sb2, (String[]) arrayList2.toArray(new String[arrayList2.size()]), null, null, "rowid", String.valueOf(1001));
            try {
                try {
                    if (!query.moveToFirst()) {
                        if (query != null) {
                            query.close();
                        }
                        return arrayList;
                    }
                    while (true) {
                        if (arrayList.size() >= zzKn().zzKX()) {
                            break;
                        }
                        String string = query.getString(0);
                        long j = query.getLong(1);
                        Object zzb2 = zzb(query, 2);
                        String string2 = query.getString(3);
                        if (zzb2 == null) {
                            try {
                                zzKl().zzLY().zzd("(2)Read invalid user property value, ignoring it", zzatx.zzfE(str), string2, str3);
                            } catch (SQLiteException e) {
                                e = e;
                                cursor = query;
                                str2 = string2;
                                try {
                                    zzKl().zzLY().zzd("(2)Error querying user properties", zzatx.zzfE(str), str2, e);
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    return null;
                                } catch (Throwable th) {
                                    th = th;
                                    cursor2 = cursor;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    throw th;
                                }
                            }
                        } else {
                            arrayList.add(new zzaus(str, string2, string, j, zzb2));
                        }
                        if (!query.moveToNext()) {
                            break;
                        }
                        str2 = string2;
                    }
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                } catch (SQLiteException e2) {
                    e = e2;
                    cursor = query;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = query;
                if (cursor2 != null) {
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public List<zzatg> zzl(String str, String str2, String str3) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return zzc(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<Pair<zzauw.zze, Long>> zzn(String str, int i, int i2) {
        Cursor cursor;
        Cursor cursor2;
        List<Pair<zzauw.zze, Long>> emptyList;
        int i3;
        byte[] zzx;
        boolean z = true;
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzax(i > 0);
        if (i2 <= 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        com.google.android.gms.common.internal.zzac.zzdr(str);
        try {
            cursor = getWritableDatabase().query("queue", new String[]{"rowid", "data"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
        } catch (SQLiteException e) {
            e = e;
            cursor2 = null;
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        try {
            if (!cursor.moveToFirst()) {
                emptyList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
            } else {
                emptyList = new ArrayList<>();
                int i4 = 0;
                while (true) {
                    long j = cursor.getLong(0);
                    try {
                        zzx = zzKh().zzx(cursor.getBlob(1));
                    } catch (IOException e2) {
                        zzKl().zzLY().zze("Failed to unzip queued bundle. appId", zzatx.zzfE(str), e2);
                        i3 = i4;
                    }
                    if (!emptyList.isEmpty() && zzx.length + i4 > i2) {
                        break;
                    }
                    zzbxl zzaf = zzbxl.zzaf(zzx);
                    zzauw.zze zzeVar = new zzauw.zze();
                    try {
                        zzeVar.zzb(zzaf);
                        i3 = zzx.length + i4;
                        emptyList.add(Pair.create(zzeVar, Long.valueOf(j)));
                    } catch (IOException e3) {
                        zzKl().zzLY().zze("Failed to merge queued bundle. appId", zzatx.zzfE(str), e3);
                        i3 = i4;
                    }
                    if (!cursor.moveToNext() || i3 > i2) {
                        break;
                    }
                    i4 = i3;
                }
                if (cursor != null) {
                    cursor.close();
                }
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursor2 = cursor;
            try {
                zzKl().zzLY().zze("Error querying bundles. appId", zzatx.zzfE(str), e);
                emptyList = Collections.emptyList();
                if (cursor2 != null) {
                    cursor2.close();
                }
                return emptyList;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursor2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
            }
            throw th;
        }
        return emptyList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzow() {
        return zzKn().zzpv();
    }

    public void zzz(String str, int i) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzob();
        try {
            getWritableDatabase().execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", new String[]{str, str, String.valueOf(i)});
        } catch (SQLiteException e) {
            zzKl().zzLY().zze("Error pruning currencies. appId", zzatx.zzfE(str), e);
        }
    }
}
