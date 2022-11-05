package com.adcolony.sdk;

import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColonyPubServicesPushNotification implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f996a = "AdColonyPubServicesPushNotification";
    private static final String b = "payload";
    private static final String c = "id";
    private String d;
    private cg e;
    private String f;
    private boolean g;
    private long h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyPubServicesPushNotification() {
        this.g = false;
        this.h = -1L;
        this.i = false;
        this.d = null;
        this.e = null;
        this.f = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyPubServicesPushNotification(String str, cg cgVar, String str2) {
        this.g = false;
        this.h = -1L;
        this.i = false;
        this.d = str;
        this.e = cgVar;
        this.f = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.e = new cg(jSONObject.getJSONObject("meta"));
            this.f = a(jSONObject, "id");
            this.d = a(jSONObject, b);
        } catch (JSONException e) {
            cb.a(f996a, "Error occurred while parsing PushNotificaiton Data ->" + e.getMessage(), e);
        }
    }

    private String a(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException e) {
            cb.b(f996a, "Error occurred while parsing Push field=" + str + " ->" + e.toString(), true);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cg a() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.g = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        this.h = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.i = z;
    }

    public String getPayload() {
        return this.d;
    }

    public String getId() {
        return this.f;
    }

    public long getTimeReceivedMsSince1970() {
        return this.h;
    }

    public boolean isAdColonyNotification() {
        return this.i;
    }

    public String toString() {
        return ((this.d != null ? "AdColonyPubServicesPushNotification={payload={" + this.d.toString() + "}," : "AdColonyPubServicesPushNotification={payload={},") + "timeReceivedEpoch=" + this.h) + "id=" + this.f + "};";
    }
}
