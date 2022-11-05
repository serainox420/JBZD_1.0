package com.google.android.gms.internal;

import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.json.JSONTokener;
/* loaded from: classes2.dex */
public class zzbsv {
    private static void zza(Object obj, JSONStringer jSONStringer) throws IOException, JSONException {
        if (obj instanceof Map) {
            jSONStringer.object();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                jSONStringer.key((String) entry.getKey());
                zza(entry.getValue(), jSONStringer);
            }
            jSONStringer.endObject();
        } else if (!(obj instanceof Collection)) {
            jSONStringer.value(obj);
        } else {
            jSONStringer.array();
            for (Object obj2 : (Collection) obj) {
                zza(obj2, jSONStringer);
            }
            jSONStringer.endArray();
        }
    }

    public static String zzaF(Map<String, Object> map) throws IOException {
        return zzav(map);
    }

    public static String zzav(Object obj) throws IOException {
        if (obj == null) {
            return "null";
        }
        if (obj instanceof String) {
            return JSONObject.quote((String) obj);
        }
        if (obj instanceof Number) {
            try {
                return JSONObject.numberToString((Number) obj);
            } catch (JSONException e) {
                throw new IOException("Could not serialize number", e);
            }
        } else if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? "true" : Consts.False;
        } else {
            try {
                JSONStringer jSONStringer = new JSONStringer();
                zza(obj, jSONStringer);
                return jSONStringer.toString();
            } catch (JSONException e2) {
                throw new IOException("Failed to serialize JSON", e2);
            }
        }
    }

    private static Object zzaw(Object obj) throws JSONException {
        if (obj instanceof JSONObject) {
            return zzt((JSONObject) obj);
        }
        if (obj instanceof JSONArray) {
            return zze((JSONArray) obj);
        }
        if (!obj.equals(JSONObject.NULL)) {
            return obj;
        }
        return null;
    }

    private static List<Object> zze(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(zzaw(jSONArray.get(i)));
        }
        return arrayList;
    }

    public static Map<String, Object> zzje(String str) throws IOException {
        try {
            return zzt(new JSONObject(str));
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    public static Object zzjf(String str) throws IOException {
        try {
            return zzaw(new JSONTokener(str).nextValue());
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    private static Map<String, Object> zzt(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap(jSONObject.length());
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, zzaw(jSONObject.get(next)));
        }
        return hashMap;
    }
}
