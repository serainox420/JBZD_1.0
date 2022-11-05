package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.internal.zzbqq;
import com.google.firebase.database.DatabaseException;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzbnw implements zzbqm {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Charset zzawC;
    private final SQLiteDatabase zzcaE;
    private final zzbrn zzcaF;
    private boolean zzcaG;
    private long zzcaH = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends SQLiteOpenHelper {
        static final /* synthetic */ boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !zzbnw.class.desiredAssertionStatus();
        }

        public zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 2);
        }

        private void zzc(SQLiteDatabase sQLiteDatabase, String str) {
            String valueOf = String.valueOf(str);
            sQLiteDatabase.execSQL(valueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(valueOf) : new String("DROP TABLE IF EXISTS "));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE serverCache (path TEXT PRIMARY KEY, value BLOB);");
            sQLiteDatabase.execSQL("CREATE TABLE writes (id INTEGER, path TEXT, type TEXT, part INTEGER, node BLOB, UNIQUE (id, part));");
            sQLiteDatabase.execSQL("CREATE TABLE trackedQueries (id INTEGER PRIMARY KEY, path TEXT, queryParams TEXT, lastUse INTEGER, complete INTEGER, active INTEGER);");
            sQLiteDatabase.execSQL("CREATE TABLE trackedKeys (id INTEGER, key TEXT);");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if ($assertionsDisabled || i2 == 2) {
                if (i > 1) {
                    throw new AssertionError(new StringBuilder(40).append("We don't handle upgrading to ").append(i2).toString());
                }
                zzc(sQLiteDatabase, "serverCache");
                sQLiteDatabase.execSQL("CREATE TABLE serverCache (path TEXT PRIMARY KEY, value BLOB);");
                zzc(sQLiteDatabase, SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE);
                sQLiteDatabase.execSQL("CREATE TABLE trackedKeys (id INTEGER, key TEXT);");
                sQLiteDatabase.execSQL("CREATE TABLE trackedQueries (id INTEGER PRIMARY KEY, path TEXT, queryParams TEXT, lastUse INTEGER, complete INTEGER, active INTEGER);");
                return;
            }
            throw new AssertionError("Why is onUpgrade() called with a different version?");
        }
    }

    static {
        $assertionsDisabled = !zzbnw.class.desiredAssertionStatus();
        zzawC = Charset.forName("UTF-8");
    }

    public zzbnw(Context context, zzbpa zzbpaVar, String str) {
        try {
            String encode = URLEncoder.encode(str, AudienceNetworkActivity.WEBVIEW_ENCODING);
            this.zzcaF = zzbpaVar.zziV("Persistence");
            this.zzcaE = zzQ(context, encode);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private SQLiteDatabase zzQ(Context context, String str) {
        try {
            SQLiteDatabase writableDatabase = new zza(context, str).getWritableDatabase();
            writableDatabase.rawQuery("PRAGMA locking_mode = EXCLUSIVE", null).close();
            writableDatabase.beginTransaction();
            writableDatabase.endTransaction();
            return writableDatabase;
        } catch (SQLiteException e) {
            if (!(e instanceof SQLiteDatabaseLockedException)) {
                throw e;
            }
            throw new DatabaseException("Failed to gain exclusive lock to Firebase Database's offline persistence. This generally means you are using Firebase Database from multiple processes in your app. Keep in mind that multi-process Android apps execute the code in your Application class in all processes, so you may need to avoid initializing FirebaseDatabase in your Application class. If you are intentionally using Firebase Database from multiple processes, you can only enable offline persistence (i.e. call setPersistenceEnabled(true)) in one of them.", e);
        }
    }

    private zzbsc zzV(byte[] bArr) {
        try {
            return zzbsd.zzat(zzbsv.zzjf(new String(bArr, zzawC)));
        } catch (IOException e) {
            String valueOf = String.valueOf(new String(bArr, zzawC));
            throw new RuntimeException(valueOf.length() != 0 ? "Could not deserialize node: ".concat(valueOf) : new String("Could not deserialize node: "), e);
        }
    }

    private byte[] zzV(List<byte[]> list) {
        int i = 0;
        for (byte[] bArr : list) {
            i = bArr.length + i;
        }
        byte[] bArr2 = new byte[i];
        int i2 = 0;
        for (byte[] bArr3 : list) {
            System.arraycopy(bArr3, 0, bArr2, i2, bArr3.length);
            i2 = bArr3.length + i2;
        }
        return bArr2;
    }

    private void zzWS() {
        zzbte.zzb(this.zzcaG, "Transaction expected to already be in progress.");
    }

    private int zza(zzbph zzbphVar, List<String> list, int i) {
        int i2 = i + 1;
        String zzc = zzc(zzbphVar);
        if (!list.get(i).startsWith(zzc)) {
            throw new IllegalStateException("Extracting split nodes needs to start with path prefix");
        }
        while (i2 < list.size() && list.get(i2).equals(zza(zzbphVar, i2 - i))) {
            i2++;
        }
        if (i2 < list.size()) {
            String str = list.get(i2);
            String valueOf = String.valueOf(zzc);
            String valueOf2 = String.valueOf(".part-");
            if (str.startsWith(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf))) {
                throw new IllegalStateException("Run did not finish with all parts");
            }
        }
        return i2 - i;
    }

    private int zza(String str, zzbph zzbphVar) {
        String zzc = zzc(zzbphVar);
        return this.zzcaE.delete(str, "path >= ? AND path < ?", new String[]{zzc, zziG(zzc)});
    }

    private Cursor zza(zzbph zzbphVar, String[] strArr) {
        String zzc = zzc(zzbphVar);
        String zziG = zziG(zzc);
        String[] strArr2 = new String[zzbphVar.size() + 3];
        String valueOf = String.valueOf(zzb(zzbphVar, strArr2));
        String valueOf2 = String.valueOf(" OR (path > ? AND path < ?)");
        String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        strArr2[zzbphVar.size() + 1] = zzc;
        strArr2[zzbphVar.size() + 2] = zziG;
        return this.zzcaE.query("serverCache", strArr, concat, strArr2, null, null, "path");
    }

    private String zza(zzbph zzbphVar, int i) {
        String valueOf = String.valueOf(zzc(zzbphVar));
        String valueOf2 = String.valueOf(String.format(".part-%04d", Integer.valueOf(i)));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private void zza(zzbph zzbphVar, long j, String str, byte[] bArr) {
        int i = 0;
        zzWS();
        this.zzcaE.delete("writes", "id = ?", new String[]{String.valueOf(j)});
        if (bArr.length < 262144) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Long.valueOf(j));
            contentValues.put("path", zzc(zzbphVar));
            contentValues.put("type", str);
            contentValues.put("part", (Integer) null);
            contentValues.put("node", bArr);
            this.zzcaE.insertWithOnConflict("writes", null, contentValues, 5);
            return;
        }
        List<byte[]> zzd = zzd(bArr, 262144);
        while (true) {
            int i2 = i;
            if (i2 >= zzd.size()) {
                return;
            }
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("id", Long.valueOf(j));
            contentValues2.put("path", zzc(zzbphVar));
            contentValues2.put("type", str);
            contentValues2.put("part", Integer.valueOf(i2));
            contentValues2.put("node", zzd.get(i2));
            this.zzcaE.insertWithOnConflict("writes", null, contentValues2, 5);
            i = i2 + 1;
        }
    }

    private void zza(zzbph zzbphVar, final zzbph zzbphVar2, zzbqq<Long> zzbqqVar, final zzbqq<Long> zzbqqVar2, zzbqn zzbqnVar, final List<zzbtb<zzbph, zzbsc>> list) {
        if (zzbqqVar.getValue() == null) {
            Iterator<Map.Entry<zzbrq, zzbqq<Long>>> it = zzbqqVar.zzZO().iterator();
            while (it.hasNext()) {
                Map.Entry<zzbrq, zzbqq<Long>> next = it.next();
                zzbrq key = next.getKey();
                zza(zzbphVar, zzbphVar2.zza(key), next.getValue(), zzbqqVar2.zze(key), zzbqnVar.zzd(next.getKey()), list);
            }
            return;
        }
        int intValue = ((Integer) zzbqnVar.zza(0, new zzbqq.zza<Void, Integer>(this) { // from class: com.google.android.gms.internal.zzbnw.1
            @Override // com.google.android.gms.internal.zzbqq.zza
            public Integer zza(zzbph zzbphVar3, Void r3, Integer num) {
                return Integer.valueOf(zzbqqVar2.zzK(zzbphVar3) == null ? num.intValue() + 1 : num.intValue());
            }
        })).intValue();
        if (intValue <= 0) {
            return;
        }
        zzbph zzh = zzbphVar.zzh(zzbphVar2);
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Need to rewrite %d nodes below path %s", Integer.valueOf(intValue), zzh), new Object[0]);
        }
        final zzbsc zzb = zzb(zzh);
        zzbqnVar.zza(null, new zzbqq.zza<Void, Void>(this) { // from class: com.google.android.gms.internal.zzbnw.2
            @Override // com.google.android.gms.internal.zzbqq.zza
            public Void zza(zzbph zzbphVar3, Void r6, Void r7) {
                if (zzbqqVar2.zzK(zzbphVar3) == null) {
                    list.add(new zzbtb(zzbphVar2.zzh(zzbphVar3), zzb.zzO(zzbphVar3)));
                    return null;
                }
                return null;
            }
        });
    }

    private void zza(zzbph zzbphVar, zzbsc zzbscVar, boolean z) {
        int i;
        int i2;
        long currentTimeMillis = System.currentTimeMillis();
        if (!z) {
            i2 = zza("serverCache", zzbphVar);
            i = zzc(zzbphVar, zzbscVar);
        } else {
            i = 0;
            i2 = 0;
            for (zzbsb zzbsbVar : zzbscVar) {
                i2 += zza("serverCache", zzbphVar.zza(zzbsbVar.zzabj()));
                i = zzc(zzbphVar.zza(zzbsbVar.zzabj()), zzbsbVar.zzWI()) + i;
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Persisted a total of %d rows and deleted %d rows for a set at %s in %dms", Integer.valueOf(i), Integer.valueOf(i2), zzbphVar.toString(), Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
    }

    private byte[] zzaf(Object obj) {
        try {
            return zzbsv.zzav(obj).getBytes(zzawC);
        } catch (IOException e) {
            throw new RuntimeException("Could not serialize leaf node", e);
        }
    }

    private zzbsc zzb(zzbph zzbphVar) {
        zzbsc zzV;
        int i;
        zzbph zzbphVar2;
        boolean z;
        zzbsc zzl;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        long currentTimeMillis = System.currentTimeMillis();
        Cursor zza2 = zza(zzbphVar, new String[]{"path", "value"});
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        long currentTimeMillis3 = System.currentTimeMillis();
        while (zza2.moveToNext()) {
            try {
                arrayList.add(zza2.getString(0));
                arrayList2.add(zza2.getBlob(1));
            } catch (Throwable th) {
                zza2.close();
                throw th;
            }
        }
        zza2.close();
        long currentTimeMillis4 = System.currentTimeMillis() - currentTimeMillis3;
        long currentTimeMillis5 = System.currentTimeMillis();
        zzbsc zzaaZ = zzbrv.zzaaZ();
        boolean z2 = false;
        HashMap hashMap = new HashMap();
        int i2 = 0;
        while (i2 < arrayList2.size()) {
            if (arrayList.get(i2).endsWith(".part-0000")) {
                String str = arrayList.get(i2);
                zzbph zzbphVar3 = new zzbph(str.substring(0, str.length() - ".part-0000".length()));
                int zza3 = zza(zzbphVar3, arrayList, i2);
                if (this.zzcaF.zzaaD()) {
                    this.zzcaF.zzi(new StringBuilder(42).append("Loading split node with ").append(zza3).append(" parts.").toString(), new Object[0]);
                }
                i = (i2 + zza3) - 1;
                zzbphVar2 = zzbphVar3;
                zzV = zzV(zzV(arrayList2.subList(i2, i2 + zza3)));
            } else {
                zzV = zzV((byte[]) arrayList2.get(i2));
                i = i2;
                zzbphVar2 = new zzbph(arrayList.get(i2));
            }
            if (zzbphVar2.zzYV() != null && zzbphVar2.zzYV().zzaaK()) {
                hashMap.put(zzbphVar2, zzV);
                z = z2;
                zzl = zzaaZ;
            } else if (zzbphVar2.zzi(zzbphVar)) {
                zzbte.zzb(!z2, "Descendants of path must come after ancestors.");
                boolean z3 = z2;
                zzl = zzV.zzO(zzbph.zza(zzbphVar2, zzbphVar));
                z = z3;
            } else if (!zzbphVar.zzi(zzbphVar2)) {
                throw new IllegalStateException(String.format("Loading an unrelated row with path %s for %s", zzbphVar2, zzbphVar));
            } else {
                z = true;
                zzl = zzaaZ.zzl(zzbph.zza(zzbphVar, zzbphVar2), zzV);
            }
            i2 = i + 1;
            zzaaZ = zzl;
            z2 = z;
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            zzaaZ = zzaaZ.zzl(zzbph.zza(zzbphVar, (zzbph) entry.getKey()), (zzbsc) entry.getValue());
        }
        long currentTimeMillis6 = System.currentTimeMillis() - currentTimeMillis5;
        long currentTimeMillis7 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Loaded a total of %d rows for a total of %d nodes at %s in %dms (Query: %dms, Loading: %dms, Serializing: %dms)", Integer.valueOf(arrayList2.size()), Integer.valueOf(zzbsz.zzu(zzaaZ)), zzbphVar, Long.valueOf(currentTimeMillis7), Long.valueOf(currentTimeMillis2), Long.valueOf(currentTimeMillis4), Long.valueOf(currentTimeMillis6)), new Object[0]);
        }
        return zzaaZ;
    }

    private static String zzb(zzbph zzbphVar, String[] strArr) {
        if ($assertionsDisabled || strArr.length >= zzbphVar.size() + 1) {
            int i = 0;
            StringBuilder sb = new StringBuilder("(");
            while (!zzbphVar.isEmpty()) {
                sb.append("path");
                sb.append(" = ? OR ");
                strArr[i] = zzc(zzbphVar);
                zzbphVar = zzbphVar.zzYU();
                i++;
            }
            sb.append("path");
            sb.append(" = ?)");
            strArr[i] = zzc(zzbph.zzYP());
            return sb.toString();
        }
        throw new AssertionError();
    }

    private int zzc(zzbph zzbphVar, zzbsc zzbscVar) {
        int i;
        int i2 = 0;
        long zzt = zzbsz.zzt(zzbscVar);
        if (!(zzbscVar instanceof zzbrr) || zzt <= 16384) {
            zzd(zzbphVar, zzbscVar);
            return 1;
        }
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Node estimated serialized size at path %s of %d bytes exceeds limit of %d bytes. Splitting up.", zzbphVar, Long.valueOf(zzt), 16384), new Object[0]);
        }
        Iterator<zzbsb> it = zzbscVar.iterator();
        while (true) {
            i = i2;
            if (!it.hasNext()) {
                break;
            }
            zzbsb next = it.next();
            i2 = zzc(zzbphVar.zza(next.zzabj()), next.zzWI()) + i;
        }
        if (!zzbscVar.zzaaO().isEmpty()) {
            zzd(zzbphVar.zza(zzbrq.zzaaI()), zzbscVar.zzaaO());
            i++;
        }
        zzd(zzbphVar, zzbrv.zzaaZ());
        return i + 1;
    }

    private static String zzc(zzbph zzbphVar) {
        return zzbphVar.isEmpty() ? "/" : String.valueOf(zzbphVar.toString()).concat("/");
    }

    private static List<byte[]> zzd(byte[] bArr, int i) {
        int length = ((bArr.length - 1) / i) + 1;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            int min = Math.min(i, bArr.length - (i2 * i));
            byte[] bArr2 = new byte[min];
            System.arraycopy(bArr, i2 * i, bArr2, 0, min);
            arrayList.add(bArr2);
        }
        return arrayList;
    }

    private void zzd(zzbph zzbphVar, zzbsc zzbscVar) {
        int i = 0;
        byte[] zzaf = zzaf(zzbscVar.getValue(true));
        if (zzaf.length < 262144) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("path", zzc(zzbphVar));
            contentValues.put("value", zzaf);
            this.zzcaE.insertWithOnConflict("serverCache", null, contentValues, 5);
            return;
        }
        List<byte[]> zzd = zzd(zzaf, 262144);
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(new StringBuilder(45).append("Saving huge leaf node with ").append(zzd.size()).append(" parts.").toString(), new Object[0]);
        }
        while (true) {
            int i2 = i;
            if (i2 >= zzd.size()) {
                return;
            }
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("path", zza(zzbphVar, i2));
            contentValues2.put("value", zzd.get(i2));
            this.zzcaE.insertWithOnConflict("serverCache", null, contentValues2, 5);
            i = i2 + 1;
        }
    }

    private static String zziG(String str) {
        if ($assertionsDisabled || str.endsWith("/")) {
            String valueOf = String.valueOf(str.substring(0, str.length() - 1));
            return new StringBuilder(String.valueOf(valueOf).length() + 1).append(valueOf).append('0').toString();
        }
        throw new AssertionError("Path keys must end with a '/'");
    }

    private String zzp(Collection<Long> collection) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        Iterator<Long> it = collection.iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                long longValue = it.next().longValue();
                if (!z2) {
                    sb.append(",");
                }
                z = false;
                sb.append(longValue);
            } else {
                return sb.toString();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void beginTransaction() {
        zzbte.zzb(!this.zzcaG, "runInTransaction called when an existing transaction is already in progress.");
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("Starting transaction.", new Object[0]);
        }
        this.zzcaE.beginTransaction();
        this.zzcaG = true;
        this.zzcaH = System.currentTimeMillis();
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void endTransaction() {
        this.zzcaE.endTransaction();
        this.zzcaG = false;
        long currentTimeMillis = System.currentTimeMillis() - this.zzcaH;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Transaction completed. Elapsed: %dms", Long.valueOf(currentTimeMillis)), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void setTransactionSuccessful() {
        this.zzcaE.setTransactionSuccessful();
    }

    @Override // com.google.android.gms.internal.zzbqm
    public List<zzbpv> zzWO() {
        byte[] zzV;
        zzbpv zzbpvVar;
        long currentTimeMillis = System.currentTimeMillis();
        Cursor query = this.zzcaE.query("writes", new String[]{"id", "path", "type", "part", "node"}, null, null, null, null, "id, part");
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            try {
                try {
                    long j = query.getLong(0);
                    zzbph zzbphVar = new zzbph(query.getString(1));
                    String string = query.getString(2);
                    if (query.isNull(3)) {
                        zzV = query.getBlob(4);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        do {
                            arrayList2.add(query.getBlob(4));
                            if (!query.moveToNext()) {
                                break;
                            }
                        } while (query.getLong(0) == j);
                        query.moveToPrevious();
                        zzV = zzV(arrayList2);
                    }
                    Object zzjf = zzbsv.zzjf(new String(zzV, zzawC));
                    if ("o".equals(string)) {
                        zzbpvVar = new zzbpv(j, zzbphVar, zzbsd.zzat(zzjf), true);
                    } else if (!"m".equals(string)) {
                        String valueOf = String.valueOf(string);
                        throw new IllegalStateException(valueOf.length() != 0 ? "Got invalid write type: ".concat(valueOf) : new String("Got invalid write type: "));
                    } else {
                        zzbpvVar = new zzbpv(j, zzbphVar, zzboy.zzaB((Map) zzjf));
                    }
                    arrayList.add(zzbpvVar);
                } catch (IOException e) {
                    throw new RuntimeException("Failed to load writes", e);
                }
            } finally {
                query.close();
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Loaded %d writes in %dms", Integer.valueOf(arrayList.size()), Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzbqm
    public long zzWP() {
        Cursor rawQuery = this.zzcaE.rawQuery(String.format("SELECT sum(length(%s) + length(%s)) FROM %s", "value", "path", "serverCache"), null);
        try {
            if (!rawQuery.moveToFirst()) {
                throw new IllegalStateException("Couldn't read database result!");
            }
            return rawQuery.getLong(0);
        } finally {
            rawQuery.close();
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public List<zzbqo> zzWQ() {
        String[] strArr = {"id", "path", "queryParams", "lastUse", SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE, "active"};
        long currentTimeMillis = System.currentTimeMillis();
        Cursor query = this.zzcaE.query("trackedQueries", strArr, null, null, null, null, "id");
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            try {
                try {
                    arrayList.add(new zzbqo(query.getLong(0), zzbrc.zzb(new zzbph(query.getString(1)), zzbsv.zzje(query.getString(2))), query.getLong(3), query.getInt(4) != 0, query.getInt(5) != 0));
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            } finally {
                query.close();
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Loaded %d tracked queries in %dms", Integer.valueOf(arrayList.size()), Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zzWR() {
        zzWS();
        long currentTimeMillis = System.currentTimeMillis();
        int delete = this.zzcaE.delete("writes", null, null);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Deleted %d (all) write(s) in %dms", Integer.valueOf(delete), Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public zzbsc zza(zzbph zzbphVar) {
        return zzb(zzbphVar);
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zza(long j, Set<zzbrq> set) {
        zzWS();
        long currentTimeMillis = System.currentTimeMillis();
        this.zzcaE.delete("trackedKeys", "id = ?", new String[]{String.valueOf(j)});
        for (zzbrq zzbrqVar : set) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Long.valueOf(j));
            contentValues.put("key", zzbrqVar.asString());
            this.zzcaE.insertWithOnConflict("trackedKeys", null, contentValues, 5);
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Set %d tracked query keys for tracked query %d in %dms", Integer.valueOf(set.size()), Long.valueOf(j), Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zza(long j, Set<zzbrq> set, Set<zzbrq> set2) {
        zzWS();
        long currentTimeMillis = System.currentTimeMillis();
        String valueOf = String.valueOf(j);
        Iterator<zzbrq> it = set2.iterator();
        while (it.hasNext()) {
            this.zzcaE.delete("trackedKeys", "id = ? AND key = ?", new String[]{valueOf, it.next().asString()});
        }
        for (zzbrq zzbrqVar : set) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Long.valueOf(j));
            contentValues.put("key", zzbrqVar.asString());
            this.zzcaE.insertWithOnConflict("trackedKeys", null, contentValues, 5);
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Updated tracked query keys (%d added, %d removed) for tracked query id %d in %dms", Integer.valueOf(set.size()), Integer.valueOf(set2.size()), Long.valueOf(j), Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zza(zzbph zzbphVar, zzboy zzboyVar) {
        zzWS();
        long currentTimeMillis = System.currentTimeMillis();
        Iterator<Map.Entry<zzbph, zzbsc>> it = zzboyVar.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            Map.Entry<zzbph, zzbsc> next = it.next();
            i += zza("serverCache", zzbphVar.zzh(next.getKey()));
            i2 = zzc(zzbphVar.zzh(next.getKey()), next.getValue()) + i2;
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Persisted a total of %d rows and deleted %d rows for a merge at %s in %dms", Integer.valueOf(i2), Integer.valueOf(i), zzbphVar.toString(), Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zza(zzbph zzbphVar, zzboy zzboyVar, long j) {
        zzWS();
        long currentTimeMillis = System.currentTimeMillis();
        zza(zzbphVar, j, "m", zzaf(zzboyVar.zzbe(true)));
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Persisted user merge in %dms", Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zza(zzbph zzbphVar, zzbqn zzbqnVar) {
        if (!zzbqnVar.zzZI()) {
            return;
        }
        zzWS();
        long currentTimeMillis = System.currentTimeMillis();
        Cursor zza2 = zza(zzbphVar, new String[]{"rowid", "path"});
        zzbqq<Long> zzbqqVar = new zzbqq<>(null);
        zzbqq<Long> zzbqqVar2 = new zzbqq<>(null);
        while (zza2.moveToNext()) {
            long j = zza2.getLong(0);
            zzbph zzbphVar2 = new zzbph(zza2.getString(1));
            if (!zzbphVar.zzi(zzbphVar2)) {
                zzbrn zzbrnVar = this.zzcaF;
                String valueOf = String.valueOf(zzbphVar);
                String valueOf2 = String.valueOf(zzbphVar2);
                zzbrnVar.warn(new StringBuilder(String.valueOf(valueOf).length() + 67 + String.valueOf(valueOf2).length()).append("We are pruning at ").append(valueOf).append(" but we have data stored higher up at ").append(valueOf2).append(". Ignoring.").toString());
            } else {
                zzbph zza3 = zzbph.zza(zzbphVar, zzbphVar2);
                if (zzbqnVar.zzw(zza3)) {
                    zzbqqVar = zzbqqVar.zzb(zza3, (zzbph) Long.valueOf(j));
                } else if (zzbqnVar.zzx(zza3)) {
                    zzbqqVar2 = zzbqqVar2.zzb(zza3, (zzbph) Long.valueOf(j));
                } else {
                    zzbrn zzbrnVar2 = this.zzcaF;
                    String valueOf3 = String.valueOf(zzbphVar);
                    String valueOf4 = String.valueOf(zzbphVar2);
                    zzbrnVar2.warn(new StringBuilder(String.valueOf(valueOf3).length() + 88 + String.valueOf(valueOf4).length()).append("We are pruning at ").append(valueOf3).append(" and have data at ").append(valueOf4).append(" that isn't marked for pruning or keeping. Ignoring.").toString());
                }
            }
        }
        int i = 0;
        int i2 = 0;
        if (!zzbqqVar.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            zza(zzbphVar, zzbph.zzYP(), zzbqqVar, zzbqqVar2, zzbqnVar, arrayList);
            Collection<Long> values = zzbqqVar.values();
            String valueOf5 = String.valueOf(zzp(values));
            this.zzcaE.delete("serverCache", new StringBuilder(String.valueOf(valueOf5).length() + 11).append("rowid IN (").append(valueOf5).append(")").toString(), null);
            for (zzbtb<zzbph, zzbsc> zzbtbVar : arrayList) {
                zzc(zzbphVar.zzh(zzbtbVar.getFirst()), zzbtbVar.zzabJ());
            }
            i = values.size();
            i2 = arrayList.size();
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (!this.zzcaF.zzaaD()) {
            return;
        }
        this.zzcaF.zzi(String.format("Pruned %d rows with %d nodes resaved in %dms", Integer.valueOf(i), Integer.valueOf(i2), Long.valueOf(currentTimeMillis2)), new Object[0]);
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zza(zzbph zzbphVar, zzbsc zzbscVar) {
        zzWS();
        zza(zzbphVar, zzbscVar, false);
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zza(zzbph zzbphVar, zzbsc zzbscVar, long j) {
        zzWS();
        long currentTimeMillis = System.currentTimeMillis();
        zza(zzbphVar, j, "o", zzaf(zzbscVar.getValue(true)));
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Persisted user overwrite in %dms", Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zza(zzbqo zzbqoVar) {
        zzWS();
        long currentTimeMillis = System.currentTimeMillis();
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Long.valueOf(zzbqoVar.id));
        contentValues.put("path", zzc(zzbqoVar.zzchm.zzWM()));
        contentValues.put("queryParams", zzbqoVar.zzchm.zzaaq().zzaao());
        contentValues.put("lastUse", Long.valueOf(zzbqoVar.zzchn));
        contentValues.put(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE, Boolean.valueOf(zzbqoVar.zzcho));
        contentValues.put("active", Boolean.valueOf(zzbqoVar.zzbqY));
        this.zzcaE.insertWithOnConflict("trackedQueries", null, contentValues, 5);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Saved new tracked query in %dms", Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zzaD(long j) {
        zzWS();
        long currentTimeMillis = System.currentTimeMillis();
        int delete = this.zzcaE.delete("writes", "id = ?", new String[]{String.valueOf(j)});
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Deleted %d write(s) with writeId %d in %dms", Integer.valueOf(delete), Long.valueOf(j), Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zzaE(long j) {
        zzWS();
        String valueOf = String.valueOf(j);
        this.zzcaE.delete("trackedQueries", "id = ?", new String[]{valueOf});
        this.zzcaE.delete("trackedKeys", "id = ?", new String[]{valueOf});
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zzaF(long j) {
        zzWS();
        long currentTimeMillis = System.currentTimeMillis();
        ContentValues contentValues = new ContentValues();
        contentValues.put("active", (Boolean) false);
        contentValues.put("lastUse", Long.valueOf(j));
        this.zzcaE.updateWithOnConflict("trackedQueries", contentValues, "active = 1", new String[0], 5);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Reset active tracked queries in %dms", Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbqm
    public Set<zzbrq> zzaG(long j) {
        return zzg(Collections.singleton(Long.valueOf(j)));
    }

    @Override // com.google.android.gms.internal.zzbqm
    public void zzb(zzbph zzbphVar, zzbsc zzbscVar) {
        zzWS();
        zza(zzbphVar, zzbscVar, true);
    }

    @Override // com.google.android.gms.internal.zzbqm
    public Set<zzbrq> zzg(Set<Long> set) {
        long currentTimeMillis = System.currentTimeMillis();
        String valueOf = String.valueOf("id IN (");
        String valueOf2 = String.valueOf(zzp(set));
        Cursor query = this.zzcaE.query(true, "trackedKeys", new String[]{"key"}, new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append(valueOf2).append(")").toString(), null, null, null, null, null);
        HashSet hashSet = new HashSet();
        while (query.moveToNext()) {
            try {
                hashSet.add(zzbrq.zzja(query.getString(0)));
            } finally {
                query.close();
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(String.format("Loaded %d tracked queries keys for tracked queries %s in %dms", Integer.valueOf(hashSet.size()), set.toString(), Long.valueOf(currentTimeMillis2)), new Object[0]);
        }
        return hashSet;
    }
}
