package com.openx.model.openrtb.bidRequests;

import com.facebook.internal.AnalyticsEvents;
import com.openx.model.openrtb.bidRequests.imps.Banner;
import com.openx.model.openrtb.bidRequests.imps.Native;
import com.openx.model.openrtb.bidRequests.imps.Pmp;
import com.openx.model.openrtb.bidRequests.imps.Video;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Imp extends BaseBid {
    JSONObject jsonObject;
    public String id = null;
    public String displaymanager = null;
    public String displaymanagerver = null;
    public Integer instl = null;
    public String tagid = null;
    public Float bidfloor = null;
    public String bidfloorcur = null;
    public Integer secure = null;
    public String[] iframebuster = null;
    public Banner banner = null;
    public Video video = null;
    public Native nativeads = null;
    public Pmp pmp = null;

    public JSONObject getJsonObject() throws JSONException {
        Object obj = null;
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "id", this.id);
        toJSON(this.jsonObject, "displaymanager", this.displaymanager);
        toJSON(this.jsonObject, "displaymanagerver", this.displaymanagerver);
        toJSON(this.jsonObject, PhoenixConstants.INTERSTITIAL_FLAG_PARAM, this.instl);
        toJSON(this.jsonObject, "tagid", this.tagid);
        toJSON(this.jsonObject, "bidfloor", this.bidfloor);
        toJSON(this.jsonObject, "bidfloorcur", this.bidfloorcur);
        toJSON(this.jsonObject, "secure", this.secure);
        if (this.iframebuster != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.iframebuster.length; i++) {
                jSONArray.put(this.iframebuster[i]);
            }
            toJSON(this.jsonObject, "iframebuster", jSONArray);
        }
        toJSON(this.jsonObject, "banner", this.banner != null ? this.banner.getJsonObject() : null);
        toJSON(this.jsonObject, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, this.video != null ? this.video.getJsonObject() : null);
        toJSON(this.jsonObject, "native", this.nativeads != null ? this.nativeads.getJsonObject() : null);
        JSONObject jSONObject = this.jsonObject;
        if (this.pmp != null) {
            obj = this.pmp.getJsonObject();
        }
        toJSON(jSONObject, "pmp", obj);
        return this.jsonObject;
    }
}
