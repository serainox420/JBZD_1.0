package com.openx.model.openrtb.bidRequests.geo;

import com.openx.model.openrtb.bidRequests.BaseBid;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Geo extends BaseBid {
    private JSONObject jsonObject;
    public Float lat = null;
    public Float lon = null;
    public Integer type = null;
    public String country = null;
    public String region = null;
    public String regionfips104 = null;
    public String metro = null;
    public String city = null;
    public String zip = null;
    public Integer utcoffset = null;

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "lat", this.lat);
        toJSON(this.jsonObject, PhoenixConstants.LONGITUDE_PARAM, this.lon);
        toJSON(this.jsonObject, "type", this.type);
        toJSON(this.jsonObject, PubMaticConstants.COUNTRY_PARAM, this.country);
        toJSON(this.jsonObject, "region", this.region);
        toJSON(this.jsonObject, "regionfips104", this.regionfips104);
        toJSON(this.jsonObject, "metro", this.metro);
        toJSON(this.jsonObject, PubMaticConstants.USER_STATE, this.city);
        toJSON(this.jsonObject, "zip", this.zip);
        toJSON(this.jsonObject, "utcoffset", this.utcoffset);
        return this.jsonObject;
    }
}
