package com.adcolony.sdk;

import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
class s {
    s() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a() {
        return new JSONObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(String str) {
        try {
            return new JSONObject(str);
        } catch (JSONException e) {
            u.h.b(e.toString());
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONArray b() {
        return new JSONArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONArray b(String str) {
        try {
            return new JSONArray(str);
        } catch (JSONException e) {
            u.h.b(e.toString());
            return new JSONArray();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(JSONArray jSONArray, int i) {
        try {
            return jSONArray.getJSONObject(i);
        } catch (JSONException e) {
            u.h.b(e.toString());
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(JSONObject jSONObject, String str) {
        try {
            return jSONObject.get(str);
        } catch (JSONException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(JSONArray jSONArray, int i) {
        try {
            return jSONArray.getString(i);
        } catch (JSONException e) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException e) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getInt(str);
        } catch (JSONException e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(JSONObject jSONObject, String str, int i) {
        try {
            return jSONObject.getInt(str);
        } catch (JSONException e) {
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double e(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getDouble(str);
        } catch (JSONException e) {
            return 0.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject f(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getJSONObject(str);
        } catch (JSONException e) {
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject c(JSONArray jSONArray, int i) {
        try {
            return jSONArray.getJSONObject(i);
        } catch (JSONException e) {
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONArray g(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getJSONArray(str);
        } catch (JSONException e) {
            return new JSONArray();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(JSONObject jSONObject, String str, String str2) {
        try {
            jSONObject.put(str, str2);
            return true;
        } catch (JSONException e) {
            u.h.a("JSON error in ADCJSON put_string(): ").b(e.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(JSONObject jSONObject, String str, int i) {
        try {
            jSONObject.put(str, i);
            return true;
        } catch (JSONException e) {
            u.h.a("JSON error in ADCJSON put_integer(): ").b(e.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(JSONObject jSONObject, String str, long j) {
        try {
            jSONObject.put(str, j);
            return true;
        } catch (JSONException e) {
            u.h.a("JSON error in ADCJSON put_integer(): ").b(e.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(JSONObject jSONObject, String str, boolean z) {
        try {
            jSONObject.put(str, z);
            return true;
        } catch (JSONException e) {
            u.h.a("JSON error in ADCJSON put_boolean(): ").b(e.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(JSONObject jSONObject, String str, JSONArray jSONArray) {
        try {
            jSONObject.put(str, jSONArray);
            return true;
        } catch (JSONException e) {
            u.h.a("JSON error in ADCJSON put_array(): ").b(e.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        try {
            jSONObject.put(str, jSONObject2);
            return true;
        } catch (JSONException e) {
            u.h.a("JSON error in ADCJSON put_object(): ").b(e.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(JSONObject jSONObject, String str, double d) {
        try {
            jSONObject.put(str, d);
            return true;
        } catch (JSONException e) {
            u.h.a("JSON error in ADCJSON put_double(): ").b(e.toString());
            return false;
        }
    }

    static void d(JSONArray jSONArray, int i) {
        jSONArray.put(i);
    }

    static void a(JSONArray jSONArray, boolean z) {
        jSONArray.put(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(JSONArray jSONArray, String str) {
        jSONArray.put(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(JSONArray jSONArray, Object obj) {
        jSONArray.put(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(JSONObject jSONObject, String str) {
        try {
            a.m.i.a(str, jSONObject.toString(), false);
        } catch (IOException e) {
            u.h.a("IOException in ADCJSON's save_object: ").b(e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject c(String str) {
        try {
            return a(a.m.i.a(str, false).toString());
        } catch (IOException e) {
            u.h.a("IOException in ADCJSON's load_object: ").b(e.toString());
            return a();
        }
    }
}
