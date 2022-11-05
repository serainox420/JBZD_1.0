package com.pubmatic.sdk.common.phoenix;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.pubmatic.sdk.common.AdRequest;
import com.pubmatic.sdk.common.AdvertisingIdClient;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticUtils;
import java.net.URLEncoder;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class PhoenixAdRequest extends AdRequest {
    protected AWT_OPTION mAWT;
    protected String mAdFloor;
    protected String mAdOrientation;
    private PM_AD_POSITION mAdPosition;
    protected int mAdRefreshRate;
    protected String mAdTruth;
    protected String mAdUnitId;
    protected String mAid;
    protected String mAppCategory;
    protected String mAppDomain;
    protected String mBlockAdDomain;
    protected String mBlockAdIds;
    protected String mBlockCreativeAttr;
    protected String mBlockDomainIds;
    protected String mBlockIabCategory;
    protected Context mContext;
    private boolean mCoppa;
    private boolean mDebugEnable;
    protected String mIABCategory;
    protected String mImpressionId;
    protected String mPMZoneId;
    protected boolean mPaid;
    private int mRequestType;
    protected SECURE_FLAG mSecureFlag;
    protected String mSiteCode;
    protected String mStoreURL;

    /* loaded from: classes3.dex */
    public enum AWT_OPTION {
        DEFAULT,
        WRAPPED_IN_IFRAME,
        WRAPPED_IN_JS
    }

    /* loaded from: classes3.dex */
    public enum PM_AD_POSITION {
        UNKNOWN,
        ABOVE_FOLD,
        BELOW_FOLD,
        PARTIALLY_ABOVE_FOLD
    }

    /* loaded from: classes3.dex */
    public static class REQUEST_TYPE {
        public static final int FLASH = 1;
        public static final int IMAGE = 2;
        public static final int NATIVE = 4;
        public static final int RICH_MEDIA = 64;
        public static final int TEXT = 8;
        public static final int THIRD_PARTY = 16;
        public static final int VIDEO = 32;
    }

    /* loaded from: classes3.dex */
    public enum SECURE_FLAG {
        DEFAULT,
        SECURE,
        NON_SECURE
    }

    public abstract void setAttributes(AttributeSet attributeSet);

    public PM_AD_POSITION getAdPosition() {
        return this.mAdPosition;
    }

    public void setAdPosition(PM_AD_POSITION pm_ad_position) {
        this.mAdPosition = pm_ad_position;
    }

    public boolean isDebugEnable() {
        return this.mDebugEnable;
    }

    public void setDebugEnable(boolean z) {
        this.mDebugEnable = z;
    }

    public int getRequestType() {
        return this.mRequestType;
    }

    public String getAdUnitId() {
        return this.mAdUnitId;
    }

    public void setAdUnitId(String str) {
        this.mAdUnitId = str;
    }

    public String getImpressionId() {
        return this.mImpressionId;
    }

    public void setImpressionId(String str) {
        this.mImpressionId = str;
    }

    protected void setRequestType(int i) {
        this.mRequestType = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PhoenixAdRequest(Context context) {
        super(CommonConstants.CHANNEL.PHOENIX, context);
        this.mRequestType = -1;
        this.mDebugEnable = false;
        this.mAdPosition = PM_AD_POSITION.UNKNOWN;
        this.mIABCategory = null;
        this.mAWT = AWT_OPTION.DEFAULT;
        this.mSecureFlag = SECURE_FLAG.DEFAULT;
        this.mContext = context;
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public String getAdServerURL() {
        return TextUtils.isEmpty(this.mBaseUrl) ? CommonConstants.PHOENIX_AD_NETWORK_URL : this.mBaseUrl;
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public boolean checkMandatoryParams() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.pubmatic.sdk.common.AdRequest
    public void initializeDefaultParams(Context context) {
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public void copyRequestParams(AdRequest adRequest) {
        if (adRequest != null && (adRequest instanceof PhoenixAdRequest)) {
            if (TextUtils.isEmpty(this.mAdUnitId)) {
                this.mAdUnitId = ((PhoenixAdRequest) adRequest).mAdUnitId;
            }
            if (TextUtils.isEmpty(this.mImpressionId)) {
                this.mImpressionId = ((PhoenixAdRequest) adRequest).mImpressionId;
            }
            if (getWidth() <= 0) {
                setWidth(adRequest.getWidth());
            }
            if (getHeight() <= 0) {
                setHeight(adRequest.getHeight());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.pubmatic.sdk.common.AdRequest
    public void setupPostData() {
        super.setupPostData();
        if (this.mCustomParams != null && !this.mCustomParams.isEmpty()) {
            StringBuffer stringBuffer = null;
            for (String str : this.mCustomParams.keySet()) {
                List<String> list = this.mCustomParams.get(str);
                if (list != null && !list.isEmpty()) {
                    if (stringBuffer == null) {
                        stringBuffer = new StringBuffer(str + "=");
                    } else {
                        stringBuffer.append("&" + str + "=");
                    }
                    for (String str2 : list) {
                        if (stringBuffer.toString().endsWith("=")) {
                            stringBuffer.append(str2);
                        } else {
                            stringBuffer.append("," + str2);
                        }
                    }
                }
            }
            putPostData(PhoenixConstants.GLOBAL_KEYWORD_PARAM, stringBuffer.toString());
        }
        switch (this.mAdPosition) {
            case ABOVE_FOLD:
                putPostData(PhoenixConstants.VISIBLE_AD_POSITION_PARAM, String.valueOf(1));
                break;
            case BELOW_FOLD:
                putPostData(PhoenixConstants.VISIBLE_AD_POSITION_PARAM, String.valueOf(2));
                break;
            case PARTIALLY_ABOVE_FOLD:
                putPostData(PhoenixConstants.VISIBLE_AD_POSITION_PARAM, String.valueOf(3));
                break;
        }
        if (isDebugEnable()) {
            putPostData(PhoenixConstants.DEBUG_PARAM, String.valueOf(1));
        }
        putPostData("src", String.valueOf(3));
        PhoenixDeviceInformation phoenixDeviceInformation = PhoenixDeviceInformation.getInstance(this.mContext);
        try {
            putPostData(PhoenixConstants.AD_UNIT_PARAM, this.mAdUnitId);
            putPostData(PhoenixConstants.IMPRESSION_ID_PARAM, this.mImpressionId);
            putPostData(PhoenixConstants.RANDOM_NUMBER_PARAM, String.valueOf(PhoenixDeviceInformation.getRandomNumber()));
            putPostData("kltstamp", String.valueOf(PhoenixDeviceInformation.getCurrentTime()));
            if (phoenixDeviceInformation.mPageURL != null) {
                putPostData(PhoenixConstants.PAGE_URL_PARAM, URLEncoder.encode(phoenixDeviceInformation.mPageURL, "UTF-8"));
                putPostData(PhoenixConstants.SCREEN_PARAM, phoenixDeviceInformation.mDeviceScreenResolution);
                putPostData(PhoenixConstants.TIME_ZONE_PARAM, PhoenixDeviceInformation.getTimeZoneOffset());
            }
            putPostData(PhoenixConstants.IN_IFRAME_PARAM, String.valueOf(PhoenixDeviceInformation.mInIframe));
            if (this.mLocation != null) {
                putPostData("lat", String.valueOf(this.mLocation.getLatitude()));
                putPostData(PhoenixConstants.LONGITUDE_PARAM, String.valueOf(this.mLocation.getLongitude()));
                putPostData(PhoenixConstants.LOCATION_SOURCE_PARAM, String.valueOf(this.mLocation.getProvider()));
            }
            if (!TextUtils.isEmpty(this.mIABCategory)) {
                putPostData(PhoenixConstants.IAP_CATEGORY_PARAM, this.mIABCategory);
            }
            if (!TextUtils.isEmpty(this.mAid)) {
                putPostData("aid", this.mAid);
            }
            if (phoenixDeviceInformation.mCarrierName != null) {
                putPostData("carrier", URLEncoder.encode(phoenixDeviceInformation.mCarrierName, "UTF-8"));
            }
            if (phoenixDeviceInformation.mApplicationName != null) {
                putPostData(PhoenixConstants.APP_NAME_PARAM, URLEncoder.encode(phoenixDeviceInformation.mApplicationName, "UTF-8"));
            }
            if (phoenixDeviceInformation.mPackageName != null) {
                putPostData("bundle", URLEncoder.encode(phoenixDeviceInformation.mPackageName, "UTF-8"));
            }
            if (phoenixDeviceInformation.mApplicationVersion != null) {
                putPostData(PhoenixConstants.APP_VERSION_PARAM, URLEncoder.encode(phoenixDeviceInformation.mApplicationVersion, "UTF-8"));
            }
            AdvertisingIdClient.AdInfo refreshAdvertisingInfo = AdvertisingIdClient.refreshAdvertisingInfo(this.mContext);
            if (refreshAdvertisingInfo != null) {
                if (isAndoridAidEnabled() && !TextUtils.isEmpty(refreshAdvertisingInfo.getId())) {
                    putPostData("udid", PubMaticUtils.sha1(refreshAdvertisingInfo.getId()));
                    putPostData("udidtype", String.valueOf(9));
                    putPostData("udidhash", String.valueOf(0));
                }
                putPostData("dnt", String.valueOf(refreshAdvertisingInfo.isLimitAdTrackingEnabled() ? 1 : 0));
            } else if (this.mContext != null) {
                putPostData("udid", PhoenixUtils.getUdidFromContext(this.mContext));
                putPostData("udidtype", String.valueOf(3));
                putPostData("udidhash", String.valueOf(2));
            }
            putPostData("js", String.valueOf(1));
            putPostData(PhoenixConstants.APP_API_PARAM, "3::4::5");
            putPostData("nettype", PubMaticUtils.getNetworkType(this.mContext));
            if (!TextUtils.isEmpty(this.mStoreURL)) {
                putPostData("storeurl", this.mStoreURL);
            }
            if (this.mAWT != null) {
                switch (this.mAWT) {
                    case WRAPPED_IN_IFRAME:
                        putPostData("awt", String.valueOf(1));
                        break;
                    case WRAPPED_IN_JS:
                        putPostData("awt", String.valueOf(2));
                        break;
                }
            }
            if (this.mSecureFlag != null) {
                switch (this.mSecureFlag) {
                    case SECURE:
                        putPostData(PhoenixConstants.SECURE_FLAG_PARAM, String.valueOf(1));
                        break;
                    case NON_SECURE:
                        putPostData(PhoenixConstants.SECURE_FLAG_PARAM, String.valueOf(0));
                        break;
                }
            }
            if (!TextUtils.isEmpty(this.mAdOrientation)) {
                putPostData("adOrientation", this.mAdOrientation);
            }
            putPostData("deviceOrientation", String.valueOf(getDeviceOrientation(this.mContext)));
            if (!TextUtils.isEmpty(this.mPMZoneId)) {
                putPostData(PhoenixConstants.PM_ZONE_ID_PARAM, this.mPMZoneId);
            }
            if (!TextUtils.isEmpty(this.mAppCategory)) {
                putPostData(PhoenixConstants.APP_CATEGORY_PARAM, this.mAppCategory);
            }
            if (!TextUtils.isEmpty(this.mAppDomain)) {
                putPostData("appdomain", this.mAppDomain);
            }
            putPostData(PhoenixConstants.APP_PAID_PARAM, String.valueOf(this.mPaid ? 1 : 0));
            if (!TextUtils.isEmpty(this.mSiteCode)) {
                putPostData(PhoenixConstants.SITE_CODE_PARAM, this.mSiteCode);
            }
            if (!TextUtils.isEmpty(this.mAdTruth)) {
                putPostData(PhoenixConstants.AD_TRUTH_PARAM, this.mAdTruth);
            }
            if (!TextUtils.isEmpty(this.mAdFloor)) {
                putPostData(PhoenixConstants.AD_FLOOR_PARAM, this.mAdFloor);
            }
            if (!TextUtils.isEmpty(this.mBlockCreativeAttr)) {
                putPostData(PhoenixConstants.BATTR_PARAM, this.mBlockCreativeAttr);
            }
            if (!TextUtils.isEmpty(this.mBlockAdDomain)) {
                putPostData(PhoenixConstants.BLK_ADV_DOMAIN_PARAM, this.mBlockAdDomain);
            }
            if (!TextUtils.isEmpty(this.mBlockIabCategory)) {
                putPostData(PhoenixConstants.BLK_IAB_CATEG_PARAM, this.mBlockIabCategory);
            }
            if (!TextUtils.isEmpty(this.mBlockAdIds)) {
                putPostData(PhoenixConstants.BLK_ADV_IDS_PARAM, this.mBlockAdIds);
            }
            if (!TextUtils.isEmpty(this.mBlockDomainIds)) {
                putPostData(PhoenixConstants.BLK_DOMAIN_IDS_PARAM, this.mBlockDomainIds);
            }
            putPostData("coppa", String.valueOf(this.mCoppa ? 1 : 0));
        } catch (Exception e) {
        }
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public void createRequest(Context context) {
        this.mPostData = null;
        initializeDefaultParams(context);
        setupPostData();
    }

    public int getDeviceOrientation(Context context) {
        int rotation = ((Activity) context).getWindowManager().getDefaultDisplay().getRotation();
        return (rotation == 0 || rotation == 2) ? 0 : 1;
    }

    public String getSiteCode() {
        return this.mSiteCode;
    }

    public void setSiteCode(String str) {
        this.mSiteCode = str;
    }

    public SECURE_FLAG getSecureFlag() {
        return this.mSecureFlag;
    }

    public void setSecureFlag(SECURE_FLAG secure_flag) {
        this.mSecureFlag = secure_flag;
    }

    public String getAdFloor() {
        return this.mAdFloor;
    }

    public void setAdFloor(String str) {
        this.mAdFloor = str;
    }

    public String getAdTruth() {
        return this.mAdTruth;
    }

    public void setAdTruth(String str) {
        this.mAdTruth = str;
    }

    public String getBlockCreativeAttr() {
        return this.mBlockCreativeAttr;
    }

    public void setBlockCreativeAttr(String str) {
        this.mBlockCreativeAttr = str;
    }

    public String getBlockDomainIds() {
        return this.mBlockDomainIds;
    }

    public void setBlockDomainIds(String str) {
        this.mBlockDomainIds = str;
    }

    public String getBlockAdDomain() {
        return this.mBlockAdDomain;
    }

    public void setBlockAdDomain(String str) {
        this.mBlockAdDomain = str;
    }

    public String getBlockIabCategory() {
        return this.mBlockIabCategory;
    }

    public void setBlockIabCategory(String str) {
        this.mBlockIabCategory = str;
    }

    public String getBlockAdIds() {
        return this.mBlockAdIds;
    }

    public void setBlockAdIds(String str) {
        this.mBlockAdIds = str;
    }

    public String getIABCategory() {
        return this.mIABCategory;
    }

    public void setIABCategory(String str) {
        this.mIABCategory = str;
    }

    public boolean isCoppa() {
        return this.mCoppa;
    }

    public void setCoppa(boolean z) {
        this.mCoppa = z;
    }

    public AWT_OPTION getAWT() {
        return this.mAWT;
    }

    public void setAWT(AWT_OPTION awt_option) {
        this.mAWT = awt_option;
    }

    public String getPMZoneId() {
        return this.mPMZoneId;
    }

    public void setPMZoneId(String str) {
        this.mPMZoneId = str;
    }

    public String getStoreURL() {
        return this.mStoreURL;
    }

    public void setStoreURL(String str) {
        this.mStoreURL = str;
    }

    public String getAid() {
        return this.mAid;
    }

    public void setAid(String str) {
        this.mAid = str;
    }

    public String getAppDomain() {
        return this.mAppDomain;
    }

    public void setAppDomain(String str) {
        this.mAppDomain = str;
    }

    public String getAppCategory() {
        return this.mAppCategory;
    }

    public void setAppCategory(String str) {
        this.mAppCategory = str;
    }

    public void isApplicationPaid(boolean z) {
        this.mPaid = z;
    }

    public int getAdRefreshRate() {
        return this.mAdRefreshRate;
    }

    public void setAdRefreshRate(int i) {
        this.mAdRefreshRate = i;
    }

    public String getAdOrientation() {
        return this.mAdOrientation;
    }

    public void setAdOrientation(String str) {
        this.mAdOrientation = str;
    }
}
