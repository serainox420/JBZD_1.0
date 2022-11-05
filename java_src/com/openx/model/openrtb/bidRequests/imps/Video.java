package com.openx.model.openrtb.bidRequests.imps;

import com.openx.model.openrtb.bidRequests.BaseBid;
import com.openx.model.openrtb.bidRequests.imps.videos.Companionad;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Video extends BaseBid {
    public int[] api;
    public int[] battr;
    public int[] companiontype;
    public int[] delivery;
    private JSONObject jsonObject;
    public int[] playbackmethod;
    public int[] protocols;
    public String[] mimes = null;
    public Integer minduration = null;
    public Integer maxduration = null;
    public Integer protocol = null;
    public Integer w = null;
    public Integer h = null;
    public Integer startdelay = null;
    public Integer linearity = null;
    public Integer sequence = null;
    public Integer maxextended = null;
    public Integer minbitrate = null;
    public Integer maxbitrate = null;
    public Integer boxingallowed = null;
    public Integer pos = null;
    public List<Companionad> companionad = new ArrayList();

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        if (this.mimes != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.mimes.length; i++) {
                jSONArray.put(this.mimes[i]);
            }
            toJSON(this.jsonObject, "mimes", jSONArray);
        }
        toJSON(this.jsonObject, "minduration", this.minduration);
        toJSON(this.jsonObject, "maxduration", this.maxduration);
        if (this.protocols != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i2 = 0; i2 < this.protocols.length; i2++) {
                jSONArray2.put(this.protocols[i2]);
            }
            toJSON(this.jsonObject, "protocols", jSONArray2);
        }
        toJSON(this.jsonObject, "w", this.w);
        toJSON(this.jsonObject, "h", this.h);
        toJSON(this.jsonObject, "startdelay", this.startdelay);
        toJSON(this.jsonObject, "linearity", this.linearity);
        toJSON(this.jsonObject, "sequence", this.sequence);
        toJSON(this.jsonObject, "maxextended", this.maxextended);
        toJSON(this.jsonObject, "minbitrate", this.minbitrate);
        toJSON(this.jsonObject, "maxbitrate", this.maxbitrate);
        toJSON(this.jsonObject, "boxingallowed", this.boxingallowed);
        if (this.playbackmethod != null) {
            JSONArray jSONArray3 = new JSONArray();
            for (int i3 = 0; i3 < this.playbackmethod.length; i3++) {
                jSONArray3.put(this.playbackmethod[i3]);
            }
            toJSON(this.jsonObject, "playbackmethod", jSONArray3);
        }
        if (this.delivery != null) {
            JSONArray jSONArray4 = new JSONArray();
            for (int i4 = 0; i4 < this.delivery.length; i4++) {
                jSONArray4.put(this.delivery[i4]);
            }
            toJSON(this.jsonObject, "delivery", jSONArray4);
        }
        toJSON(this.jsonObject, "pos", this.pos);
        if (this.battr != null) {
            JSONArray jSONArray5 = new JSONArray();
            for (int i5 = 0; i5 < this.battr.length; i5++) {
                jSONArray5.put(this.battr[i5]);
            }
            toJSON(this.jsonObject, PhoenixConstants.BATTR_PARAM, jSONArray5);
        }
        if (this.api != null) {
            JSONArray jSONArray6 = new JSONArray();
            for (int i6 = 0; i6 < this.api.length; i6++) {
                jSONArray6.put(this.api[i6]);
            }
            toJSON(this.jsonObject, PhoenixConstants.APP_API_PARAM, jSONArray6);
        }
        if (this.companiontype != null) {
            JSONArray jSONArray7 = new JSONArray();
            for (int i7 = 0; i7 < this.companiontype.length; i7++) {
                jSONArray7.put(this.companiontype[i7]);
            }
            toJSON(this.jsonObject, "companiontype", jSONArray7);
        }
        if (this.companionad != null && this.companionad.size() > 0) {
            JSONArray jSONArray8 = new JSONArray();
            for (Companionad companionad : this.companionad) {
                jSONArray8.put(companionad.getJsonObject());
            }
            toJSON(this.jsonObject, "companionad", jSONArray8);
        }
        return this.jsonObject;
    }
}
