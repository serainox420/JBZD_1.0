package com.millennialmedia.internal.utils;

import com.millennialmedia.MMLog;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class JSONUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4175a = JSONUtils.class.getName();

    public static JSONArray buildFromList(List list) {
        if (list == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (Object obj : list) {
            jSONArray.put(buildFromObject(obj));
        }
        return jSONArray;
    }

    public static JSONObject buildFromMap(Map<String, ? extends Object> map) {
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), buildFromObject(entry.getValue()));
            }
        } catch (JSONException e) {
            MMLog.e(f4175a, "Error building JSON from Map");
        }
        return jSONObject;
    }

    public static Object buildFromObject(Object obj) {
        if (obj instanceof Map) {
            return buildFromMap((Map) obj);
        }
        if (obj instanceof List) {
            return buildFromList((List) obj);
        }
        return obj;
    }

    public static String[] convertToStringArray(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null) {
            return new String[0];
        }
        String[] strArr = new String[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            strArr[i] = jSONArray.getString(i);
        }
        return strArr;
    }

    public static String[] getStringArray(JSONObject jSONObject, String str) throws JSONException {
        return jSONObject != null ? convertToStringArray(jSONObject.getJSONArray(str)) : new String[0];
    }

    public static int optInt(JSONObject jSONObject, String str, int i) {
        return jSONObject != null ? jSONObject.optInt(str, i) : i;
    }
}
