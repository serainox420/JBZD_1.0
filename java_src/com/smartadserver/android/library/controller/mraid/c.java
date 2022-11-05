package com.smartadserver.android.library.controller.mraid;

import com.pubmatic.sdk.banner.mraid.Consts;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SASMRAIDOrientationProperties.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public boolean f5416a = true;
    public String b = "none";

    public void a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        this.f5416a = jSONObject.optBoolean(Consts.OrientationPpropertiesAllowOrientationChange, this.f5416a);
        this.b = jSONObject.optString(Consts.OrientationPpropertiesForceOrientation, this.b);
    }

    public String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Consts.OrientationPpropertiesAllowOrientationChange, this.f5416a);
            jSONObject.put(Consts.OrientationPpropertiesForceOrientation, this.b);
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }
}
