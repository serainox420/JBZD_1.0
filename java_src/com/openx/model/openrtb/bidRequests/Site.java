package com.openx.model.openrtb.bidRequests;

import com.openx.model.openrtb.bidRequests.sites.Content;
import com.openx.model.openrtb.bidRequests.sites.Publisher;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Site extends BaseBid {
    private JSONObject jsonObject;
    public String id = null;
    public String name = null;
    public String domain = null;
    public String[] cat = null;
    public String[] sectioncat = null;
    public String[] pagecat = null;
    public String page = null;
    public String ref = null;
    public String search = null;
    public Integer mobile = null;
    public Integer privacypolicy = null;
    public String keywords = null;
    public Publisher publisher = null;
    public Content content = null;

    public JSONObject getJsonObject() throws JSONException {
        Object obj = null;
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "id", this.id);
        toJSON(this.jsonObject, "name", this.name);
        toJSON(this.jsonObject, "domain", this.domain);
        if (this.cat != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.cat.length; i++) {
                jSONArray.put(this.cat[i]);
            }
            toJSON(this.jsonObject, PubMaticConstants.APP_CATEGORY_PARAM, jSONArray);
        }
        if (this.sectioncat != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i2 = 0; i2 < this.sectioncat.length; i2++) {
                jSONArray2.put(this.sectioncat[i2]);
            }
            toJSON(this.jsonObject, "sectioncat", jSONArray2);
        }
        if (this.pagecat != null) {
            JSONArray jSONArray3 = new JSONArray();
            for (int i3 = 0; i3 < this.pagecat.length; i3++) {
                jSONArray3.put(this.pagecat[i3]);
            }
            toJSON(this.jsonObject, "pagecat", jSONArray3);
        }
        toJSON(this.jsonObject, "page", this.page);
        toJSON(this.jsonObject, "ref", this.ref);
        toJSON(this.jsonObject, "search", this.search);
        toJSON(this.jsonObject, "mobile", this.mobile);
        toJSON(this.jsonObject, "privacypolicy", this.privacypolicy);
        toJSON(this.jsonObject, "keywords", this.keywords);
        toJSON(this.jsonObject, "publisher", this.publisher != null ? this.publisher.getJsonObject() : null);
        JSONObject jSONObject = this.jsonObject;
        if (this.content != null) {
            obj = this.content.getJsonObject();
        }
        toJSON(jSONObject, "content", obj);
        return this.jsonObject;
    }
}
