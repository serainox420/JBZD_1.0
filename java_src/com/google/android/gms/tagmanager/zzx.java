package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.tagmanager.DataLayer;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzx implements DataLayer.zzc {
    private static final String zzbFL = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", "datalayer", "ID", "key", "value", "expires");
    private final Context mContext;
    private final Executor zzbFM;
    private zza zzbFN;
    private int zzbFO;
    private com.google.android.gms.common.util.zze zzuP;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class zza extends SQLiteOpenHelper {
        zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
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
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM datalayer WHERE 0", null);
            HashSet hashSet = new HashSet();
            try {
                for (String str : rawQuery.getColumnNames()) {
                    hashSet.add(str);
                }
                rawQuery.close();
                if (!hashSet.remove("key") || !hashSet.remove("value") || !hashSet.remove("ID") || !hashSet.remove("expires")) {
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
            SQLiteDatabase sQLiteDatabase = null;
            try {
                sQLiteDatabase = super.getWritableDatabase();
            } catch (SQLiteException e) {
                zzx.this.mContext.getDatabasePath("google_tagmanager.db").delete();
            }
            return sQLiteDatabase == null ? super.getWritableDatabase() : sQLiteDatabase;
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
            if (!zza("datalayer", sQLiteDatabase)) {
                sQLiteDatabase.execSQL(zzx.zzbFL);
            } else {
                zzc(sQLiteDatabase);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb {
        final String zzAX;
        final byte[] zzbFU;

        zzb(String str, byte[] bArr) {
            this.zzAX = str;
            this.zzbFU = bArr;
        }

        public String toString() {
            String str = this.zzAX;
            return new StringBuilder(String.valueOf(str).length() + 54).append("KeyAndSerialized: key = ").append(str).append(" serialized hash = ").append(Arrays.hashCode(this.zzbFU)).toString();
        }
    }

    public zzx(Context context) {
        this(context, com.google.android.gms.common.util.zzi.zzzc(), "google_tagmanager.db", 2000, Executors.newSingleThreadExecutor());
    }

    zzx(Context context, com.google.android.gms.common.util.zze zzeVar, String str, int i, Executor executor) {
        this.mContext = context;
        this.zzuP = zzeVar;
        this.zzbFO = i;
        this.zzbFM = executor;
        this.zzbFN = new zza(this.mContext, str);
    }

    private byte[] zzJ(Object obj) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        byte[] bArr = null;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        } catch (IOException e) {
            objectOutputStream = null;
        } catch (Throwable th2) {
            objectOutputStream = null;
            th = th2;
        }
        try {
            objectOutputStream.writeObject(obj);
            bArr = byteArrayOutputStream.toByteArray();
            try {
                objectOutputStream.close();
                byteArrayOutputStream.close();
            } catch (IOException e2) {
            }
        } catch (IOException e3) {
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e4) {
                }
            }
            byteArrayOutputStream.close();
            return bArr;
        } catch (Throwable th3) {
            th = th3;
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e5) {
                    throw th;
                }
            }
            byteArrayOutputStream.close();
            throw th;
        }
        return bArr;
    }

    private Object zzL(byte[] bArr) {
        ObjectInputStream objectInputStream;
        Throwable th;
        Object obj = null;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            objectInputStream = new ObjectInputStream(byteArrayInputStream);
        } catch (IOException e) {
            objectInputStream = null;
        } catch (ClassNotFoundException e2) {
            objectInputStream = null;
        } catch (Throwable th2) {
            objectInputStream = null;
            th = th2;
        }
        try {
            obj = objectInputStream.readObject();
            try {
                objectInputStream.close();
                byteArrayInputStream.close();
            } catch (IOException e3) {
            }
        } catch (IOException e4) {
            if (objectInputStream != null) {
                try {
                    objectInputStream.close();
                } catch (IOException e5) {
                }
            }
            byteArrayInputStream.close();
            return obj;
        } catch (ClassNotFoundException e6) {
            if (objectInputStream != null) {
                try {
                    objectInputStream.close();
                } catch (IOException e7) {
                }
            }
            byteArrayInputStream.close();
            return obj;
        } catch (Throwable th3) {
            th = th3;
            if (objectInputStream != null) {
                try {
                    objectInputStream.close();
                } catch (IOException e8) {
                    throw th;
                }
            }
            byteArrayInputStream.close();
            throw th;
        }
        return obj;
    }

    private List<DataLayer.zza> zzN(List<zzb> list) {
        ArrayList arrayList = new ArrayList();
        for (zzb zzbVar : list) {
            arrayList.add(new DataLayer.zza(zzbVar.zzAX, zzL(zzbVar.zzbFU)));
        }
        return arrayList;
    }

    private List<zzb> zzO(List<DataLayer.zza> list) {
        ArrayList arrayList = new ArrayList();
        for (DataLayer.zza zzaVar : list) {
            arrayList.add(new zzb(zzaVar.zzAX, zzJ(zzaVar.mValue)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<DataLayer.zza> zzQA() {
        try {
            zzaz(this.zzuP.currentTimeMillis());
            return zzN(zzQB());
        } finally {
            zzQD();
        }
    }

    private List<zzb> zzQB() {
        SQLiteDatabase zzhe = zzhe("Error opening database for loadSerialized.");
        ArrayList arrayList = new ArrayList();
        if (zzhe == null) {
            return arrayList;
        }
        Cursor query = zzhe.query("datalayer", new String[]{"key", "value"}, null, null, null, null, "ID", null);
        while (query.moveToNext()) {
            try {
                arrayList.add(new zzb(query.getString(0), query.getBlob(1)));
            } finally {
                query.close();
            }
        }
        return arrayList;
    }

    private int zzQC() {
        Cursor cursor = null;
        int i = 0;
        SQLiteDatabase zzhe = zzhe("Error opening database for getNumStoredEntries.");
        try {
            if (zzhe != null) {
                try {
                    cursor = zzhe.rawQuery("SELECT COUNT(*) from datalayer", null);
                    if (cursor.moveToFirst()) {
                        i = (int) cursor.getLong(0);
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (SQLiteException e) {
                    zzbo.zzbh("Error getting numStoredEntries");
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

    private void zzQD() {
        try {
            this.zzbFN.close();
        } catch (SQLiteException e) {
        }
    }

    private void zzaz(long j) {
        SQLiteDatabase zzhe = zzhe("Error opening database for deleteOlderThan.");
        if (zzhe == null) {
            return;
        }
        try {
            zzbo.v(new StringBuilder(33).append("Deleted ").append(zzhe.delete("datalayer", "expires <= ?", new String[]{Long.toString(j)})).append(" expired items").toString());
        } catch (SQLiteException e) {
            zzbo.zzbh("Error deleting old entries.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void zzb(List<zzb> list, long j) {
        long currentTimeMillis = this.zzuP.currentTimeMillis();
        zzaz(currentTimeMillis);
        zznA(list.size());
        zzc(list, currentTimeMillis + j);
        zzQD();
    }

    private void zzc(List<zzb> list, long j) {
        SQLiteDatabase zzhe = zzhe("Error opening database for writeEntryToDatabase.");
        if (zzhe == null) {
            return;
        }
        for (zzb zzbVar : list) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("expires", Long.valueOf(j));
            contentValues.put("key", zzbVar.zzAX);
            contentValues.put("value", zzbVar.zzbFU);
            zzhe.insert("datalayer", null, contentValues);
        }
    }

    private void zzg(String[] strArr) {
        SQLiteDatabase zzhe;
        if (strArr == null || strArr.length == 0 || (zzhe = zzhe("Error opening database for deleteEntries.")) == null) {
            return;
        }
        try {
            zzhe.delete("datalayer", String.format("%s in (%s)", "ID", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
        } catch (SQLiteException e) {
            String valueOf = String.valueOf(Arrays.toString(strArr));
            zzbo.zzbh(valueOf.length() != 0 ? "Error deleting entries ".concat(valueOf) : new String("Error deleting entries "));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzhd(String str) {
        SQLiteDatabase zzhe = zzhe("Error opening database for clearKeysWithPrefix.");
        if (zzhe == null) {
            return;
        }
        try {
            zzbo.v(new StringBuilder(25).append("Cleared ").append(zzhe.delete("datalayer", "key = ? OR key LIKE ?", new String[]{str, String.valueOf(str).concat(".%")})).append(" items").toString());
        } catch (SQLiteException e) {
            String valueOf = String.valueOf(e);
            zzbo.zzbh(new StringBuilder(String.valueOf(str).length() + 44 + String.valueOf(valueOf).length()).append("Error deleting entries with key prefix: ").append(str).append(" (").append(valueOf).append(").").toString());
        } finally {
            zzQD();
        }
    }

    private SQLiteDatabase zzhe(String str) {
        try {
            return this.zzbFN.getWritableDatabase();
        } catch (SQLiteException e) {
            zzbo.zzbh(str);
            return null;
        }
    }

    private void zznA(int i) {
        int zzQC = (zzQC() - this.zzbFO) + i;
        if (zzQC > 0) {
            List<String> zznB = zznB(zzQC);
            zzbo.zzbg(new StringBuilder(64).append("DataLayer store full, deleting ").append(zznB.size()).append(" entries to make room.").toString());
            zzg((String[]) zznB.toArray(new String[0]));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List<String> zznB(int i) {
        Cursor cursor;
        Cursor cursor2 = null;
        ArrayList arrayList = new ArrayList();
        if (i <= 0) {
            zzbo.zzbh("Invalid maxEntries specified. Skipping.");
            return arrayList;
        }
        SQLiteDatabase zzhe = zzhe("Error opening database for peekEntryIds.");
        try {
            if (zzhe == null) {
                return arrayList;
            }
            try {
                cursor = zzhe.query("datalayer", new String[]{"ID"}, null, null, null, null, String.format("%s ASC", "ID"), Integer.toString(i));
                try {
                } catch (SQLiteException e) {
                    e = e;
                    String valueOf = String.valueOf(e.getMessage());
                    zzbo.zzbh(valueOf.length() != 0 ? "Error in peekEntries fetching entryIds: ".concat(valueOf) : new String("Error in peekEntries fetching entryIds: "));
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

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public void zza(final DataLayer.zzc.zza zzaVar) {
        this.zzbFM.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzx.2
            @Override // java.lang.Runnable
            public void run() {
                zzaVar.zzM(zzx.this.zzQA());
            }
        });
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public void zza(List<DataLayer.zza> list, final long j) {
        final List<zzb> zzO = zzO(list);
        this.zzbFM.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzx.1
            @Override // java.lang.Runnable
            public void run() {
                zzx.this.zzb(zzO, j);
            }
        });
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public void zzhc(final String str) {
        this.zzbFM.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzx.3
            @Override // java.lang.Runnable
            public void run() {
                zzx.this.zzhd(str);
            }
        });
    }
}
