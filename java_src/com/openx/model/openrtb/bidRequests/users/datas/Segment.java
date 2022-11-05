package com.openx.model.openrtb.bidRequests.users.datas;

import com.openx.model.openrtb.bidRequests.BaseBid;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Segment extends BaseBid {
    private JSONObject jsonObject;
    public String id = null;
    public String name = null;
    public String value = null;

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "id", this.id);
        toJSON(this.jsonObject, "name", this.name);
        toJSON(this.jsonObject, "value", this.value);
        return this.jsonObject;
    }
}
