package com.pubmatic.sdk.common.pubmatic;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.pubmatic.sdk.common.AdRequest;
import com.pubmatic.sdk.common.AdvertisingIdClient;
import com.pubmatic.sdk.common.CommonConstants;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public abstract class PubMaticAdRequest extends AdRequest {
    private AWT_OPTION mAWT;
    protected int mAdHeight;
    protected String mAdId;
    protected String mAdNetwork;
    protected String mAdOrientation;
    protected int mAdRefreshRate;
    protected AD_TYPE mAdType;
    protected AD_VISIBILITY mAdVisibility;
    protected int mAdWidth;
    protected String mAid;
    protected String mAppCategory;
    protected String mAppDomain;
    protected String mAppName;
    private String mCity;
    protected Context mContext;
    private boolean mCoppa;
    private String mCountry;
    private String mDMA;
    private boolean mDoNotTrack;
    private String mEthnicity;
    private String mGender;
    protected String mIABCategory;
    protected boolean mInIFrame;
    private String mIncome;
    private ArrayList<String> mKeywordsList;
    protected String mLanguage;
    protected String mNetworkType;
    protected int mOrmmaComplianceLevel;
    protected String mPMZoneId;
    protected boolean mPaid;
    protected String mPubId;
    protected RS mRs;
    protected String mSiteId;
    private String mState;
    protected String mStoreURL;
    private String mYearOfBirth;
    private String mZip;

    /* loaded from: classes3.dex */
    public enum AD_TYPE {
        TEXT,
        IMAGE,
        IMAGE_TEXT,
        RICHMEDIA,
        NATIVE,
        VIDEO,
        AUDIO
    }

    /* loaded from: classes3.dex */
    public enum AD_VISIBILITY {
        CAN_NOT_DETERMINE,
        ABOVE_FOLD,
        BELOW_FOLD,
        PARTIAL
    }

    /* loaded from: classes3.dex */
    public enum AWT_OPTION {
        DEFAULT,
        WRAPPED_IN_IFRAME,
        WRAPPED_IN_JS
    }

    /* loaded from: classes3.dex */
    public enum ETHNICITY {
        HISPANIC,
        AFRICAN_AMERICAN,
        CAUCASIAN,
        ASIAN_AMERICAN,
        OTHER
    }

    /* loaded from: classes3.dex */
    public enum FORMAT_KEY {
        HTML,
        XML,
        JSON,
        JSONP,
        GENERIC,
        VAST,
        DAAST,
        OFFLINE_XML
    }

    /* loaded from: classes3.dex */
    public enum LOCATION_SOURCE {
        UNKOWN,
        GPS_OR_SERVICES,
        IP,
        UCER_PROVIDED
    }

    /* loaded from: classes3.dex */
    public enum OPERID {
        HTML,
        JAVA_SCRIPT,
        JSON,
        JSON_MOBILE
    }

    /* loaded from: classes3.dex */
    public enum OVER18 {
        DEFAULT_DENY,
        DENY,
        ONLY_OVER18,
        ALLOW_ALL
    }

    /* loaded from: classes3.dex */
    public enum RS {
        PURE_JSON,
        JSON_CALLBACK,
        JS_VAR
    }

    public abstract void setAttributes(AttributeSet attributeSet);

    /* JADX INFO: Access modifiers changed from: protected */
    public PubMaticAdRequest(Context context) {
        super(CommonConstants.CHANNEL.PUBMATIC, context);
        this.mCity = null;
        this.mZip = null;
        this.mDMA = null;
        this.mEthnicity = null;
        this.mGender = null;
        this.mCountry = null;
        this.mState = null;
        this.mYearOfBirth = null;
        this.mIncome = null;
        this.mKeywordsList = null;
        this.mContext = context;
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public String getAdServerURL() {
        return TextUtils.isEmpty(this.mBaseUrl) ? "http://showads.pubmatic.com/AdServer/AdServerServlet" : this.mBaseUrl;
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
        if (adRequest != null && (adRequest instanceof PubMaticAdRequest)) {
            if (TextUtils.isEmpty(this.mAdId)) {
                this.mAdId = ((PubMaticAdRequest) adRequest).mAdId;
            }
            if (TextUtils.isEmpty(this.mPubId)) {
                this.mPubId = ((PubMaticAdRequest) adRequest).mPubId;
            }
            if (TextUtils.isEmpty(this.mSiteId)) {
                this.mSiteId = ((PubMaticAdRequest) adRequest).mSiteId;
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
        putPostData(PubMaticConstants.PUB_ID_PARAM, this.mPubId);
        putPostData(PubMaticConstants.SITE_ID_PARAM, String.valueOf(this.mSiteId));
        putPostData(PubMaticConstants.AD_ID_PARAM, String.valueOf(this.mAdId));
        if (this.mCustomParams != null && !this.mCustomParams.isEmpty()) {
            for (String str : this.mCustomParams.keySet()) {
                for (String str2 : this.mCustomParams.get(str)) {
                    putPostData(str, str2);
                }
            }
        }
        PUBDeviceInformation pUBDeviceInformation = PUBDeviceInformation.getInstance(this.mContext);
        try {
            if (pUBDeviceInformation.mDeviceAcceptLanguage != null) {
                putPostData(PubMaticConstants.LANGUAGE, URLEncoder.encode(pUBDeviceInformation.mDeviceAcceptLanguage, "UTF-8"));
            }
            if (pUBDeviceInformation.mDeviceCountryCode != null) {
                putPostData(PubMaticConstants.COUNTRY_PARAM, URLEncoder.encode(pUBDeviceInformation.mDeviceCountryCode, "UTF-8"));
            }
            if (pUBDeviceInformation.mCarrierName != null) {
                putPostData("carrier", URLEncoder.encode(pUBDeviceInformation.mCarrierName, "UTF-8"));
            }
            if (pUBDeviceInformation.mDeviceMake != null) {
                putPostData(PubMaticConstants.MAKE_PARAM, URLEncoder.encode(pUBDeviceInformation.mDeviceMake, "UTF-8"));
            }
            if (pUBDeviceInformation.mDeviceModel != null) {
                putPostData(PubMaticConstants.MODEL_PARAM, URLEncoder.encode(pUBDeviceInformation.mDeviceModel, "UTF-8"));
            }
            if (pUBDeviceInformation.mDeviceOSName != null) {
                putPostData(PubMaticConstants.OS_PARAM, URLEncoder.encode(pUBDeviceInformation.mDeviceOSName, "UTF-8"));
            }
            if (pUBDeviceInformation.mDeviceOSVersion != null) {
                putPostData(PubMaticConstants.OSV_PARAM, URLEncoder.encode(pUBDeviceInformation.mDeviceOSVersion, "UTF-8"));
            }
            if (pUBDeviceInformation.mApplicationName != null) {
                putPostData("name", URLEncoder.encode(pUBDeviceInformation.mApplicationName, "UTF-8"));
            }
            if (pUBDeviceInformation.mPackageName != null) {
                putPostData("bundle", URLEncoder.encode(pUBDeviceInformation.mPackageName, "UTF-8"));
            }
            if (pUBDeviceInformation.mApplicationVersion != null) {
                putPostData("ver", URLEncoder.encode(pUBDeviceInformation.mApplicationVersion, "UTF-8"));
            }
            if (pUBDeviceInformation.mPageURL != null) {
                putPostData(PubMaticConstants.PAGE_URL_PARAM, URLEncoder.encode(pUBDeviceInformation.mPageURL, "UTF-8"));
            }
            putPostData("js", String.valueOf(PUBDeviceInformation.mJavaScriptSupport));
            putPostData(PubMaticConstants.IN_IFRAME_PARAM, String.valueOf(PUBDeviceInformation.mInIframe));
            putPostData(PubMaticConstants.AD_VISIBILITY_PARAM, String.valueOf(PUBDeviceInformation.mAdVisibility));
            putPostData(PubMaticConstants.AD_POSITION_PARAM, String.valueOf("-1x-1"));
            putPostData("aid", this.mAid);
            putPostData(PubMaticConstants.APP_CATEGORY_PARAM, this.mAppCategory);
            putPostData("nettype", PubMaticUtils.getNetworkType(this.mContext));
            AdvertisingIdClient.AdInfo refreshAdvertisingInfo = AdvertisingIdClient.refreshAdvertisingInfo(this.mContext);
            if (refreshAdvertisingInfo != null) {
                if (isAndoridAidEnabled() && !TextUtils.isEmpty(refreshAdvertisingInfo.getId())) {
                    putPostData("udid", PubMaticUtils.sha1(refreshAdvertisingInfo.getId()));
                    putPostData("udidtype", String.valueOf(9));
                    putPostData("udidhash", String.valueOf(0));
                }
                putPostData("dnt", String.valueOf(refreshAdvertisingInfo.isLimitAdTrackingEnabled() ? 1 : 0));
            } else if (this.mContext != null) {
                putPostData("udid", PubMaticUtils.getUdidFromContext(this.mContext));
                putPostData("udidtype", String.valueOf(3));
                putPostData("udidhash", String.valueOf(2));
            }
            if (pUBDeviceInformation.mApplicationVersion != null) {
                putPostData("ver", URLEncoder.encode(pUBDeviceInformation.mApplicationVersion, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mYearOfBirth)) {
                putPostData(PubMaticConstants.YOB_PARAM, URLEncoder.encode(this.mYearOfBirth, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mGender)) {
                putPostData("gender", URLEncoder.encode(this.mGender, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mZip)) {
                putPostData("zip", URLEncoder.encode(this.mZip, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mIncome)) {
                putPostData(PubMaticConstants.USER_INCOME, URLEncoder.encode(this.mIncome, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mEthnicity)) {
                putPostData("userEnthnicity", URLEncoder.encode(this.mEthnicity, "UTF-8"));
            }
            if (this.mKeywordsList != null) {
                putPostData("keywords", URLEncoder.encode(getKeywordString(), "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mCity)) {
                putPostData("state", URLEncoder.encode(this.mCity, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mState)) {
                putPostData(PubMaticConstants.USER_STATE, URLEncoder.encode(this.mState, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mAdOrientation)) {
                putPostData("adOrientation", this.mAdOrientation);
            }
            putPostData("deviceOrientation", String.valueOf(getDeviceOrientation(this.mContext)));
            putPostData(PubMaticConstants.AD_REFRESH_RATE_PARAM, String.valueOf(this.mAdRefreshRate));
            putPostData(PubMaticConstants.SDK_ID_PARAM, URLEncoder.encode("2", "UTF-8"));
            putPostData(PubMaticConstants.SDK_VER_PARAM, URLEncoder.encode("5.1.0", "UTF-8"));
            if (this.mNetworkType != null) {
                putPostData("nettype", URLEncoder.encode(this.mNetworkType, "UTF-8"));
            }
            putPostData("adtype", String.valueOf(11));
            putPostData("dnt", String.valueOf(this.mDoNotTrack ? 1 : 0));
            putPostData("coppa", String.valueOf(this.mCoppa ? 1 : 0));
            putPostData("storeurl", this.mStoreURL);
            putPostData(PubMaticConstants.PAID_PARAM, String.valueOf(this.mPaid ? 1 : 0));
            putPostData("appdomain", this.mAppDomain);
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
            if (this.mLocation != null) {
                putPostData(PubMaticConstants.LOC_PARAM, this.mLocation.getLatitude() + "," + this.mLocation.getLongitude());
                putPostData(PubMaticConstants.LOC_SOURCE_PARAM, URLEncoder.encode(this.mLocation.getProvider()));
            }
        } catch (Exception e) {
        }
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public void createRequest(Context context) {
        this.mPostData = null;
        initializeDefaultParams(context);
        setupPostData();
    }

    public void setZip(String str) {
        this.mZip = str;
    }

    public String getDMA() {
        return this.mDMA;
    }

    public void setDMA(String str) {
        this.mDMA = str;
    }

    public String getCity() {
        return this.mCity;
    }

    public void setCity(String str) {
        this.mCity = str;
    }

    public String getCountry() {
        return this.mCountry;
    }

    public void setCountry(String str) {
        this.mCountry = str;
    }

    public String getState() {
        return this.mState;
    }

    public void setState(String str) {
        this.mState = str;
    }

    public void setYearOfBirth(String str) {
        this.mYearOfBirth = str;
    }

    public void setIncome(String str) {
        this.mIncome = str;
    }

    public void setEthnicity(String str) {
        this.mEthnicity = str;
    }

    public void addKeyword(String str) {
        if (this.mKeywordsList == null) {
            this.mKeywordsList = new ArrayList<>();
        }
        this.mKeywordsList.add(str);
    }

    public String getYearOfBirth() {
        return this.mYearOfBirth;
    }

    public String getIncome() {
        return this.mIncome;
    }

    public String getKeywordString() {
        StringBuffer stringBuffer = null;
        if (this.mKeywordsList == null || this.mKeywordsList.isEmpty()) {
            return null;
        }
        Iterator<String> it = this.mKeywordsList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer(next);
            } else {
                stringBuffer.append("," + next);
            }
            stringBuffer = stringBuffer;
        }
        return stringBuffer.toString();
    }

    public String getPubId() {
        return this.mPubId;
    }

    public String getSiteId() {
        return this.mSiteId;
    }

    public String getAdId() {
        return this.mAdId;
    }

    public void setAdId(String str) {
        this.mAdId = str;
    }

    public void setSiteId(String str) {
        this.mSiteId = str;
    }

    public void setPubId(String str) {
        this.mPubId = str;
    }

    public RS getRs() {
        return this.mRs;
    }

    public void setRs(RS rs) {
        this.mRs = rs;
    }

    public AD_TYPE getAdType() {
        return this.mAdType;
    }

    public void setAdType(AD_TYPE ad_type) {
        this.mAdType = ad_type;
    }

    public int getAdHeight() {
        return this.mAdHeight;
    }

    public void setAdHeight(int i) {
        this.mAdHeight = i;
    }

    public int getAdWidth() {
        return this.mAdWidth;
    }

    public void setAdWidth(int i) {
        this.mAdWidth = i;
    }

    public boolean isInIFrame() {
        return this.mInIFrame;
    }

    public void setInIFrame(boolean z) {
        this.mInIFrame = z;
    }

    public String getAdNetwork() {
        return this.mAdNetwork;
    }

    public void setAdNetwork(String str) {
        this.mAdNetwork = str;
    }

    public AD_VISIBILITY getAdVisibility() {
        return this.mAdVisibility;
    }

    public void setAdVisibility(AD_VISIBILITY ad_visibility) {
        this.mAdVisibility = ad_visibility;
    }

    public String getIABCategory() {
        return this.mIABCategory;
    }

    public void setIABCategory(String str) {
        this.mIABCategory = str;
    }

    public boolean isDoNotTrack() {
        return this.mDoNotTrack;
    }

    public void setDoNotTrack(boolean z) {
        this.mDoNotTrack = z;
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

    public String getAppName() {
        return this.mAppName;
    }

    public void setAppName(String str) {
        this.mAppName = str;
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

    public int getOrmmaComplianceLevel() {
        return this.mOrmmaComplianceLevel;
    }

    public void setOrmmaComplianceLevel(int i) {
        this.mOrmmaComplianceLevel = i;
    }

    public String getAdOrientation() {
        return this.mAdOrientation;
    }

    public void setAdOrientation(String str) {
        this.mAdOrientation = str;
    }

    public int getDeviceOrientation(Context context) {
        int rotation = ((Activity) context).getWindowManager().getDefaultDisplay().getRotation();
        return (rotation == 0 || rotation == 2) ? 0 : 1;
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public Location getLocation() {
        return this.mLocation;
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public void setLocation(Location location) {
        this.mLocation = location;
    }

    public String getLanguage() {
        return this.mLanguage;
    }

    public void setLanguage(String str) {
        this.mLanguage = str;
    }
}
