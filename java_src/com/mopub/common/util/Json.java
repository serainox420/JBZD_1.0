package com.mopub.common.util;

import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes3.dex */
public class Json {
    public static Map<String, String> jsonStringToMap(String str) throws JSONException {
        HashMap hashMap = new HashMap();
        if (TextUtils.isEmpty(str)) {
            return hashMap;
        }
        JSONObject jSONObject = (JSONObject) new JSONTokener(str).nextValue();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, jSONObject.getString(next));
        }
        return hashMap;
    }

    public static String mapToJsonString(Map<String, String> map) {
        if (map == null) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        boolean z = true;
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                Map.Entry<String, String> next = it.next();
                if (!z2) {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(next.getKey());
                sb.append("\":\"");
                sb.append(next.getValue());
                sb.append("\"");
                z = false;
            } else {
                sb.append("}");
                return sb.toString();
            }
        }
    }

    public static String[] jsonArrayToStringArray(String str) {
        try {
            JSONArray jSONArray = ((JSONObject) new JSONTokener("{key:" + str + "}").nextValue()).getJSONArray("key");
            String[] strArr = new String[jSONArray.length()];
            for (int i = 0; i < strArr.length; i++) {
                strArr[i] = jSONArray.getString(i);
            }
            return strArr;
        } catch (JSONException e) {
            return new String[0];
        }
    }

    public static <T> T getJsonValue(JSONObject jSONObject, String str, Class<T> cls) {
        if (jSONObject == null || str == null || cls == null) {
            throw new IllegalArgumentException("Cannot pass any null argument to getJsonValue");
        }
        Object opt = jSONObject.opt(str);
        if (opt == null) {
            MoPubLog.w("Tried to get Json value with key: " + str + ", but it was null");
            return null;
        } else if (!cls.isInstance(opt)) {
            MoPubLog.w("Tried to get Json value with key: " + str + ", of type: " + cls.toString() + ", its type did not match");
            return null;
        } else {
            return cls.cast(opt);
        }
    }
}
