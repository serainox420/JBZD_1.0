package com.openx.model.openrtb.bidRequests.imps;

import com.openx.model.openrtb.bidRequests.BaseBid;
import com.openx.model.openrtb.bidRequests.imps.pmps.Deals;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pmp extends BaseBid {
    JSONObject jsonObject;
    public Integer private_auction = null;
    public List<Deals> deals = new ArrayList();

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "private_auction", this.private_auction);
        if (this.deals != null && this.deals.size() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (Deals deals : this.deals) {
                jSONArray.put(deals.getJsonObject());
            }
            toJSON(this.jsonObject, "deals", jSONArray);
        }
        return this.jsonObject;
    }
}
