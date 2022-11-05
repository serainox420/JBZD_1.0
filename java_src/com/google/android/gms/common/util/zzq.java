package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class zzq {
    private static final Pattern zzaIl = Pattern.compile("\\\\.");
    private static final Pattern zzaIm = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    public static String zzdy(String str) {
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = zzaIm.matcher(str);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                }
                switch (matcher.group().charAt(0)) {
                    case '\b':
                        matcher.appendReplacement(stringBuffer, "\\\\b");
                        break;
                    case '\t':
                        matcher.appendReplacement(stringBuffer, "\\\\t");
                        break;
                    case '\n':
                        matcher.appendReplacement(stringBuffer, "\\\\n");
                        break;
                    case '\f':
                        matcher.appendReplacement(stringBuffer, "\\\\f");
                        break;
                    case '\r':
                        matcher.appendReplacement(stringBuffer, "\\\\r");
                        break;
                    case '\"':
                        matcher.appendReplacement(stringBuffer, "\\\\\\\"");
                        break;
                    case '/':
                        matcher.appendReplacement(stringBuffer, "\\\\/");
                        break;
                    case '\\':
                        matcher.appendReplacement(stringBuffer, "\\\\\\\\");
                        break;
                }
            }
            if (stringBuffer == null) {
                return str;
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        }
        return str;
    }

    public static boolean zze(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if (!(obj instanceof JSONObject) || !(obj2 instanceof JSONObject)) {
            if (!(obj instanceof JSONArray) || !(obj2 instanceof JSONArray)) {
                return obj.equals(obj2);
            } else {
                JSONArray jSONArray = (JSONArray) obj;
                JSONArray jSONArray2 = (JSONArray) obj2;
                if (jSONArray.length() != jSONArray2.length()) {
                    return false;
                }
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        if (!zze(jSONArray.get(i), jSONArray2.get(i))) {
                            return false;
                        }
                    } catch (JSONException e) {
                        return false;
                    }
                }
                return true;
            }
        }
        JSONObject jSONObject = (JSONObject) obj;
        JSONObject jSONObject2 = (JSONObject) obj2;
        if (jSONObject.length() != jSONObject2.length()) {
            return false;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!jSONObject2.has(next)) {
                return false;
            }
            try {
                if (!zze(jSONObject.get(next), jSONObject2.get(next))) {
                    return false;
                }
            } catch (JSONException e2) {
                return false;
            }
        }
        return true;
    }
}
