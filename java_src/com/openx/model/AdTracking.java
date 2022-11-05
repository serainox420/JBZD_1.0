package com.openx.model;

import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdTracking implements Serializable {
    private static final long serialVersionUID = -5983147989608371247L;
    private String mClickURL;
    private boolean mHasParseError;
    private String mImpressionURL;

    private void setParseError(boolean z) {
        this.mHasParseError = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasParseError() {
        return this.mHasParseError;
    }

    private void setImpressionURL(String str) {
        this.mImpressionURL = str;
    }

    public String getImpressionURL() {
        return this.mImpressionURL;
    }

    private void setClickURL(String str) {
        this.mClickURL = str;
    }

    public String getClickURL() {
        return this.mClickURL;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void parse(String str) {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    JSONObject jSONObject = new JSONObject(str);
                    setImpressionURL(jSONObject.optString("impression"));
                    setClickURL(jSONObject.optString("click"));
                }
            } catch (JSONException e) {
                setParseError(true);
                return;
            }
        }
        setParseError(true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdTracking adTracking = (AdTracking) obj;
        if (this.mHasParseError != adTracking.mHasParseError) {
            return false;
        }
        if (this.mClickURL == null ? adTracking.mClickURL != null : !this.mClickURL.equals(adTracking.mClickURL)) {
            return false;
        }
        if (this.mImpressionURL != null) {
            if (this.mImpressionURL.equals(adTracking.mImpressionURL)) {
                return true;
            }
        } else if (adTracking.mImpressionURL == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.mClickURL != null ? this.mClickURL.hashCode() : 0) + ((this.mImpressionURL != null ? this.mImpressionURL.hashCode() : 0) * 31)) * 31;
        if (this.mHasParseError) {
            i = 1;
        }
        return hashCode + i;
    }
}
