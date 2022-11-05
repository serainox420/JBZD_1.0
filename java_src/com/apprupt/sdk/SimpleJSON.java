package com.apprupt.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class SimpleJSON {

    /* renamed from: a  reason: collision with root package name */
    public final JSONObject f1969a;
    private JSONException b;

    public SimpleJSON() {
        this(new JSONObject());
    }

    public SimpleJSON(JSONObject jSONObject) {
        this.b = null;
        this.f1969a = jSONObject == null ? new JSONObject() : jSONObject;
    }

    public SimpleJSON(String str) {
        JSONObject jSONObject;
        this.b = null;
        if (str == null) {
            jSONObject = new JSONObject();
        } else {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = new JSONObject();
                this.b = e;
                Logger.a().c(e, "Cannot parse json", str);
            }
        }
        this.f1969a = jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
        if (com.apprupt.sdk.SimpleJSON.class.isInstance(r0) != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object a(String str, Class cls, Object obj) {
        Object obj2;
        if (this.f1969a.has(str)) {
            try {
                Object obj3 = this.f1969a.get(str);
                if (cls != null && !cls.isInstance(obj3)) {
                    if (cls.equals(JSONObject.class)) {
                    }
                    obj2 = obj;
                }
                obj = obj3;
                obj2 = obj;
            } catch (JSONException e) {
                obj2 = obj;
            }
        } else {
            obj2 = obj;
        }
        if (obj2 == null || !obj2.equals(JSONObject.NULL)) {
            if (obj2 instanceof JSONObject) {
                return new SimpleJSON((JSONObject) obj2);
            }
            return obj2;
        }
        return null;
    }

    public String a(String str) {
        return a(str, (String) null);
    }

    public String a(String str, String str2) {
        return (String) a(str, String.class, str2);
    }

    public Number b(String str) {
        return a(str, (Number) 0);
    }

    public Number a(String str, Number number) {
        Object a2 = a(str, Number.class, number);
        return a2 == null ? number : (Number) a2;
    }

    public long b(String str, Number number) {
        return a(str, number).longValue();
    }

    public double c(String str, Number number) {
        return a(str, number).doubleValue();
    }

    public int c(String str) {
        return b(str).intValue();
    }

    public int d(String str, Number number) {
        return a(str, number).intValue();
    }

    public boolean d(String str) {
        return a(str, false);
    }

    public boolean a(String str, boolean z) {
        Object a2 = a(str, Boolean.class, Boolean.valueOf(z));
        if (a2 == null) {
            return false;
        }
        return ((Boolean) a2).booleanValue();
    }

    public SimpleJSON e(String str) {
        return (SimpleJSON) a(str, JSONObject.class, (Object) null);
    }

    public SimpleJSON a(String str, SimpleJSON simpleJSON) {
        return (SimpleJSON) a(str, JSONObject.class, simpleJSON);
    }

    public JSONArray a(String str, Class cls, JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        JSONArray jSONArray3 = (JSONArray) a(str, JSONArray.class, (Object) jSONArray);
        if (cls != null && cls.equals(SimpleJSON.class)) {
            cls = JSONObject.class;
        }
        if (jSONArray3 != null) {
            if (cls != null && !cls.equals(Object.class)) {
                for (int i = 0; i < jSONArray3.length(); i++) {
                    try {
                        Object obj = jSONArray3.get(i);
                        if (obj != null && cls.isInstance(obj) && (!cls.equals(JSONObject.class) || !SimpleJSON.class.isInstance(obj))) {
                            jSONArray2.put(obj);
                        }
                    } catch (JSONException e) {
                        Logger.a().c(e, "Cannot get item from array", Integer.valueOf(i));
                    }
                }
            } else {
                return jSONArray3;
            }
        }
        return jSONArray2;
    }

    public JSONArray a(String str, Class cls) {
        return a(str, cls, (JSONArray) null);
    }

    public boolean f(String str) {
        return this.f1969a.has(str);
    }

    public JSONArray a() {
        JSONArray names = this.f1969a.names();
        if (names == null) {
            return new JSONArray();
        }
        return names;
    }

    public String toString() {
        return b().toString();
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        Iterator<String> keys = this.f1969a.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                Object obj = this.f1969a.get(next);
                if (obj instanceof SimpleJSON) {
                    obj = ((SimpleJSON) obj).b();
                }
                jSONObject.put(next, obj);
            } catch (JSONException e) {
                Logger.a().c(e, "toJSON() failed");
            }
        }
        return jSONObject;
    }

    public SimpleJSON a(String str, Object obj) {
        try {
            this.f1969a.put(str, obj);
        } catch (JSONException e) {
            Logger.a().c(e, "put(key, object) failed");
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.List<java.lang.String>] */
    public List<String> a(String str, List<String> list) {
        JSONArray a2 = a(str, String.class);
        if (a2 != null) {
            list = new ArrayList<>();
            for (int i = 0; i < a2.length(); i++) {
                try {
                    list.add(a2.getString(i));
                } catch (JSONException e) {
                }
            }
        }
        return list;
    }
}
