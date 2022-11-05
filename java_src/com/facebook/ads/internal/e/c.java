package com.facebook.ads.internal.e;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c extends g {

    /* renamed from: a  reason: collision with root package name */
    public static final b f2133a = new b(0, "event_id", "TEXT PRIMARY KEY");
    public static final b b = new b(1, "token_id", "TEXT REFERENCES tokens ON UPDATE CASCADE ON DELETE RESTRICT");
    public static final b c = new b(2, "priority", "INTEGER");
    public static final b d = new b(3, "type", "TEXT");
    public static final b e = new b(4, "time", "REAL");
    public static final b f = new b(5, "session_time", "REAL");
    public static final b g = new b(6, "session_id", "TEXT");
    public static final b h = new b(7, "data", "TEXT");
    public static final b[] i = {f2133a, b, c, d, e, f, g, h};
    private static final String k = a("events", i);

    public c(d dVar) {
        super(dVar);
    }

    @Override // com.facebook.ads.internal.e.g
    public String a() {
        return "events";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str, int i2, String str2, double d2, double d3, String str3, Map<String, String> map) {
        String uuid = UUID.randomUUID().toString();
        ContentValues contentValues = new ContentValues(7);
        contentValues.put(f2133a.b, uuid);
        contentValues.put(b.b, str);
        contentValues.put(c.b, Integer.valueOf(i2));
        contentValues.put(d.b, str2);
        contentValues.put(e.b, Double.valueOf(d2));
        contentValues.put(f.b, Double.valueOf(d3));
        contentValues.put(g.b, str3);
        contentValues.put(h.b, map != null ? new JSONObject(map).toString() : null);
        e().insertOrThrow("events", null, contentValues);
        return uuid;
    }

    public boolean a(String str) {
        return e().delete("events", new StringBuilder().append(f2133a.b).append(" = ?").toString(), new String[]{str}) > 0;
    }

    @Override // com.facebook.ads.internal.e.g
    public b[] b() {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cursor c() {
        return e().rawQuery(k, null);
    }
}
