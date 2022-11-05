package com.openx.model;

import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdGroup {
    private boolean mHasParseError;
    private Vector<Ad> mAds = new Vector<>();
    private String mLcookie = "";
    private String mVersion = "";
    private int mCount = 0;

    public void setParseError(boolean z) {
        this.mHasParseError = z;
    }

    public boolean hasParseError() {
        return this.mHasParseError;
    }

    public Vector<Ad> getAds() {
        return this.mAds;
    }

    private void setVersion(String str) {
        this.mVersion = str;
    }

    public String getVersion() {
        return this.mVersion;
    }

    private void setLcookie(String str) {
        this.mLcookie = str;
    }

    public String getLCookie() {
        return this.mLcookie;
    }

    private void setCount(int i) {
        this.mCount = i;
    }

    public int getCount() {
        return this.mCount;
    }

    public void parse(String str) {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    JSONObject optJSONObject = new JSONObject(str).optJSONObject("ads");
                    if (optJSONObject != null) {
                        JSONArray optJSONArray = optJSONObject.optJSONArray(AdDatabaseHelper.TABLE_AD);
                        if (optJSONArray != null && optJSONArray.length() > 0) {
                            int i = 0;
                            while (true) {
                                if (i >= optJSONArray.length()) {
                                    break;
                                }
                                Ad ad = new Ad();
                                if (optJSONArray.optJSONObject(i) != null) {
                                    ad.parse(optJSONArray.optJSONObject(i).toString());
                                    if (ad.hasParseError()) {
                                        setParseError(true);
                                        break;
                                    }
                                    getAds().add(ad);
                                }
                                i++;
                            }
                        }
                    } else {
                        setParseError(true);
                    }
                    if (!hasParseError()) {
                        setVersion(optJSONObject.optString("version"));
                        setCount(optJSONObject.optInt("count"));
                        setLcookie(optJSONObject.optString("lcookie"));
                    }
                }
            } catch (JSONException e) {
                setParseError(true);
            }
        }
    }
}
