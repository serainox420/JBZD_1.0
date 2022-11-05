package com.apprupt.sdk;

import org.json.JSONObject;
/* loaded from: classes.dex */
public class CvContentResponse {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f1779a;
    public final String b;
    public final int c;
    public final Exception d;
    public final JSONObject e;

    public CvContentResponse(JSONObject jSONObject) {
        this.f1779a = false;
        this.b = "";
        this.d = null;
        this.e = jSONObject;
        this.c = 0;
    }

    public CvContentResponse(String str, Exception exc, int i) {
        this.f1779a = true;
        this.b = str;
        this.d = exc;
        this.e = null;
        this.c = i;
    }
}
