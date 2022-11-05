package com.pubmatic.sdk.banner.phoenix;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.openx.view.mraid.JSInterface;
import com.pubmatic.sdk.common.AdRequest;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.phoenix.PhoenixAdRequest;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
/* loaded from: classes3.dex */
public class PhoenixBannerAdRequest extends PhoenixAdRequest {
    private int mAdHeight;
    private int mAdWidth;

    private PhoenixBannerAdRequest(Context context) {
        super(context);
        this.mAdWidth = -1;
        this.mAdHeight = -1;
    }

    public static PhoenixBannerAdRequest createPhoenixBannerAdRequest(Context context, String str, String str2) {
        PhoenixBannerAdRequest phoenixBannerAdRequest = new PhoenixBannerAdRequest(context);
        phoenixBannerAdRequest.setAdUnitId(str);
        phoenixBannerAdRequest.setImpressionId(str2);
        return phoenixBannerAdRequest;
    }

    @Override // com.pubmatic.sdk.common.phoenix.PhoenixAdRequest, com.pubmatic.sdk.common.AdRequest
    public String getAdServerURL() {
        return TextUtils.isEmpty(this.mBaseUrl) ? CommonConstants.PHOENIX_AD_NETWORK_URL : this.mBaseUrl;
    }

    @Override // com.pubmatic.sdk.common.phoenix.PhoenixAdRequest, com.pubmatic.sdk.common.AdRequest
    public boolean checkMandatoryParams() {
        return !TextUtils.isEmpty(this.mAdUnitId) && !TextUtils.isEmpty(this.mImpressionId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.pubmatic.sdk.common.phoenix.PhoenixAdRequest, com.pubmatic.sdk.common.AdRequest
    public void initializeDefaultParams(Context context) {
        super.initializeDefaultParams(context);
        putPostData("o", "1");
        putPostData(PhoenixConstants.RESPONSE_FORMAT_PARAM, "2");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.pubmatic.sdk.common.phoenix.PhoenixAdRequest, com.pubmatic.sdk.common.AdRequest
    public void setupPostData() {
        super.setupPostData();
        if (this.mPostData == null) {
            this.mPostData = new StringBuffer();
        }
        if (this.mAdHeight > 0 && this.mAdWidth > 0) {
            putPostData(PhoenixConstants.AD_SIZE_PARAM, String.valueOf(this.mAdWidth) + JSInterface.JSON_X + String.valueOf(this.mAdHeight));
        } else if (getWidth() > 0 && getAdHeight() > 0) {
            putPostData(PhoenixConstants.AD_SIZE_PARAM, String.valueOf(getWidth()) + JSInterface.JSON_X + String.valueOf(getAdHeight()));
        }
        putPostData(PhoenixConstants.REQUEST_TYPE_PARAM, String.valueOf(74));
    }

    @Override // com.pubmatic.sdk.common.phoenix.PhoenixAdRequest, com.pubmatic.sdk.common.AdRequest
    public void copyRequestParams(AdRequest adRequest) {
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public String getFormatter() {
        return "com.pubmatic.sdk.banner.phoenix.PhoenixBannerRRFormatter";
    }

    @Override // com.pubmatic.sdk.common.phoenix.PhoenixAdRequest
    public void setAttributes(AttributeSet attributeSet) {
        if (attributeSet != null) {
            try {
                this.mImpressionId = attributeSet.getAttributeValue(null, CommonConstants.REQUESTPARAM_IMPRESSION_ID);
                this.mAdWidth = Integer.parseInt(attributeSet.getAttributeValue(null, "adWidth"));
                this.mAdHeight = Integer.parseInt(attributeSet.getAttributeValue(null, "adHeight"));
                this.mAdUnitId = attributeSet.getAttributeValue(null, CommonConstants.REQUESTPARAM_AD_UNIT_ID);
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

    public int getAdWidth() {
        return this.mAdWidth;
    }

    public void setAdWidth(int i) {
        this.mAdWidth = i;
    }

    public int getAdHeight() {
        return this.mAdHeight;
    }

    public void setAdHeight(int i) {
        this.mAdHeight = i;
    }
}
