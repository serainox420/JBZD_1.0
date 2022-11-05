package com.openx.model.openrtb.bidRequests.imps;

import com.openx.model.openrtb.bidRequests.BaseBid;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Banner extends BaseBid {
    public int[] api;
    public int[] battr;
    public int[] btype;
    public int[] expdir;
    private JSONObject jsonObject;
    public Integer w = null;
    public Integer h = null;
    public Integer wmax = null;
    public Integer hmax = null;
    public Integer wmin = null;
    public Integer hmin = null;
    public String id = null;
    public Integer pos = null;
    public String[] mimes = null;
    public Integer topframe = null;

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "w", this.w);
        toJSON(this.jsonObject, "h", this.h);
        toJSON(this.jsonObject, "wmax", this.wmax);
        toJSON(this.jsonObject, "hmax", this.hmax);
        toJSON(this.jsonObject, "wmin", this.wmin);
        toJSON(this.jsonObject, "hmin", this.hmin);
        toJSON(this.jsonObject, "id", this.id);
        if (this.btype != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.btype.length; i++) {
                jSONArray.put(this.btype[i]);
            }
            toJSON(this.jsonObject, "btype", jSONArray);
        }
        if (this.battr != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i2 = 0; i2 < this.battr.length; i2++) {
                jSONArray2.put(this.battr[i2]);
            }
            toJSON(this.jsonObject, PhoenixConstants.BATTR_PARAM, jSONArray2);
        }
        toJSON(this.jsonObject, "pos", this.pos);
        if (this.mimes != null) {
            JSONArray jSONArray3 = new JSONArray();
            for (int i3 = 0; i3 < this.mimes.length; i3++) {
                jSONArray3.put(this.mimes[i3]);
            }
            toJSON(this.jsonObject, "mimes", jSONArray3);
        }
        toJSON(this.jsonObject, "topframe", this.topframe);
        if (this.expdir != null) {
            JSONArray jSONArray4 = new JSONArray();
            for (int i4 = 0; i4 < this.expdir.length; i4++) {
                jSONArray4.put(this.expdir[i4]);
            }
            toJSON(this.jsonObject, "expdir", jSONArray4);
        }
        if (this.api != null) {
            JSONArray jSONArray5 = new JSONArray();
            for (int i5 = 0; i5 < this.api.length; i5++) {
                jSONArray5.put(this.api[i5]);
            }
            toJSON(this.jsonObject, PhoenixConstants.APP_API_PARAM, jSONArray5);
        }
        return this.jsonObject;
    }
}
