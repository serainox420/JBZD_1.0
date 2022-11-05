package com.facebook.ads.internal.g;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.g.e;
import com.facebook.ads.internal.util.z;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class g implements e.a, f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2162a = g.class.getSimpleName();
    private static g b;
    private static double c;
    private static String d;
    private final e e;
    private final com.facebook.ads.internal.e.d f;
    private final Context g;

    protected g(Context context) {
        this.f = new com.facebook.ads.internal.e.d(context);
        this.e = new e(context, this);
        this.e.a(false);
        this.g = context;
        com.facebook.ads.internal.d.a.a(context).a();
    }

    public static g a(Context context) {
        if (b == null) {
            Context applicationContext = context.getApplicationContext();
            synchronized (applicationContext) {
                if (b == null) {
                    b = new g(applicationContext);
                    com.facebook.ads.internal.f.g.a();
                    c = com.facebook.ads.internal.f.g.b();
                    d = com.facebook.ads.internal.f.g.c();
                }
            }
        }
        return b;
    }

    private JSONObject a(Cursor cursor) {
        JSONObject jSONObject = new JSONObject();
        while (cursor.moveToNext()) {
            jSONObject.put(cursor.getString(com.facebook.ads.internal.e.h.f2140a.f2132a), cursor.getString(com.facebook.ads.internal.e.h.b.f2132a));
        }
        return jSONObject;
    }

    private void a(final d dVar) {
        this.f.a(dVar, new com.facebook.ads.internal.e.a<String>() { // from class: com.facebook.ads.internal.g.g.1
            @Override // com.facebook.ads.internal.e.a
            public void a(int i, String str) {
                super.a(i, str);
                if (!(dVar instanceof c)) {
                    g.this.b(str);
                }
            }

            @Override // com.facebook.ads.internal.e.a
            public void a(String str) {
                super.a((AnonymousClass1) str);
                g.this.e.a(dVar.i());
            }
        });
    }

    private JSONArray b(Cursor cursor) {
        JSONArray jSONArray = new JSONArray();
        while (cursor.moveToNext()) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", cursor.getString(com.facebook.ads.internal.e.c.f2133a.f2132a));
            jSONObject.put("token_id", cursor.getString(com.facebook.ads.internal.e.c.b.f2132a));
            jSONObject.put("type", cursor.getString(com.facebook.ads.internal.e.c.d.f2132a));
            jSONObject.put("time", com.facebook.ads.internal.util.h.a(cursor.getDouble(com.facebook.ads.internal.e.c.e.f2132a)));
            jSONObject.put("session_time", com.facebook.ads.internal.util.h.a(cursor.getDouble(com.facebook.ads.internal.e.c.f.f2132a)));
            jSONObject.put("session_id", cursor.getString(com.facebook.ads.internal.e.c.g.f2132a));
            String string = cursor.getString(com.facebook.ads.internal.e.c.h.f2132a);
            jSONObject.put("data", string != null ? new JSONObject(string) : new JSONObject());
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    @Override // com.facebook.ads.internal.g.e.a
    public JSONObject a() {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3;
        Cursor cursor4;
        JSONObject jSONObject;
        JSONArray a2;
        try {
            cursor2 = this.f.e();
            try {
                cursor = this.f.d();
                try {
                    if (cursor2.getCount() <= 0 || cursor.getCount() <= 0) {
                        jSONObject = null;
                    } else {
                        jSONObject = new JSONObject();
                        jSONObject.put("tokens", a(cursor2));
                        jSONObject.put("events", b(cursor));
                    }
                    if (com.facebook.ads.internal.h.c(this.g) && (a2 = com.facebook.ads.internal.util.o.a(this.g)) != null && a2.length() > 0) {
                        if (jSONObject == null) {
                            jSONObject = new JSONObject();
                        }
                        jSONObject.put("debug", a2);
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (cursor == null) {
                        return jSONObject;
                    }
                    cursor.close();
                    return jSONObject;
                } catch (JSONException e) {
                    cursor3 = cursor;
                    cursor4 = cursor2;
                    if (cursor4 != null) {
                        cursor4.close();
                    }
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (JSONException e2) {
                cursor3 = null;
                cursor4 = cursor2;
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
            }
        } catch (JSONException e3) {
            cursor3 = null;
            cursor4 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            cursor2 = null;
        }
    }

    @Override // com.facebook.ads.internal.g.f
    public void a(String str) {
        new z().execute(str);
    }

    public void a(String str, com.facebook.ads.internal.util.l lVar) {
        a(new a(str, c, d, lVar));
    }

    @Override // com.facebook.ads.internal.g.f
    public void a(String str, Map<String, String> map) {
        new z(map).execute(str);
    }

    public void a(String str, Map<String, String> map, String str2, h hVar) {
        a(new l(this.g, str, c, d, map, str2, hVar));
    }

    @Override // com.facebook.ads.internal.g.f
    public void a(String str, Map<String, String> map, Map<String, String> map2) {
        new z(map, map2).execute(str);
    }

    @Override // com.facebook.ads.internal.g.e.a
    public boolean a(JSONArray jSONArray) {
        boolean c2 = com.facebook.ads.internal.h.c(this.g);
        boolean z = false;
        boolean z2 = true;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString("id");
                int i2 = jSONObject.getInt("code");
                if (i2 == 1) {
                    if (!c2 || jSONObject.optInt("dbtype", 0) != 1) {
                        this.f.a(string);
                    } else {
                        z = true;
                    }
                } else if (i2 >= 1000 && i2 < 2000) {
                    z2 = false;
                } else if (i2 >= 2000 && i2 < 3000) {
                    if (!c2 || jSONObject.optInt("dbtype", 0) != 1) {
                        this.f.a(string);
                    } else {
                        z = true;
                    }
                }
            } catch (JSONException e) {
            }
        }
        if (z) {
            com.facebook.ads.internal.util.o.b(this.g);
        }
        return z2;
    }

    @Override // com.facebook.ads.internal.g.e.a
    public void b() {
        this.f.f();
        this.f.b();
    }

    public void b(String str) {
        Log.e(f2162a, "AdEventManager error: " + str);
    }

    @Override // com.facebook.ads.internal.g.f
    public void b(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new i(this.g, str, c, d, map));
    }

    @Override // com.facebook.ads.internal.g.f
    public void c(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new k(this.g, str, c, d, map));
    }

    @Override // com.facebook.ads.internal.g.f
    public void d(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new o(this.g, str, c, d, map));
    }

    @Override // com.facebook.ads.internal.g.f
    public void e(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new m(str, c, d, map));
    }

    @Override // com.facebook.ads.internal.g.f
    public void f(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new b(this.g, str, c, d, map));
    }

    public void g(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new j(this.g, str, c, d, map));
    }

    public void h(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new n(this.g, str, c, d, map));
    }
}
