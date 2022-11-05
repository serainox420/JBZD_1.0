package com.flurry.sdk;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class lz {
    public static void a(JSONObject jSONObject, String str, Object obj) throws NullPointerException, JSONException {
        if (obj == null) {
            jSONObject.put(str, JSONObject.NULL);
        } else {
            jSONObject.put(str, obj);
        }
    }

    public static void a(JSONObject jSONObject, String str, String str2) throws IOException, JSONException {
        if (str2 != null) {
            jSONObject.put(str, str2);
        } else {
            jSONObject.put(str, JSONObject.NULL);
        }
    }

    public static void a(JSONObject jSONObject, String str, float f) throws IOException, JSONException {
        jSONObject.putOpt(str, Float.valueOf(f));
    }

    public static Map<String, String> a(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!(next instanceof String)) {
                throw new JSONException("JSONObject contains unsupported type for key in the map.");
            }
            String str = next;
            Object obj = jSONObject.get(str);
            if (!(obj instanceof String)) {
                throw new JSONException("JSONObject contains unsupported type for value in the map.");
            }
            hashMap.put(str, (String) obj);
        }
        return hashMap;
    }

    public static List<JSONObject> a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                Object obj = jSONArray.get(i2);
                if (!(obj instanceof JSONObject)) {
                    throw new JSONException("Array contains unsupported objects. JSONArray param must contain JSON object.");
                }
                arrayList.add((JSONObject) obj);
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
    }

    public static List<String> b(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                Object obj = jSONArray.get(i2);
                if (!(obj instanceof String)) {
                    throw new JSONException("Array contains unsupported objects. JSONArray param must contain String object.");
                }
                arrayList.add((String) obj);
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
    }
}
