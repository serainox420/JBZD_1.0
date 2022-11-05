package com.openx.model;

import com.facebook.share.internal.ShareConstants;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdCreative implements Serializable {
    private static final long serialVersionUID = -9159993881218344311L;
    private String mAlt;
    private boolean mHasParseError;
    private int mHeight;
    private String mMedia;
    private String mMime;
    private String mTarget;
    private AdTracking mTracking;
    private int mWidth;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdCreative)) {
            return false;
        }
        AdCreative adCreative = (AdCreative) obj;
        if (this.mHasParseError == adCreative.mHasParseError && this.mHeight == adCreative.mHeight && this.mWidth == adCreative.mWidth) {
            if (this.mAlt == null ? adCreative.mAlt != null : !this.mAlt.equals(adCreative.mAlt)) {
                return false;
            }
            if (this.mMedia == null ? adCreative.mMedia != null : !this.mMedia.equals(adCreative.mMedia)) {
                return false;
            }
            if (this.mMime == null ? adCreative.mMime != null : !this.mMime.equals(adCreative.mMime)) {
                return false;
            }
            if (this.mTarget == null ? adCreative.mTarget != null : !this.mTarget.equals(adCreative.mTarget)) {
                return false;
            }
            if (this.mTracking != null) {
                if (this.mTracking.equals(adCreative.mTracking)) {
                    return true;
                }
            } else if (adCreative.mTracking == null) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.mTarget != null ? this.mTarget.hashCode() : 0) + (((this.mAlt != null ? this.mAlt.hashCode() : 0) + (((((((this.mMime != null ? this.mMime.hashCode() : 0) + (((this.mTracking != null ? this.mTracking.hashCode() : 0) + ((this.mMedia != null ? this.mMedia.hashCode() : 0) * 31)) * 31)) * 31) + this.mWidth) * 31) + this.mHeight) * 31)) * 31)) * 31;
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

    private void setMedia(String str) {
        this.mMedia = str;
    }

    public String getMedia() {
        return this.mMedia;
    }

    private void setTracking(AdTracking adTracking) {
        this.mTracking = adTracking;
    }

    public AdTracking getTracking() {
        return this.mTracking;
    }

    private void setMime(String str) {
        this.mMime = str;
    }

    public String getMime() {
        return this.mMime;
    }

    public void setWidth(int i) {
        this.mWidth = i;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void setHeight(int i) {
        this.mHeight = i;
    }

    public int getHeight() {
        return this.mHeight;
    }

    private void setAlt(String str) {
        this.mAlt = str;
    }

    public String getAlt() {
        return this.mAlt;
    }

    private void setTarget(String str) {
        this.mTarget = str;
    }

    public String getTarget() {
        return this.mTarget;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void parse(String str) {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    JSONObject jSONObject = new JSONObject(str);
                    AdTracking adTracking = new AdTracking();
                    adTracking.parse(jSONObject.optString("tracking"));
                    if (adTracking.hasParseError()) {
                        setParseError(true);
                    } else {
                        setTracking(adTracking);
                        setAlt(jSONObject.optString("alt"));
                        setHeight(jSONObject.optInt("height"));
                        setMedia(jSONObject.optString(ShareConstants.WEB_DIALOG_PARAM_MEDIA));
                        setMime(jSONObject.optString("mime"));
                        setTarget(jSONObject.optString("target"));
                        setWidth(jSONObject.optInt("width"));
                    }
                }
            } catch (JSONException e) {
                setParseError(true);
                return;
            }
        }
        setParseError(true);
    }
}
