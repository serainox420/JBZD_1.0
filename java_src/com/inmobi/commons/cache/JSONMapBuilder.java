package com.inmobi.commons.cache;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class JSONMapBuilder implements MapBuilder {
    @Override // com.inmobi.commons.cache.MapBuilder
    public Map<String, Object> buildMap(String str) throws Exception {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        a(jSONObject, hashMap);
        return hashMap;
    }

    private void a(JSONObject jSONObject, Map<String, Object> map) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                Object obj = jSONObject.get(next);
                if (obj instanceof JSONObject) {
                    HashMap hashMap = new HashMap();
                    map.put(next, hashMap);
                    a((JSONObject) obj, hashMap);
                } else {
                    map.put(next, obj);
                }
            } catch (JSONException e) {
            }
        }
    }
}
