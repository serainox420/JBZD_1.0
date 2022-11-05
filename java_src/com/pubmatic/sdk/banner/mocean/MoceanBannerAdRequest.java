package com.pubmatic.sdk.banner.mocean;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.pubmatic.sdk.common.mocean.MoceanAdRequest;
/* loaded from: classes3.dex */
public class MoceanBannerAdRequest extends MoceanAdRequest {
    private String mCreativeCode;
    private boolean test;

    private MoceanBannerAdRequest(Context context) {
        super(context);
        this.test = false;
        this.mCreativeCode = null;
    }

    public static MoceanBannerAdRequest createMoceanBannerAdRequest(Context context, String str) {
        MoceanBannerAdRequest moceanBannerAdRequest = new MoceanBannerAdRequest(context);
        moceanBannerAdRequest.setZoneId(str);
        return moceanBannerAdRequest;
    }

    @Override // com.pubmatic.sdk.common.mocean.MoceanAdRequest, com.pubmatic.sdk.common.AdRequest
    public String getAdServerURL() {
        return TextUtils.isEmpty(this.mBaseUrl) ? "http://ads.moceanads.com/ad" : this.mBaseUrl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.pubmatic.sdk.common.AdRequest
    public void initializeDefaultParams(Context context) {
        putPostData("count", "1");
        putPostData("key", "3");
        putPostData("version", "5.1.0");
        if (this.test) {
            putPostData("test", "1");
        }
        if (!TextUtils.isEmpty(this.mCreativeCode)) {
            putPostData("creativecode", this.mCreativeCode);
        }
        try {
            String networkOperator = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
            if (networkOperator != null && networkOperator.length() > 3) {
                String substring = networkOperator.substring(0, 3);
                String substring2 = networkOperator.substring(3);
                putPostData("mcc", String.valueOf(substring));
                putPostData("mnc", String.valueOf(substring2));
            }
        } catch (Exception e) {
            System.out.println("Unable to obtain mcc and mnc. Exception:" + e);
        }
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public void setWidth(int i) {
        super.setWidth(i);
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public void setHeight(int i) {
        super.setHeight(i);
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public boolean checkMandatoryParams() {
        return !TextUtils.isEmpty(this.mZoneId);
    }

    public void setTest(boolean z) {
        this.test = z;
    }

    public boolean isTest() {
        return this.test;
    }

    public String getCreativeCode() {
        return this.mCreativeCode;
    }

    public void setCreativeCode(String str) {
        this.mCreativeCode = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.pubmatic.sdk.common.mocean.MoceanAdRequest, com.pubmatic.sdk.common.AdRequest
    public void setupPostData() {
        super.setupPostData();
        if (getWidth() > 0) {
            putPostData("size_x", String.valueOf(getWidth()));
        }
        if (getHeight() > 0) {
            putPostData("size_y", String.valueOf(getHeight()));
        }
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public String getFormatter() {
        return "com.pubmatic.sdk.banner.mocean.MoceanBannerRRFormatter";
    }

    @Override // com.pubmatic.sdk.common.mocean.MoceanAdRequest
    public void setAttributes(AttributeSet attributeSet) {
        try {
            this.mZoneId = attributeSet.getAttributeValue(null, "zone");
        } catch (Exception e) {
        }
    }
}
