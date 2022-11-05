package com.openx.model.openrtb.bidRequests.sites;

import com.openx.model.openrtb.bidRequests.BaseBid;
import com.openx.model.openrtb.bidRequests.sites.contents.Producer;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Content extends BaseBid {
    private JSONObject jsonObject;
    public String id = null;
    public Integer episode = null;
    public String title = null;
    public String series = null;
    public String season = null;
    public String url = null;
    public String[] cat = null;
    public Integer videoquality = null;
    public Integer context = null;
    public Integer qagmediarating = null;
    public String contentrating = null;
    public String userrating = null;
    public String keywords = null;
    public String livestream = null;
    public String sourcerelationship = null;
    public String len = null;
    public String language = null;
    public String embeddable = null;
    public Producer producer = null;

    public JSONObject getJsonObject() throws JSONException {
        this.jsonObject = new JSONObject();
        toJSON(this.jsonObject, "id", this.id);
        toJSON(this.jsonObject, "episode", this.episode);
        toJSON(this.jsonObject, "title", this.title);
        toJSON(this.jsonObject, "series", this.series);
        toJSON(this.jsonObject, "season", this.season);
        toJSON(this.jsonObject, "url", this.url);
        if (this.cat != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.cat.length; i++) {
                jSONArray.put(this.cat[i]);
            }
            toJSON(this.jsonObject, PubMaticConstants.APP_CATEGORY_PARAM, jSONArray);
        }
        toJSON(this.jsonObject, "videoquality", this.videoquality);
        toJSON(this.jsonObject, "context", this.context);
        toJSON(this.jsonObject, "qagmediarating", this.qagmediarating);
        toJSON(this.jsonObject, "contentrating", this.contentrating);
        toJSON(this.jsonObject, "userrating", this.userrating);
        toJSON(this.jsonObject, "keywords", this.keywords);
        toJSON(this.jsonObject, "livestream", this.livestream);
        toJSON(this.jsonObject, "sourcerelationship", this.sourcerelationship);
        toJSON(this.jsonObject, "len", this.len);
        toJSON(this.jsonObject, "language", this.language);
        toJSON(this.jsonObject, "embeddable", this.embeddable);
        toJSON(this.jsonObject, "producer", this.producer != null ? this.producer.getJsonObject() : null);
        return this.jsonObject;
    }
}
