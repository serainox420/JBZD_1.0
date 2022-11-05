package com.applovin.impl.sdk;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class ay {
    private static Object a(Object obj) {
        if (obj == JSONObject.NULL) {
            return null;
        }
        return obj instanceof JSONObject ? a((JSONObject) obj) : obj instanceof JSONArray ? a((JSONArray) obj) : obj;
    }

    public static List a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(a(jSONArray.get(i)));
        }
        return arrayList;
    }

    public static Map a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, a(jSONObject.get(next)).toString());
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(Map map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            jSONObject.put((String) entry.getKey(), entry.getValue());
        }
        return jSONObject;
    }
}
