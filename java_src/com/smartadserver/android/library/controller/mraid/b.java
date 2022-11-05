package com.smartadserver.android.library.controller.mraid;

import com.openx.view.mraid.JSInterface;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SASMRAIDExpandProperties.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public int f5415a = 0;
    public int b = 0;
    public boolean c = false;
    public boolean d = true;

    public void a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        this.f5415a = jSONObject.optInt("width", this.f5415a);
        this.b = jSONObject.optInt("height", this.b);
        this.c = jSONObject.optBoolean("useCustomClose", this.c);
        this.d = true;
    }

    public String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", this.f5415a);
            jSONObject.put("height", this.b);
            jSONObject.put("useCustomClose", this.c);
            jSONObject.put(JSInterface.JSON_IS_MODAL, this.d);
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }
}
