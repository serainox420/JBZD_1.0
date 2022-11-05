package com.pubmatic.sdk.common.mocean;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.pubmatic.sdk.common.AdRequest;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.PMLogger;
import java.net.URLEncoder;
import java.security.MessageDigest;
/* loaded from: classes3.dex */
public abstract class MoceanAdRequest extends AdRequest {
    public static final String GENDER_FEMALE = "F";
    public static final String GENDER_MALE = "M";
    public static final String GENDER_OTHER = "O";
    private String mAge;
    private String mAreaCode;
    private String mBirthDay;
    private String mCity;
    protected Context mContext;
    private String mDMA;
    private String mEthnicity;
    private String mGender;
    protected String mIp;
    private String mIsoRegion;
    private OVER_18 mOver18;
    private String mZip;
    protected String mZoneId;

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
    public enum OVER_18 {
        NA,
        DENY,
        ONLY_OVER_18,
        ALLOW_ALL
    }

    public abstract void setAttributes(AttributeSet attributeSet);

    /* JADX INFO: Access modifiers changed from: protected */
    public MoceanAdRequest(Context context) {
        super(CommonConstants.CHANNEL.MOCEAN, context);
        this.mAge = null;
        this.mGender = null;
        this.mAreaCode = null;
        this.mOver18 = OVER_18.NA;
        this.mBirthDay = null;
        this.mIsoRegion = null;
        this.mCity = null;
        this.mZip = null;
        this.mDMA = null;
        this.mEthnicity = null;
        this.mContext = context;
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public String getAdServerURL() {
        return TextUtils.isEmpty(this.mBaseUrl) ? "http://ads.moceanads.com/ad" : this.mBaseUrl;
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public void copyRequestParams(AdRequest adRequest) {
        if (adRequest != null && (adRequest instanceof MoceanAdRequest)) {
            if (TextUtils.isEmpty(this.mZoneId)) {
                this.mZoneId = ((MoceanAdRequest) adRequest).mZoneId;
            }
            if (TextUtils.isEmpty(this.mIp)) {
                this.mIp = ((MoceanAdRequest) adRequest).mIp;
            }
            if (TextUtils.isEmpty(this.mUserAgent)) {
                this.mUserAgent = ((MoceanAdRequest) adRequest).mUserAgent;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.pubmatic.sdk.common.AdRequest
    public void setupPostData() {
        super.setupPostData();
        try {
            putPostData("zone", this.mZoneId);
            if (!TextUtils.isEmpty(this.mIp)) {
                putPostData(CommonConstants.REQUESTPARAM_IP, this.mIp);
            }
            if (!TextUtils.isEmpty(this.mUserAgent)) {
                putPostData("ua", this.mUserAgent);
            }
            if (this.mCustomParams != null && !this.mCustomParams.isEmpty()) {
                for (String str : this.mCustomParams.keySet()) {
                    for (String str2 : this.mCustomParams.get(str)) {
                        putPostData(str, str2);
                    }
                }
            }
            if (!TextUtils.isEmpty(this.mGender)) {
                putPostData("gender", URLEncoder.encode(this.mGender, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mEthnicity)) {
                putPostData("userEnthnicity", URLEncoder.encode(this.mEthnicity, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mAge)) {
                putPostData("age", URLEncoder.encode(this.mAge, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mBirthDay)) {
                putPostData("birthday", URLEncoder.encode(this.mBirthDay, "UTF-8"));
            }
            switch (this.mOver18) {
                case DENY:
                    putPostData("over_18", String.valueOf(0));
                    break;
                case ONLY_OVER_18:
                    putPostData("over_18", String.valueOf(2));
                    break;
                case ALLOW_ALL:
                    putPostData("over_18", String.valueOf(3));
                    break;
            }
            if (!TextUtils.isEmpty(this.mAreaCode)) {
                putPostData("area", URLEncoder.encode(this.mAreaCode, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mCity)) {
                putPostData("city_name", URLEncoder.encode(this.mCity, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mDMA)) {
                putPostData("dma", URLEncoder.encode(this.mDMA, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mZip)) {
                putPostData("zip", URLEncoder.encode(this.mZip, "UTF-8"));
            }
            if (!TextUtils.isEmpty(this.mIsoRegion)) {
                putPostData("iso_region", URLEncoder.encode(this.mIsoRegion, "UTF-8"));
            }
            if (!TextUtils.isEmpty(mUDID)) {
                putPostData("androidaid", mUDID);
            } else if (this.mContext != null) {
                putPostData("androidid", getUdidFromContext(this.mContext));
            }
            if (this.mLocation != null) {
                putPostData("lat", String.valueOf(this.mLocation.getLatitude()));
                putPostData("long", String.valueOf(this.mLocation.getLongitude()));
            }
        } catch (Exception e) {
            PMLogger.logEvent("MoceanAdRequest: Error while setting request post data." + (e == null ? "" : e.getMessage()), PMLogger.LogLevel.Error);
        }
    }

    @Override // com.pubmatic.sdk.common.AdRequest
    public void createRequest(Context context) {
        this.mPostData = null;
        initializeDefaultParams(context);
        setupPostData();
    }

    public String getIp() {
        return this.mIp;
    }

    public void setIp(String str) {
        this.mIp = str;
    }

    public String getIsoRegion() {
        return this.mIsoRegion;
    }

    public String getAge() {
        return this.mAge;
    }

    public void setAge(String str) {
        this.mAge = str;
    }

    public OVER_18 getOver18() {
        return this.mOver18;
    }

    public void setOver18(OVER_18 over_18) {
        this.mOver18 = over_18;
    }

    public void setIsoRegion(String str) {
        this.mIsoRegion = str;
    }

    public void setGender(String str) {
        if (str == null || str.trim().equals("")) {
            this.mGender = null;
        } else if (str.equalsIgnoreCase(GENDER_MALE) || str.equalsIgnoreCase(GENDER_FEMALE) || str.equalsIgnoreCase(GENDER_OTHER)) {
            this.mGender = str.toUpperCase();
        } else {
            this.mGender = null;
        }
    }

    public void setBirthDay(String str) {
        this.mBirthDay = str;
    }

    public String getBirthDay() {
        return this.mBirthDay;
    }

    public String getGender() {
        return this.mGender;
    }

    public String getAreaCode() {
        return this.mAreaCode;
    }

    public void setAreaCode(String str) {
        this.mAreaCode = str;
    }

    public String getZip() {
        return this.mZip;
    }

    public String getEthnicity() {
        return this.mEthnicity;
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

    public String getZoneId() {
        return this.mZoneId;
    }

    public void setZoneId(String str) {
        this.mZoneId = str;
    }

    private static String getUdidFromContext(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return string == null ? "" : sha1(string);
    }

    @SuppressLint({"DefaultLocale"})
    private static String sha1(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02X", Byte.valueOf(digest[i])));
            }
            return sb.toString().toLowerCase();
        } catch (Exception e) {
            return "";
        }
    }
}
