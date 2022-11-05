package com.smartadserver.android.library.controller.mraid;

import com.pubmatic.sdk.banner.mraid.Consts;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SASMRAIDResizeProperties.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public int f5417a = -1;
    public int b = -1;
    public String c = Consts.ResizePropertiesCCPositionTopRight;
    public int d = 0;
    public int e = 0;
    public boolean f;

    public d() {
        this.f = true;
        this.f = true;
    }

    public void a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        this.f5417a = jSONObject.optInt("width", this.f5417a);
        this.b = jSONObject.optInt("height", this.b);
        this.c = jSONObject.optString(Consts.ResizePropertiesCustomClosePosition, this.c);
        this.d = jSONObject.optInt(Consts.ResizePropertiesOffsetX, this.d);
        this.e = jSONObject.optInt(Consts.ResizePropertiesOffsetY, this.e);
        this.f = jSONObject.optBoolean(Consts.ResizePropertiesAllowOffscreen, this.f);
    }

    public String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", this.f5417a);
            jSONObject.put("height", this.b);
            jSONObject.put(Consts.ResizePropertiesCustomClosePosition, this.c);
            jSONObject.put(Consts.ResizePropertiesOffsetX, this.d);
            jSONObject.put(Consts.ResizePropertiesOffsetY, this.e);
            jSONObject.put(Consts.ResizePropertiesAllowOffscreen, this.f);
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }

    public int b() {
        if (Consts.ResizePropertiesCCPositionTopLeft.equals(this.c)) {
            return 0;
        }
        if (Consts.ResizePropertiesCCPositionTopCenter.equals(this.c)) {
            return 4;
        }
        if (Consts.ResizePropertiesCCPositionBottomLeft.equals(this.c)) {
            return 2;
        }
        if (Consts.ResizePropertiesCCPositionBottomCenter.equals(this.c)) {
            return 5;
        }
        if (Consts.ResizePropertiesCCPositionBottomRight.equals(this.c)) {
            return 3;
        }
        return ("center".equals(this.c) || "none".equals(this.c)) ? 6 : 1;
    }
}
