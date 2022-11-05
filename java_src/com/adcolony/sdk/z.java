package com.adcolony.sdk;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    String f1506a;
    JSONObject b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(JSONObject jSONObject) {
        try {
            this.b = jSONObject;
            this.f1506a = jSONObject.getString("m_type");
        } catch (JSONException e) {
            u.h.a("JSON Error in ADCMessage constructor: ").b(e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(String str, int i) {
        try {
            this.f1506a = str;
            this.b = new JSONObject();
            this.b.put("m_target", i);
        } catch (JSONException e) {
            u.h.a("JSON Error in ADCMessage constructor: ").b(e.toString());
        }
    }

    z(String str, int i, String str2) {
        try {
            this.f1506a = str;
            this.b = s.a(str2);
            this.b.put("m_target", i);
        } catch (JSONException e) {
            u.h.a("JSON Error in ADCMessage constructor: ").b(e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(String str, int i, JSONObject jSONObject) {
        try {
            this.f1506a = str;
            this.b = jSONObject;
            this.b.put("m_target", i);
        } catch (JSONException e) {
            u.h.a("JSON Error in ADCMessage constructor: ").b(e.toString());
        }
    }

    z a() {
        return a((JSONObject) null);
    }

    z a(String str) {
        return a(s.a(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z a(JSONObject jSONObject) {
        try {
            z zVar = new z("reply", this.b.getInt("m_origin"), jSONObject);
            zVar.b.put("m_id", this.b.getInt("m_id"));
            return zVar;
        } catch (JSONException e) {
            u.h.a("JSON error in ADCMessage's create_reply(): ").b(e.toString());
            return new z("JSONException", 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a.a(this.f1506a, this.b);
    }
}
