package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.tagmanager.zzde;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzcg implements zzaw {
    private static final String zzaeu = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time");
    private final Context mContext;
    private final zzb zzbGS;
    private volatile zzad zzbGT;
    private final zzax zzbGU;
    private final String zzbGV;
    private long zzbGW;
    private final int zzbGX;
    private com.google.android.gms.common.util.zze zzuP;

    /* loaded from: classes2.dex */
    class zza implements zzde.zza {
        zza() {
        }

        @Override // com.google.android.gms.tagmanager.zzde.zza
        public void zza(zzas zzasVar) {
            zzcg.this.zzv(zzasVar.zzQN());
        }

        @Override // com.google.android.gms.tagmanager.zzde.zza
        public void zzb(zzas zzasVar) {
            zzcg.this.zzv(zzasVar.zzQN());
            zzbo.v(new StringBuilder(57).append("Permanent failure dispatching hitId: ").append(zzasVar.zzQN()).toString());
        }

        @Override // com.google.android.gms.tagmanager.zzde.zza
        public void zzc(zzas zzasVar) {
            long zzQO = zzasVar.zzQO();
            if (zzQO == 0) {
                zzcg.this.zzj(zzasVar.zzQN(), zzcg.this.zzuP.currentTimeMillis());
            } else if (zzQO + 14400000 >= zzcg.this.zzuP.currentTimeMillis()) {
            } else {
                zzcg.this.zzv(zzasVar.zzQN());
                zzbo.v(new StringBuilder(47).append("Giving up on failed hitId: ").append(zzasVar.zzQN()).toString());
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

        /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private boolean zza(String str, SQLiteDatabase sQLiteDatabase) {
            Cursor cursor;
            Cursor query;
            Cursor cursor2 = null;
            try {
                query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
            } catch (SQLiteException e) {
                cursor = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                boolean moveToFirst = query.moveToFirst();
                if (query == null) {
                    return moveToFirst;
                }
                query.close();
                return moveToFirst;
            } catch (SQLiteException e2) {
                cursor = query;
                try {
                    String valueOf = String.valueOf(str);
                    zzbo.zzbh(valueOf.length() != 0 ? "Error querying for table ".concat(valueOf) : new String("Error querying for table "));
                    if (cursor != null) {
                        cursor.close();
                    }
                    return false;
                } catch (Throwable th2) {
                    cursor2 = cursor;
                    th = th2;
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

        private void zzc(SQLiteDatabase sQLiteDatabase) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM gtm_hits WHERE 0", null);
            HashSet hashSet = new HashSet();
            try {
                for (String str : rawQuery.getColumnNames()) {
                    hashSet.add(str);
                }
                rawQuery.close();
                if (!hashSet.remove("hit_id") || !hashSet.remove("hit_url") || !hashSet.remove("hit_time") || !hashSet.remove("hit_first_send_time")) {
                    throw new SQLiteException("Database column missing");
                }
                if (hashSet.isEmpty()) {
                    return;
                }
                throw new SQLiteException("Database has extra columns");
            } catch (Throwable th) {
                rawQuery.close();
                throw th;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            if (!this.zzbGZ || this.zzbHa + 3600000 <= zzcg.this.zzuP.currentTimeMillis()) {
                SQLiteDatabase sQLiteDatabase = null;
                this.zzbGZ = true;
                this.zzbHa = zzcg.this.zzuP.currentTimeMillis();
                try {
                    sQLiteDatabase = super.getWritableDatabase();
                } catch (SQLiteException e) {
                    zzcg.this.mContext.getDatabasePath(zzcg.this.zzbGV).delete();
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
            zzan.zzca(sQLiteDatabase.getPath());
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
            if (!zza("gtm_hits", sQLiteDatabase)) {
                sQLiteDatabase.execSQL(zzcg.zzaeu);
            } else {
                zzc(sQLiteDatabase);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcg(zzax zzaxVar, Context context) {
        this(zzaxVar, context, "gtm_urls.db", 2000);
    }

    zzcg(zzax zzaxVar, Context context, String str, int i) {
        this.mContext = context.getApplicationContext();
        this.zzbGV = str;
        this.zzbGU = zzaxVar;
        this.zzuP = com.google.android.gms.common.util.zzi.zzzc();
        this.zzbGS = new zzb(this.mContext, this.zzbGV);
        this.zzbGT = new zzde(this.mContext, new zza());
        this.zzbGW = 0L;
        this.zzbGX = i;
    }

    private void zzRa() {
        int zzRb = (zzRb() - this.zzbGX) + 1;
        if (zzRb > 0) {
            List<String> zznG = zznG(zzRb);
            zzbo.v(new StringBuilder(51).append("Store full, deleting ").append(zznG.size()).append(" hits to make room.").toString());
            zzh((String[]) zznG.toArray(new String[0]));
        }
    }

    private void zzh(long j, String str) {
        SQLiteDatabase zzhe = zzhe("Error opening database for putHit");
        if (zzhe == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_time", Long.valueOf(j));
        contentValues.put("hit_url", str);
        contentValues.put("hit_first_send_time", (Integer) 0);
        try {
            zzhe.insert("gtm_hits", null, contentValues);
            this.zzbGU.zzaS(false);
        } catch (SQLiteException e) {
            zzbo.zzbh("Error storing hit");
        }
    }

    private SQLiteDatabase zzhe(String str) {
        try {
            return this.zzbGS.getWritableDatabase();
        } catch (SQLiteException e) {
            zzbo.zzbh(str);
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
            zzbo.zzbh(new StringBuilder(69).append("Error setting HIT_FIRST_DISPATCH_TIME for hitId: ").append(j).toString());
            zzv(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzv(long j) {
        zzh(new String[]{String.valueOf(j)});
    }

    @Override // com.google.android.gms.tagmanager.zzaw
    public void dispatch() {
        zzbo.v("GTM Dispatch running...");
        if (!this.zzbGT.zzQF()) {
            return;
        }
        List<zzas> zznH = zznH(40);
        if (zznH.isEmpty()) {
            zzbo.v("...nothing to dispatch");
            this.zzbGU.zzaS(true);
            return;
        }
        this.zzbGT.zzP(zznH);
        if (zzRc() <= 0) {
            return;
        }
        zzdc.zzRy().dispatch();
    }

    int zzRb() {
        Cursor cursor = null;
        int i = 0;
        SQLiteDatabase zzhe = zzhe("Error opening database for getNumStoredHits.");
        try {
            if (zzhe != null) {
                try {
                    cursor = zzhe.rawQuery("SELECT COUNT(*) from gtm_hits", null);
                    if (cursor.moveToFirst()) {
                        i = (int) cursor.getLong(0);
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (SQLiteException e) {
                    zzbo.zzbh("Error getting numStoredHits");
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
            return i;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    int zzRc() {
        Cursor cursor;
        int i;
        Cursor cursor2 = null;
        SQLiteDatabase zzhe = zzhe("Error opening database for getNumStoredHits.");
        if (zzhe == null) {
            return 0;
        }
        try {
            Cursor query = zzhe.query("gtm_hits", new String[]{"hit_id", "hit_first_send_time"}, "hit_first_send_time=0", null, null, null, null);
            try {
                i = query.getCount();
                if (query != null) {
                    query.close();
                }
            } catch (SQLiteException e) {
                cursor = query;
                try {
                    zzbo.zzbh("Error getting num untried hits");
                    if (cursor != null) {
                        cursor.close();
                        i = 0;
                    } else {
                        i = 0;
                    }
                    return i;
                } catch (Throwable th) {
                    cursor2 = cursor;
                    th = th;
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
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
        return i;
    }

    @Override // com.google.android.gms.tagmanager.zzaw
    public void zzg(long j, String str) {
        zzot();
        zzRa();
        zzh(j, str);
    }

    void zzh(String[] strArr) {
        SQLiteDatabase zzhe;
        boolean z = true;
        if (strArr == null || strArr.length == 0 || (zzhe = zzhe("Error opening database for deleteHits.")) == null) {
            return;
        }
        try {
            zzhe.delete("gtm_hits", String.format("HIT_ID in (%s)", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
            zzax zzaxVar = this.zzbGU;
            if (zzRb() != 0) {
                z = false;
            }
            zzaxVar.zzaS(z);
        } catch (SQLiteException e) {
            zzbo.zzbh("Error deleting hits");
        }
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
            zzbo.zzbh("Invalid maxHits specified. Skipping");
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
                    zzbo.zzbh(valueOf.length() != 0 ? "Error in peekHits fetching hitIds: ".concat(valueOf) : new String("Error in peekHits fetching hitIds: "));
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
    /* JADX WARN: Removed duplicated region for block: B:19:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<zzas> zznH(int i) {
        SQLiteException sQLiteException;
        Cursor cursor;
        ArrayList arrayList;
        ArrayList<zzas> arrayList2;
        Cursor query;
        ArrayList arrayList3 = new ArrayList();
        SQLiteDatabase zzhe = zzhe("Error opening database for peekHits");
        if (zzhe == null) {
            return arrayList3;
        }
        Cursor cursor2 = null;
        try {
            Cursor query2 = zzhe.query("gtm_hits", new String[]{"hit_id", "hit_time", "hit_first_send_time"}, null, null, null, null, String.format("%s ASC", "hit_id"), Integer.toString(i));
            try {
                try {
                    arrayList2 = new ArrayList();
                } catch (SQLiteException e) {
                    sQLiteException = e;
                    cursor = query2;
                    arrayList = arrayList3;
                }
                try {
                    if (!query2.moveToFirst()) {
                        if (query2 != null) {
                        }
                        query = zzhe.query("gtm_hits", new String[]{"hit_id", "hit_url"}, null, null, null, null, String.format("%s ASC", "hit_id"), Integer.toString(i));
                        if (query.moveToFirst()) {
                        }
                        if (query != null) {
                        }
                        return arrayList2;
                    }
                    do {
                        arrayList2.add(new zzas(query2.getLong(0), query2.getLong(1), query2.getLong(2)));
                    } while (query2.moveToNext());
                    if (query2 != null) {
                        query2.close();
                    }
                    try {
                        try {
                            query = zzhe.query("gtm_hits", new String[]{"hit_id", "hit_url"}, null, null, null, null, String.format("%s ASC", "hit_id"), Integer.toString(i));
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (SQLiteException e2) {
                        e = e2;
                    }
                    try {
                        if (query.moveToFirst()) {
                            int i2 = 0;
                            while (true) {
                                if (((SQLiteCursor) query).getWindow().getNumRows() > 0) {
                                    ((zzas) arrayList2.get(i2)).zzhi(query.getString(1));
                                } else {
                                    zzbo.zzbh(String.format("HitString for hitId %d too large.  Hit will be deleted.", Long.valueOf(((zzas) arrayList2.get(i2)).zzQN())));
                                }
                                int i3 = i2 + 1;
                                if (!query.moveToNext()) {
                                    break;
                                }
                                i2 = i3;
                            }
                        }
                        if (query != null) {
                            query.close();
                        }
                        return arrayList2;
                    } catch (SQLiteException e3) {
                        e = e3;
                        query2 = query;
                        String valueOf = String.valueOf(e.getMessage());
                        zzbo.zzbh(valueOf.length() != 0 ? "Error in peekHits fetching hit url: ".concat(valueOf) : new String("Error in peekHits fetching hit url: "));
                        ArrayList arrayList4 = new ArrayList();
                        boolean z = false;
                        for (zzas zzasVar : arrayList2) {
                            if (TextUtils.isEmpty(zzasVar.zzQP())) {
                                if (z) {
                                    break;
                                }
                                z = true;
                            }
                            arrayList4.add(zzasVar);
                        }
                        if (query2 != null) {
                            query2.close();
                        }
                        return arrayList4;
                    } catch (Throwable th2) {
                        th = th2;
                        query2 = query;
                        if (query2 != null) {
                            query2.close();
                        }
                        throw th;
                    }
                } catch (SQLiteException e4) {
                    sQLiteException = e4;
                    cursor = query2;
                    arrayList = arrayList2;
                    try {
                        String valueOf2 = String.valueOf(sQLiteException.getMessage());
                        zzbo.zzbh(valueOf2.length() != 0 ? "Error in peekHits fetching hitIds: ".concat(valueOf2) : new String("Error in peekHits fetching hitIds: "));
                        if (cursor == null) {
                            return arrayList;
                        }
                        cursor.close();
                        return arrayList;
                    } catch (Throwable th3) {
                        th = th3;
                        cursor2 = cursor;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                cursor2 = query2;
                if (cursor2 != null) {
                }
                throw th;
            }
        } catch (SQLiteException e5) {
            sQLiteException = e5;
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
        zzax zzaxVar = this.zzbGU;
        if (zzRb() != 0) {
            z = false;
        }
        zzaxVar.zzaS(z);
        return delete;
    }
}
