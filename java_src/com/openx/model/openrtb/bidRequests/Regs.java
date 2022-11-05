package com.openx.model.openrtb.bidRequests;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Regs extends BaseBid {
    public Integer coppa = null;
    private JSONObject jsonObject;

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "coppa", this.coppa);
        return this.jsonObject;
    }
}
