package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzatv extends zzauh {
    private final zza zzbsx;
    private boolean zzbsy;

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    /* loaded from: classes2.dex */
    public class zza extends SQLiteOpenHelper {
        zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e) {
                if (Build.VERSION.SDK_INT >= 11 && (e instanceof SQLiteDatabaseLockedException)) {
                    throw e;
                }
                zzatv.this.zzKl().zzLY().log("Opening the local database failed, dropping and recreating it");
                String zzow = zzatv.this.zzow();
                if (!zzatv.this.getContext().getDatabasePath(zzow).delete()) {
                    zzatv.this.zzKl().zzLY().zzj("Failed to delete corrupted local db file", zzow);
                }
                try {
                    return super.getWritableDatabase();
                } catch (SQLiteException e2) {
                    zzatv.this.zzKl().zzLY().zzj("Failed to open local database. Events will bypass local storage", e2);
                    return null;
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzatj.zza(zzatv.this.zzKl(), sQLiteDatabase);
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
            zzatj.zza(zzatv.this.zzKl(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatv(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbsx = new zza(getContext(), zzow());
    }

    @TargetApi(11)
    private boolean zza(int i, byte[] bArr) {
        zzJW();
        zzmR();
        if (this.zzbsy) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", Integer.valueOf(i));
        contentValues.put("entry", bArr);
        zzKn().zzLp();
        int i2 = 5;
        for (int i3 = 0; i3 < 5; i3++) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if (writableDatabase == null) {
                    this.zzbsy = true;
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                    return false;
                }
                writableDatabase.beginTransaction();
                long j = 0;
                Cursor rawQuery = writableDatabase.rawQuery("select count(1) from messages", null);
                if (rawQuery != null && rawQuery.moveToFirst()) {
                    j = rawQuery.getLong(0);
                }
                if (j >= 100000) {
                    zzKl().zzLY().log("Data loss, local db full");
                    long j2 = (100000 - j) + 1;
                    long delete = writableDatabase.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", new String[]{Long.toString(j2)});
                    if (delete != j2) {
                        zzKl().zzLY().zzd("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j2), Long.valueOf(delete), Long.valueOf(j2 - delete));
                    }
                }
                writableDatabase.insertOrThrow("messages", null, contentValues);
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                if (writableDatabase != null) {
                    writableDatabase.close();
                }
                return true;
            } catch (SQLiteFullException e) {
                try {
                    zzKl().zzLY().zzj("Error writing entry to local database", e);
                    this.zzbsy = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                if (Build.VERSION.SDK_INT < 11 || !(e2 instanceof SQLiteDatabaseLockedException)) {
                    if (0 != 0 && sQLiteDatabase.inTransaction()) {
                        sQLiteDatabase.endTransaction();
                    }
                    zzKl().zzLY().zzj("Error writing entry to local database", e2);
                    this.zzbsy = true;
                } else {
                    SystemClock.sleep(i2);
                    i2 += 20;
                }
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            }
        }
        zzKl().zzMa().log("Failed to write entry to local database");
        return false;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    SQLiteDatabase getWritableDatabase() {
        int i = Build.VERSION.SDK_INT;
        if (this.zzbsy) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zzbsx.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzbsy = true;
        return null;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    boolean zzLM() {
        return getContext().getDatabasePath(zzow()).exists();
    }

    public boolean zza(zzatq zzatqVar) {
        int i = Build.VERSION.SDK_INT;
        Parcel obtain = Parcel.obtain();
        zzatqVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            zzKl().zzMa().log("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zza(0, marshall);
    }

    public boolean zza(zzauq zzauqVar) {
        int i = Build.VERSION.SDK_INT;
        Parcel obtain = Parcel.obtain();
        zzauqVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            zzKl().zzMa().log("User property too long for local database. Sending directly to service");
            return false;
        }
        return zza(1, marshall);
    }

    public boolean zzc(zzatg zzatgVar) {
        int i = Build.VERSION.SDK_INT;
        byte[] zza2 = zzKh().zza(zzatgVar);
        if (zza2.length > 131072) {
            zzKl().zzMa().log("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zza(2, zza2);
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0121  */
    @TargetApi(11)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<com.google.android.gms.common.internal.safeparcel.zza> zzlD(int i) {
        int i2;
        Throwable th;
        SQLiteDatabase writableDatabase;
        zzatg zzatgVar;
        zzauq zzauqVar;
        zzmR();
        zzJW();
        int i3 = Build.VERSION.SDK_INT;
        if (this.zzbsy) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!zzLM()) {
            return arrayList;
        }
        int i4 = 5;
        int i5 = 0;
        while (i5 < 5) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                writableDatabase = getWritableDatabase();
            } catch (SQLiteFullException e) {
                e = e;
            } catch (SQLiteException e2) {
                e = e2;
            }
            try {
                if (writableDatabase == null) {
                    this.zzbsy = true;
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                    return null;
                }
                writableDatabase.beginTransaction();
                Cursor query = writableDatabase.query("messages", new String[]{"rowid", "type", "entry"}, null, null, null, null, "rowid asc", Integer.toString(i));
                long j = -1;
                while (query.moveToNext()) {
                    long j2 = query.getLong(0);
                    int i6 = query.getInt(1);
                    byte[] blob = query.getBlob(2);
                    if (i6 == 0) {
                        Parcel obtain = Parcel.obtain();
                        try {
                            obtain.unmarshall(blob, 0, blob.length);
                            obtain.setDataPosition(0);
                            zzatq createFromParcel = zzatq.CREATOR.createFromParcel(obtain);
                            obtain.recycle();
                            if (createFromParcel != null) {
                                arrayList.add(createFromParcel);
                            }
                        } catch (zzb.zza e3) {
                            zzKl().zzLY().log("Failed to load event from local database");
                            obtain.recycle();
                            j = j2;
                        }
                    } else if (i6 == 1) {
                        Parcel obtain2 = Parcel.obtain();
                        try {
                            obtain2.unmarshall(blob, 0, blob.length);
                            obtain2.setDataPosition(0);
                            zzauqVar = zzauq.CREATOR.createFromParcel(obtain2);
                            obtain2.recycle();
                        } catch (zzb.zza e4) {
                            zzKl().zzLY().log("Failed to load user property from local database");
                            obtain2.recycle();
                            zzauqVar = null;
                        }
                        if (zzauqVar != null) {
                            arrayList.add(zzauqVar);
                        }
                    } else if (i6 == 2) {
                        Parcel obtain3 = Parcel.obtain();
                        try {
                            obtain3.unmarshall(blob, 0, blob.length);
                            obtain3.setDataPosition(0);
                            zzatgVar = zzatg.CREATOR.createFromParcel(obtain3);
                            obtain3.recycle();
                        } catch (zzb.zza e5) {
                            zzKl().zzLY().log("Failed to load user property from local database");
                            obtain3.recycle();
                            zzatgVar = null;
                        }
                        if (zzatgVar != null) {
                            arrayList.add(zzatgVar);
                        }
                    } else {
                        zzKl().zzLY().log("Unknown record type in local database");
                    }
                    j = j2;
                }
                query.close();
                if (writableDatabase.delete("messages", "rowid <= ?", new String[]{Long.toString(j)}) < arrayList.size()) {
                    zzKl().zzLY().log("Fewer entries removed from local database than expected");
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                if (writableDatabase != null) {
                    writableDatabase.close();
                }
                return arrayList;
            } catch (SQLiteFullException e6) {
                sQLiteDatabase = writableDatabase;
                e = e6;
                try {
                    zzKl().zzLY().zzj("Error reading entries from local database", e);
                    this.zzbsy = true;
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.close();
                        i2 = i4;
                    } else {
                        i2 = i4;
                    }
                    i5++;
                    i4 = i2;
                } catch (Throwable th2) {
                    th = th2;
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e7) {
                sQLiteDatabase = writableDatabase;
                e = e7;
                if (Build.VERSION.SDK_INT < 11 || !(e instanceof SQLiteDatabaseLockedException)) {
                    if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                        sQLiteDatabase.endTransaction();
                    }
                    zzKl().zzLY().zzj("Error reading entries from local database", e);
                    this.zzbsy = true;
                    i2 = i4;
                } else {
                    SystemClock.sleep(i4);
                    i2 = i4 + 20;
                }
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                i5++;
                i4 = i2;
            } catch (Throwable th3) {
                sQLiteDatabase = writableDatabase;
                th = th3;
                if (sQLiteDatabase != null) {
                }
                throw th;
            }
        }
        zzKl().zzMa().log("Failed to read events from database in reasonable time");
        return null;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }

    String zzow() {
        return zzKn().zzLf();
    }
}
