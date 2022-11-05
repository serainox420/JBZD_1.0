package com.facebook.ads.internal.f;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public String f2144a;
    public String b;
    public String c;
    public Date d;
    public boolean e;

    public b(String str, String str2, String str3, Date date) {
        this.f2144a = str;
        this.b = str2;
        this.c = str3;
        this.d = date;
        this.e = (str2 == null || str3 == null) ? false : true;
    }

    public b(JSONObject jSONObject) {
        this(jSONObject.optString("url"), jSONObject.optString("key"), jSONObject.optString("value"), new Date(jSONObject.optLong("expiration") * 1000));
    }

    public static List<b> a(String str) {
        JSONArray jSONArray;
        JSONObject jSONObject;
        b bVar;
        if (str == null) {
            return null;
        }
        try {
            jSONArray = new JSONArray(str);
        } catch (JSONException e) {
            jSONArray = null;
        }
        if (jSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                jSONObject = jSONArray.getJSONObject(i);
            } catch (JSONException e2) {
                jSONObject = null;
            }
            if (jSONObject != null && (bVar = new b(jSONObject)) != null) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public String a() {
        Date date = this.d;
        if (date == null) {
            date = new Date();
            date.setTime(date.getTime() + 3600000);
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd-MMM-yyyy HH:mm:ss zzz");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(date);
    }

    public boolean b() {
        return (this.b == null || this.c == null || this.f2144a == null) ? false : true;
    }
}
