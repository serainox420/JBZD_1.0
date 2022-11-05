package com.adcolony.sdk;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
class cg implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final String f1277a = "meta";
    static final String b = "actions";
    static final String c = "messageId";
    static final String d = "sendId";
    b e;
    List<a> f;
    String g;
    String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cg(JSONObject jSONObject) {
        try {
            this.g = jSONObject.getString(c);
            this.h = jSONObject.getString(d);
            this.e = new b(jSONObject.getJSONObject("onClick"));
            JSONArray jSONArray = jSONObject.getJSONArray(b);
            this.f = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                this.f.add(new a(co.b(jSONArray.getJSONObject(i))));
            }
        } catch (JSONException e) {
            cb.b("[YvolverPushMetaData-ERR]", "caught meta exception: " + e, true);
        }
    }

    cg(b bVar, List<a> list) {
        this.e = bVar;
        this.f = list;
    }

    String a() {
        return this.e.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(c, this.g);
            jSONObject.put(d, this.h);
            if (this.e != null) {
                jSONObject.put("onClick", this.e.a());
            }
            String c2 = c();
            if (c2 != null && !c2.isEmpty()) {
                jSONObject.put(b, c2);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            cb.b("PushMetaData", "caught JSONException:" + e.getMessage(), true);
            return "";
        }
    }

    private String c() {
        if (this.f != null) {
            JSONArray jSONArray = new JSONArray();
            int i = 0;
            Iterator<a> it = this.f.iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    jSONArray.put(it.next().a());
                    i = i2 + 1;
                } else {
                    return jSONArray.toString();
                }
            }
        } else {
            return "";
        }
    }

    /* loaded from: classes.dex */
    class b implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final String f1279a = "onClick";
        static final String b = "method";
        static final String c = "parameters";
        String d;
        HashMap<String, Serializable> e;

        b(JSONObject jSONObject) throws JSONException {
            this.d = jSONObject.getString("method");
            this.e = co.b(jSONObject.getJSONObject(c));
        }

        b(String str, HashMap<String, Serializable> hashMap) {
            this.d = str;
            this.e = hashMap;
        }

        String a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("method", this.d);
                jSONObject.put(c, this.e);
                return jSONObject.toString();
            } catch (JSONException e) {
                return "";
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final String f1278a = "action";
        HashMap<String, Serializable> b;

        a(HashMap<String, Serializable> hashMap) {
            this.b = hashMap;
        }

        String a() {
            return "{" + this.b + "}";
        }
    }
}
