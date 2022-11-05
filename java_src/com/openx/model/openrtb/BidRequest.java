package com.openx.model.openrtb;

import com.openx.model.openrtb.bidRequests.App;
import com.openx.model.openrtb.bidRequests.BaseBid;
import com.openx.model.openrtb.bidRequests.Device;
import com.openx.model.openrtb.bidRequests.Imp;
import com.openx.model.openrtb.bidRequests.Regs;
import com.openx.model.openrtb.bidRequests.Site;
import com.openx.model.openrtb.bidRequests.User;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BidRequest extends BaseBid {
    private JSONObject jsonObject;
    public String id = null;
    public Integer test = null;
    public Integer at = null;
    public Integer tmax = null;
    public String[] wseat = null;
    public Integer allimps = null;
    public String[] cur = null;
    public String[] bcat = null;
    public String[] badv = null;
    public ArrayList<Imp> imp = new ArrayList<>();
    public Site site = null;
    public App app = null;
    public Device device = null;
    public User user = null;
    public Regs regs = null;

    public JSONObject getJsonObject() throws JSONException {
        Object obj = null;
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "id", this.id);
        toJSON(this.jsonObject, "test", this.test);
        toJSON(this.jsonObject, "at", this.at);
        toJSON(this.jsonObject, "tmax", this.tmax);
        if (this.wseat != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.wseat.length; i++) {
                jSONArray.put(this.wseat[i]);
            }
            toJSON(this.jsonObject, "wseat", jSONArray);
        }
        toJSON(this.jsonObject, "allimps", this.allimps);
        if (this.cur != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i2 = 0; i2 < this.cur.length; i2++) {
                jSONArray2.put(this.cur[i2]);
            }
            toJSON(this.jsonObject, "cur", jSONArray2);
        }
        if (this.bcat != null) {
            JSONArray jSONArray3 = new JSONArray();
            for (int i3 = 0; i3 < this.bcat.length; i3++) {
                jSONArray3.put(this.bcat[i3]);
            }
            toJSON(this.jsonObject, "bcat", jSONArray3);
        }
        if (this.badv != null) {
            JSONArray jSONArray4 = new JSONArray();
            for (int i4 = 0; i4 < this.badv.length; i4++) {
                jSONArray4.put(this.badv[i4]);
            }
            toJSON(this.jsonObject, "badv", jSONArray4);
        }
        if (this.imp != null && this.imp.size() > 0) {
            JSONArray jSONArray5 = new JSONArray();
            Iterator<Imp> it = this.imp.iterator();
            while (it.hasNext()) {
                jSONArray5.put(it.next().getJsonObject());
            }
            toJSON(this.jsonObject, "imp", jSONArray5);
        }
        toJSON(this.jsonObject, "site", this.site != null ? this.site.getJsonObject() : null);
        toJSON(this.jsonObject, "app", this.app != null ? this.app.getJsonObject() : null);
        toJSON(this.jsonObject, "device", this.device != null ? this.device.getJsonObject() : null);
        toJSON(this.jsonObject, "user", this.user != null ? this.user.getJsonObject() : null);
        JSONObject jSONObject = this.jsonObject;
        if (this.regs != null) {
            obj = this.regs.getJsonObject();
        }
        toJSON(jSONObject, "regs", obj);
        return this.jsonObject;
    }
}
