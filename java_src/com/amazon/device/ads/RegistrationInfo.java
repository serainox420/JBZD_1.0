package com.amazon.device.ads;

import com.amazon.device.ads.AdvertisingIdentifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RegistrationInfo {
    private static final String ADID_ORIGIN_PREF_NAME = "amzn-ad-id-origin";
    private static final String ADID_PREF_NAME = "amzn-ad-id";
    private static final String NEW_SIS_DID_REQUESTED_SETTING = "newSISDIDRequested";
    private static final String NON_ADVERTISING_IDENTIFIER_ORIGIN = "non-advertising-identifier";
    private static final String THIRD_PARTY_APP_NAME = "app";
    private String appKey;
    private String appName = THIRD_PARTY_APP_NAME;

    public String getAppName() {
        return this.appName;
    }

    public void putAppName(String str) {
        this.appName = WebUtils.getURLEncodedString(str);
    }

    public String getAdId() {
        return DebugProperties.getInstance().getDebugPropertyAsString(DebugProperties.DEBUG_ADID, Settings.getInstance().getString(ADID_PREF_NAME, null));
    }

    public boolean isAdIdCurrent(AdvertisingIdentifier.Info info) {
        boolean isAdIdOriginatedFromNonAdvertisingIdentifier = isAdIdOriginatedFromNonAdvertisingIdentifier();
        if (info.hasAdvertisingIdentifier()) {
            if (isAdIdOriginatedFromNonAdvertisingIdentifier) {
                return false;
            }
            return info.getAdvertisingIdentifier().equals(Settings.getInstance().getString(ADID_ORIGIN_PREF_NAME, null));
        }
        return isAdIdOriginatedFromNonAdvertisingIdentifier;
    }

    public boolean hasAdId() {
        return !StringUtils.isNullOrEmpty(getAdId());
    }

    public void putAdId(String str, AdvertisingIdentifier.Info info) {
        Settings settings = Settings.getInstance();
        settings.putStringWithNoFlush(ADID_PREF_NAME, str);
        setOrigin(info);
        settings.putBooleanWithNoFlush(NEW_SIS_DID_REQUESTED_SETTING, false);
        settings.flush();
    }

    protected static void setOrigin(AdvertisingIdentifier.Info info) {
        if (info.hasAdvertisingIdentifier()) {
            Settings.getInstance().putStringWithNoFlush(ADID_ORIGIN_PREF_NAME, info.getAdvertisingIdentifier());
        } else {
            Settings.getInstance().putStringWithNoFlush(ADID_ORIGIN_PREF_NAME, NON_ADVERTISING_IDENTIFIER_ORIGIN);
        }
    }

    public static boolean isAdIdOriginatedFromNonAdvertisingIdentifier() {
        String string = Settings.getInstance().getString(ADID_ORIGIN_PREF_NAME, null);
        return string == null || NON_ADVERTISING_IDENTIFIER_ORIGIN.equals(string);
    }

    public String getAppKey() {
        return DebugProperties.getInstance().getDebugPropertyAsString(DebugProperties.DEBUG_APPID, this.appKey);
    }

    public void putAppKey(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Application Key must not be null or empty.");
        }
        this.appKey = WebUtils.getURLEncodedString(str);
    }

    public void requestNewSISDeviceIdentifier() {
        Settings.getInstance().putBoolean(NEW_SIS_DID_REQUESTED_SETTING, true);
    }

    public boolean shouldGetNewSISDeviceIdentifer() {
        return Settings.getInstance().getBoolean(NEW_SIS_DID_REQUESTED_SETTING, false);
    }

    public boolean isRegisteredWithSIS() {
        return hasAdId();
    }

    public boolean shouldGetNewSISRegistration() {
        return !isRegisteredWithSIS();
    }
}
