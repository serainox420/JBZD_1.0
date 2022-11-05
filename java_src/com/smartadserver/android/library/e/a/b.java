package com.smartadserver.android.library.e.a;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.pubmatic.sdk.common.mocean.MoceanAdRequest;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import com.smartadserver.android.library.c.j;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SASAdCallHelper.java */
/* loaded from: classes3.dex */
public class b extends a {
    private boolean f;

    public b(Context context) {
        super(context);
        this.f = false;
    }

    public String b(String str, int i, String str2, int i2, String str3, boolean z) {
        boolean z2;
        String str4;
        try {
            Integer.parseInt(str2);
            z2 = true;
        } catch (NumberFormatException e) {
            if (str2 == null || !str2.startsWith("(") || !str2.endsWith(")")) {
                z2 = false;
            } else {
                str2 = str2.substring(1, str2.length() - 1);
                z2 = false;
            }
        }
        if (z2) {
            str4 = str + "/ac?siteid=%s&pgid=%s&fmtid=%s&visit=%s&tmstp=%s&tgt=%s&uid=%s";
        } else {
            str4 = str + "/ac?siteid=%s&pgname=%s&fmtid=%s&visit=%s&tmstp=%s&tgt=%s&uid=%s";
        }
        if (str3 == null) {
            str3 = "";
        }
        String a2 = a(z);
        this.e = Long.parseLong(a2);
        Object[] objArr = new Object[7];
        objArr[0] = Integer.valueOf(i);
        objArr[1] = com.smartadserver.android.library.g.c.g(str2);
        objArr[2] = Integer.valueOf(i2);
        objArr[3] = z ? MoceanAdRequest.GENDER_MALE : "S";
        objArr[4] = a2;
        objArr[5] = com.smartadserver.android.library.g.c.g(str3);
        objArr[6] = this.c;
        return String.format(str4, objArr);
    }

    @Override // com.smartadserver.android.library.e.a.a
    public String a(String str, int i, String str2, int i2, String str3, boolean z) {
        try {
            AdvertisingIdClient.Info a2 = com.smartadserver.android.library.g.c.a((Context) null, false);
            if (a2 != null) {
                this.c = a2.getId();
                this.f = a2.isLimitAdTrackingEnabled();
            }
        } catch (NoClassDefFoundError e) {
            com.smartadserver.android.library.g.c.a("Missing Google play services framework : " + e.getMessage());
        }
        return b(str, i, str2, i2, str3, z);
    }

    @Override // com.smartadserver.android.library.e.a.a
    public HttpPost a(String str, JSONObject jSONObject) {
        boolean z = false;
        HttpPost httpPost = new HttpPost(str);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("appname", this.f5430a);
            jSONObject2.put("bundleid", this.b);
            jSONObject2.put("uid", this.c);
            jSONObject2.put("platform", "Android");
            jSONObject2.put("sdkname", "SDKAndroid");
            jSONObject2.put("version", "6.6.2");
            jSONObject2.put("rev", com.smartadserver.android.library.g.c.g());
            JSONArray jSONArray = new JSONArray();
            for (int i : j.a()) {
                jSONArray.put(i);
            }
            jSONObject2.put("mediationsdks", jSONArray);
            jSONObject2.put("connexion", b());
            jSONObject2.put(PubMaticConstants.LANGUAGE, Locale.getDefault().getLanguage());
            if (!this.f) {
                z = true;
            }
            jSONObject2.put("tracking", z);
            if (jSONObject != null) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject2.put(next, jSONObject.get(next));
                }
            }
            String jSONObject3 = jSONObject2.toString();
            com.smartadserver.android.library.g.c.a("JSON message posted to the server : " + jSONObject3);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new BasicNameValuePair("jsonMessage", jSONObject3));
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList));
        } catch (UnsupportedEncodingException e) {
        } catch (JSONException e2) {
        }
        return httpPost;
    }
}
