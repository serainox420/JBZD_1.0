package com.amazon.device.ads;

import org.json.JSONObject;
/* loaded from: classes.dex */
class ViewabilityInfo {
    private boolean isAdOnScreen;
    private JSONObject jsonObject;

    public ViewabilityInfo(boolean z, JSONObject jSONObject) {
        this.jsonObject = jSONObject;
        this.isAdOnScreen = z;
    }

    public boolean isAdOnScreen() {
        return this.isAdOnScreen;
    }

    public JSONObject getJsonObject() {
        return this.jsonObject;
    }
}
