package com.amazon.device.ads;

import com.openx.view.mraid.JSInterface;
/* loaded from: classes.dex */
class Version {
    private static String buildVersion = "5.8.1.1";
    private static String prefixVersion = "amznAdSDK-android-";
    private static String sdkVersion = null;
    private static String userAgentPrefixVersion = "AmazonAdSDK-Android/";
    private static String userAgentSDKVersion = null;
    private static String devBuild = "(DEV)";

    Version() {
    }

    public static String getRawSDKVersion() {
        String str = buildVersion;
        if (str == null || str.equals("")) {
            return devBuild;
        }
        if (str.endsWith(JSInterface.JSON_X)) {
            return str + devBuild;
        }
        return str;
    }

    public static String getSDKVersion() {
        if (sdkVersion == null) {
            sdkVersion = prefixVersion + getRawSDKVersion();
        }
        return sdkVersion;
    }

    static void setSDKVersion(String str) {
        sdkVersion = str;
    }

    public static String getUserAgentSDKVersion() {
        if (userAgentSDKVersion == null) {
            userAgentSDKVersion = userAgentPrefixVersion + getRawSDKVersion();
        }
        return userAgentSDKVersion;
    }
}
