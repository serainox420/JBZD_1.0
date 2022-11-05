package com.mdotm.android.model;

import com.adcolony.sdk.AdColonyUserMetadata;
import com.facebook.appevents.AppEventsConstants;
import com.mdotm.android.constants.MdotMGender;
import com.mdotm.android.utils.MdotMConfiguration;
/* loaded from: classes3.dex */
public class MdotMAdRequest {
    private int adRefreshInterval;
    private String adSize;
    private int age;
    private String appKey;
    private boolean enableCaching;
    private String gender;
    private double latitude;
    private double longitude;
    private String testMode = AppEventsConstants.EVENT_PARAM_VALUE_NO;
    private boolean loadInterstitial = false;
    private String vidsupport = "1";
    private String ext = null;

    public int getAge() {
        return this.age;
    }

    public void setAge(int i) {
        this.age = i;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(MdotMGender mdotMGender) {
        if (mdotMGender == MdotMGender.FEMALE) {
            this.gender = AdColonyUserMetadata.USER_FEMALE;
        } else if (mdotMGender == MdotMGender.MALE) {
            this.gender = AdColonyUserMetadata.USER_MALE;
        } else {
            this.gender = "";
        }
    }

    public double getLatitude() {
        return this.latitude;
    }

    public void setLatitude(double d) {
        this.latitude = d;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void setLongitude(double d) {
        this.longitude = d;
    }

    public String isTestMode() {
        return this.testMode;
    }

    public boolean isEnableCaching() {
        return this.enableCaching;
    }

    public void setEnableCaching(boolean z) {
        this.enableCaching = z;
    }

    public void setTestMode(String str) {
        this.testMode = str;
        if (str == AppEventsConstants.EVENT_PARAM_VALUE_NO) {
            MdotMConfiguration.LOG_LEVEL = 6;
        }
    }

    public String getAppKey() {
        return this.appKey;
    }

    public void setAppKey(String str) {
        this.appKey = str;
    }

    public void setAdSize(String str) {
        this.adSize = str;
    }

    public String getAdSize() {
        return this.adSize;
    }

    public void setExt(String str) {
        this.ext = str;
    }

    public String getExt() {
        return this.ext;
    }
}
