package com.openx.model.openrtb.bidRequests.users;

import com.openx.model.openrtb.bidRequests.BaseBid;
import com.openx.model.openrtb.bidRequests.users.datas.Segment;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Data extends BaseBid {
    private JSONObject jsonObject;
    public String id = null;
    public String name = null;
    public List<Segment> segment = new ArrayList();

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "id", this.id);
        toJSON(this.jsonObject, "name", this.name);
        if (this.segment != null && this.segment.size() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (Segment segment : this.segment) {
                jSONArray.put(segment.getJsonObject());
            }
            toJSON(this.jsonObject, "segment", jSONArray);
        }
        return this.jsonObject;
    }
}
