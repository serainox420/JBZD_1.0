package com.openx.model;

import java.io.Serializable;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Ad implements Serializable {
    private static final long serialVersionUID = -7396825100961259293L;
    protected int mAdGroupId;
    protected int mAdId;
    protected int mAdUnitId;
    protected String mHTML;
    protected boolean mHasParseError;
    protected String mType;
    protected Vector<AdCreative> mCreatives = new Vector<>();
    protected int refreshInterval = -1;
    protected String tpJSON = "";

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ad)) {
            return false;
        }
        Ad ad = (Ad) obj;
        if (this.mAdGroupId == ad.mAdGroupId && this.mAdId == ad.mAdId && this.mAdUnitId == ad.mAdUnitId && this.mHasParseError == ad.mHasParseError) {
            if (this.mCreatives == null ? ad.mCreatives != null : !this.mCreatives.equals(ad.mCreatives)) {
                return false;
            }
            if (this.mHTML == null ? ad.mHTML != null : !this.mHTML.equals(ad.mHTML)) {
                return false;
            }
            if (this.mType != null) {
                if (this.mType.equals(ad.mType)) {
                    return true;
                }
            } else if (ad.mType == null) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.mType != null ? this.mType.hashCode() : 0) + (((((((((this.mCreatives != null ? this.mCreatives.hashCode() : 0) + ((this.mHTML != null ? this.mHTML.hashCode() : 0) * 31)) * 31) + this.mAdGroupId) * 31) + this.mAdUnitId) * 31) + this.mAdId) * 31)) * 31;
        if (this.mHasParseError) {
            i = 1;
        }
        return hashCode + i;
    }

    private void setParseError(boolean z) {
        this.mHasParseError = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasParseError() {
        return this.mHasParseError;
    }

    public void setHTML(String str) {
        this.mHTML = str;
    }

    public String getHTML() {
        return this.mHTML;
    }

    public Vector<AdCreative> getCreatives() {
        return this.mCreatives;
    }

    private void setAdGroupId(int i) {
        this.mAdGroupId = i;
    }

    public int getAdGroupId() {
        return this.mAdGroupId;
    }

    private void setAdUnitId(int i) {
        this.mAdUnitId = i;
    }

    public int getAdUnitId() {
        return this.mAdUnitId;
    }

    private void setAdId(int i) {
        this.mAdId = i;
    }

    public int getAdId() {
        return this.mAdId;
    }

    private void setType(String str) {
        this.mType = str;
    }

    public String getType() {
        return this.mType;
    }

    private void setRefreshInterval(String str) {
        if (!str.contentEquals("")) {
            try {
                this.refreshInterval = Integer.parseInt(str) * 1000;
            } catch (NumberFormatException e) {
            }
        }
    }

    public int getRefreshInterval() {
        return this.refreshInterval;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void parse(String str) {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject != null) {
                        JSONArray optJSONArray = jSONObject.optJSONArray("creative");
                        if (optJSONArray != null && optJSONArray.length() > 0) {
                            int i = 0;
                            while (true) {
                                if (i >= optJSONArray.length()) {
                                    break;
                                }
                                AdCreative adCreative = new AdCreative();
                                if (optJSONArray.optJSONObject(i) != null) {
                                    adCreative.parse(optJSONArray.optJSONObject(i).toString());
                                    if (adCreative.hasParseError()) {
                                        setParseError(true);
                                        break;
                                    }
                                    getCreatives().add(adCreative);
                                }
                                i++;
                            }
                        }
                    } else {
                        setParseError(true);
                    }
                    if (!hasParseError()) {
                        setAdId(jSONObject.optInt("adid"));
                        setAdUnitId(jSONObject.optInt("adunitid"));
                        setAdGroupId(jSONObject.optInt("adunitgroup"));
                        setHTML(jSONObject.optString(com.mopub.common.AdType.HTML));
                        setType(jSONObject.optString("type"));
                        setRefreshInterval(jSONObject.optString("refresh_delay"));
                        return;
                    }
                    return;
                }
            } catch (JSONException e) {
                setParseError(true);
                return;
            }
        }
        setParseError(true);
    }

    public AdCreative getCreative() {
        if (getCreatives() == null || getCreatives().size() <= 0) {
            return null;
        }
        return getCreatives().elementAt(0);
    }
}
