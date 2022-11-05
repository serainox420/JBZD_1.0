package com.facebook.ads.internal.f;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f2142a;
    private final JSONObject b;
    private final Map<h, List<String>> c = new HashMap();

    public a(String str, JSONObject jSONObject, JSONArray jSONArray) {
        int i = 0;
        this.f2142a = str;
        this.b = jSONObject;
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        for (h hVar : h.values()) {
            this.c.put(hVar, new LinkedList());
        }
        while (true) {
            int i2 = i;
            if (i2 >= jSONArray.length()) {
                return;
            }
            try {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                String string = jSONObject2.getString("type");
                String string2 = jSONObject2.getString("url");
                h valueOf = h.valueOf(string.toUpperCase(Locale.US));
                if (valueOf != null && !TextUtils.isEmpty(string2)) {
                    this.c.get(valueOf).add(string2);
                }
            } catch (Exception e) {
            }
            i = i2 + 1;
        }
    }

    public String a() {
        return this.f2142a;
    }

    public List<String> a(h hVar) {
        return this.c.get(hVar);
    }

    public JSONObject b() {
        return this.b;
    }
}
