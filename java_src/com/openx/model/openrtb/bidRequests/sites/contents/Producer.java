package com.openx.model.openrtb.bidRequests.sites.contents;

import com.openx.model.openrtb.bidRequests.BaseBid;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Producer extends BaseBid {
    private JSONObject jsonObject;
    public String id = null;
    public String name = null;
    public String[] cat = null;
    public String domain = null;

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "id", this.id);
        toJSON(this.jsonObject, "name", this.name);
        if (this.cat != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.cat.length; i++) {
                jSONArray.put(this.cat[i]);
            }
            toJSON(this.jsonObject, PubMaticConstants.APP_CATEGORY_PARAM, jSONArray);
        }
        toJSON(this.jsonObject, "domain", this.domain);
        return this.jsonObject;
    }
}
