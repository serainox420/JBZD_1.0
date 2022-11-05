package com.openx.model.openrtb.bidRequests;

import com.amazon.device.ads.AdWebViewClient;
import com.openx.model.openrtb.bidRequests.users.Data;
import com.openx.model.openrtb.bidRequests.users.Geo;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class User extends BaseBid {
    private JSONObject jsonObject;
    public String id = null;
    public String buyerid = null;
    public Integer yob = null;
    public String gender = null;
    public String keywords = null;
    public String customdata = null;
    public Geo geo = null;
    public List<Data> data = new ArrayList();

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "id", this.id);
        toJSON(this.jsonObject, "buyerid", this.buyerid);
        toJSON(this.jsonObject, PubMaticConstants.YOB_PARAM, this.yob);
        toJSON(this.jsonObject, "gender", this.gender);
        toJSON(this.jsonObject, "keywords", this.keywords);
        toJSON(this.jsonObject, "customdata", this.customdata);
        toJSON(this.jsonObject, AdWebViewClient.GEO, this.geo != null ? this.geo.getJsonObject() : null);
        if (this.data != null && this.data.size() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (Data data : this.data) {
                jSONArray.put(data.getJsonObject());
            }
            toJSON(this.jsonObject, "data", jSONArray);
        }
        return this.jsonObject;
    }
}
