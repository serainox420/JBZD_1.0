package com.pubmatic.sdk.banner.pubmatic;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.pubmatic.sdk.common.pubmatic.PUBAdSize;
import com.pubmatic.sdk.common.pubmatic.PubMaticAdRequest;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
/* loaded from: classes3.dex */
public class PubMaticBannerAdRequest extends PubMaticAdRequest {
    private int mDefaultedAdNetworkId;
    private int mDefaultedCampaignId;
    private PUBAdSize mPubAdSize;
    private int mTimeoutInterval;

    private PubMaticBannerAdRequest(Context context) {
        super(context);
        this.mPubAdSize = null;
        this.mTimeoutInterval = -999;
    }

    public static PubMaticBannerAdRequest createPubMaticBannerAdRequest(Context context, String str, String str2, String str3) {
        PubMaticBannerAdRequest pubMaticBannerAdRequest = new PubMaticBannerAdRequest(context);
        pubMaticBannerAdRequest.setPubId(str);
        pubMaticBannerAdRequest.setSiteId(str2);
        pubMaticBannerAdRequest.setAdId(str3);
        return pubMaticBannerAdRequest;
    }

    @Override // com.pubmatic.sdk.common.pubmatic.PubMaticAdRequest, com.pubmatic.sdk.common.AdRequest
    public String getAdServerURL() {
        return TextUtils.isEmpty(this.mBaseUrl) ? "http://showads.pubmatic.com/AdServer/AdServerServlet" : this.mBaseUrl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.pubmatic.sdk.common.pubmatic.PubMaticAdRequest, com.pubmatic.sdk.common.AdRequest
    public void initializeDefaultParams(Context context) {
        super.initializeDefaultParams(context);
        putPostData("operId", "201");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.pubmatic.sdk.common.pubmatic.PubMaticAdRequest, com.pubmatic.sdk.common.AdRequest
    public void setupPostData() {
        super.setupPostData();
        if (this.mPostData == null) {
            this.mPostData = new StringBuffer();
        }
        if (this.mPubAdSize != null) {
            putPostData(PubMaticConstants.AD_HEIGHT_PARAM, String.valueOf(this.mPubAdSize.getAdHeight()));
            putPostData(PubMaticConstants.AD_WIDTH_PARAM, String.valueOf(this.mPubAdSize.getAdWidth()));
            return;
        }
        putPostData(PubMaticConstants.AD_WIDTH_PARAM, String.valueOf(getWidth()));
        putPostData(PubMaticConstants.AD_HEIGHT_PARAM, String.valueOf(getHeight()));
    }

    @Override // com.pubmatic.sdk.common.pubmatic.PubMaticAdRequest
    public void setAdRefreshRate(int i) {
        this.mAdRefreshRate = i;
    }

    public void setAdSize(PUBAdSize pUBAdSize) {
        setPubAdSize(pUBAdSize);
    }

    public int getDefaultedAdNetworkId() {
        return this.mDefaultedAdNetworkId;
    }

    public void setDefaultedAdNetworkId(int i) {
        this.mDefaultedAdNetworkId = i;
    }

    public int getDefaultedCampaignId() {
        return this.mDefaultedCampaignId;
    }

    public void setDefaultedCampaignId(int i) {
        this.mDefaultedCampaignId = i;
    }

    @Override // com.pubmatic.sdk.common.pubmatic.PubMaticAdRequest, com.pubmatic.sdk.common.AdRequest
    public boolean checkMandatoryParams() {
        return !TextUtils.isEmpty(this.mAdId) && !TextUtils.isEmpty(this.mSiteId) && !TextUtils.isEmpty(this.mPubId);
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public String getFormatter() {
        return "com.pubmatic.sdk.banner.pubmatic.PubMaticBannerRRFormatter";
    }

    @Override // com.pubmatic.sdk.common.pubmatic.PubMaticAdRequest
    public void setAttributes(AttributeSet attributeSet) {
        if (attributeSet != null) {
            try {
                this.mPubId = attributeSet.getAttributeValue(null, PubMaticConstants.PUB_ID_PARAM);
                this.mSiteId = attributeSet.getAttributeValue(null, PubMaticConstants.SITE_ID_PARAM);
                this.mAdId = attributeSet.getAttributeValue(null, PubMaticConstants.AD_ID_PARAM);
                String attributeValue = attributeSet.getAttributeValue(null, "adWidth");
                if (!TextUtils.isEmpty(attributeValue)) {
                    setWidth(Integer.parseInt(attributeValue));
                }
                String attributeValue2 = attributeSet.getAttributeValue(null, "adHeight");
                if (!TextUtils.isEmpty(attributeValue2)) {
                    setHeight(Integer.parseInt(attributeValue2));
                }
            } catch (Exception e) {
            }
        }
    }

    public PUBAdSize getPubAdSize() {
        return this.mPubAdSize;
    }

    public void setPubAdSize(PUBAdSize pUBAdSize) {
        this.mPubAdSize = pUBAdSize;
    }

    public int getTimeoutInterval() {
        return this.mTimeoutInterval;
    }

    public void setTimeoutInterval(int i) {
        this.mTimeoutInterval = i;
    }
}
