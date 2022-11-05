package com.openx.model.openrtb.bidRequests;

import com.amazon.device.ads.AdWebViewClient;
import com.openx.model.openrtb.bidRequests.devices.Geo;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Device extends BaseBid {
    private JSONObject jsonObject;
    public String ua = null;
    public Integer dnt = null;
    public Integer lmt = null;
    public String ip = null;
    public String ipv6 = null;
    public Integer devicetype = null;
    public String make = null;
    public String model = null;
    public String os = null;
    public String osv = null;
    public String hwv = null;
    public String flashver = null;
    public String language = null;
    public String carrier = null;
    public String ifa = null;
    public String didsha1 = null;
    public String didmd5 = null;
    public String dpidsha1 = null;
    public String dpidmd5 = null;
    public String macsha1 = null;
    public String macmd5 = null;
    public Integer h = null;
    public Integer w = null;
    public Integer ppi = null;
    public Integer js = null;
    public Integer connectiontype = null;
    public Float pxratio = null;
    public Geo geo = null;

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "ua", this.ua);
        toJSON(this.jsonObject, "dnt", this.dnt);
        toJSON(this.jsonObject, "lmt", this.lmt);
        toJSON(this.jsonObject, CommonConstants.REQUESTPARAM_IP, this.ip);
        toJSON(this.jsonObject, "ipv6", this.ipv6);
        toJSON(this.jsonObject, "devicetype", this.devicetype);
        toJSON(this.jsonObject, PubMaticConstants.MAKE_PARAM, this.make);
        toJSON(this.jsonObject, PubMaticConstants.MODEL_PARAM, this.model);
        toJSON(this.jsonObject, PubMaticConstants.OS_PARAM, this.os);
        toJSON(this.jsonObject, PubMaticConstants.OSV_PARAM, this.osv);
        toJSON(this.jsonObject, "hwv", this.hwv);
        toJSON(this.jsonObject, "flashver", this.flashver);
        toJSON(this.jsonObject, "language", this.language);
        toJSON(this.jsonObject, "carrier", this.carrier);
        toJSON(this.jsonObject, "ifa", this.ifa);
        toJSON(this.jsonObject, "didsha1", this.didsha1);
        toJSON(this.jsonObject, "didmd5", this.didmd5);
        toJSON(this.jsonObject, "dpidsha1", this.dpidsha1);
        toJSON(this.jsonObject, "dpidmd5", this.dpidmd5);
        toJSON(this.jsonObject, "macsha1", this.macsha1);
        toJSON(this.jsonObject, "macmd5", this.macmd5);
        toJSON(this.jsonObject, "h", this.h);
        toJSON(this.jsonObject, "w", this.w);
        toJSON(this.jsonObject, "ppi", this.ppi);
        toJSON(this.jsonObject, "js", this.js);
        toJSON(this.jsonObject, "connectiontype", this.connectiontype);
        toJSON(this.jsonObject, "pxratio", this.pxratio);
        toJSON(this.jsonObject, AdWebViewClient.GEO, this.geo != null ? this.geo.getJsonObject() : null);
        return this.jsonObject;
    }
}
