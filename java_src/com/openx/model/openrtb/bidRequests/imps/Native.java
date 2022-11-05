package com.openx.model.openrtb.bidRequests.imps;

import com.openx.model.openrtb.bidRequests.BaseBid;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Native extends BaseBid {
    public int[] api;
    public int[] battr;
    private JSONObject jsonObject;
    public String request = null;
    public String ver = null;

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "request", this.request);
        toJSON(this.jsonObject, "ver", this.ver);
        if (this.api != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.api.length; i++) {
                jSONArray.put(this.api[i]);
            }
            toJSON(this.jsonObject, PhoenixConstants.APP_API_PARAM, jSONArray);
        }
        if (this.battr != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i2 = 0; i2 < this.battr.length; i2++) {
                jSONArray2.put(this.battr[i2]);
            }
            toJSON(this.jsonObject, PhoenixConstants.BATTR_PARAM, jSONArray2);
        }
        return this.jsonObject;
    }
}
