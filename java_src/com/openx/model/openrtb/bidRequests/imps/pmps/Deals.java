package com.openx.model.openrtb.bidRequests.imps.pmps;

import com.openx.model.openrtb.bidRequests.BaseBid;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Deals extends BaseBid {
    public Float bidfloor;
    JSONObject jsonObject;
    public String id = null;
    public String bidfloorcur = null;
    public Integer at = null;
    public String[] wseat = null;
    public String[] wadomain = null;

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "id", this.id);
        toJSON(this.jsonObject, "bidfloor", this.bidfloor);
        toJSON(this.jsonObject, "bidfloorcur", this.bidfloorcur);
        toJSON(this.jsonObject, "at", this.at);
        if (this.wseat != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.wseat.length; i++) {
                jSONArray.put(this.wseat[i]);
            }
            toJSON(this.jsonObject, "wseat", jSONArray);
        }
        if (this.wadomain != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i2 = 0; i2 < this.wadomain.length; i2++) {
                jSONArray2.put(this.wadomain[i2]);
            }
            toJSON(this.jsonObject, "wadomain", jSONArray2);
        }
        return this.jsonObject;
    }
}
