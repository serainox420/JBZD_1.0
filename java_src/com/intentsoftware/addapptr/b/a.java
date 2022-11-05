package com.intentsoftware.addapptr.b;

import android.content.Context;
import android.content.res.Resources;
import com.intentsoftware.addapptr.AATKit;
import com.intentsoftware.addapptr.c.m;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.HashMap;
import java.util.Locale;
/* compiled from: AdRequestParams.java */
/* loaded from: classes2.dex */
public class a {
    private static final String ANDROID_PHONE = "Android Phone";
    private static final String ANDROID_TABLET = "Android Tablet";
    public static final String PROTOCOL_VERSION = "12";
    private static int testAppId;
    private static String appID = "";
    private static String lang = "";
    private static String model = "";
    private static String advertisingId = "Legacy_Unknown";
    private static String kitversion = "";
    private static String IP = "";

    public static void init(Context context) {
        appID = "android." + context.getApplicationContext().getPackageName();
        lang = Resources.getSystem().getConfiguration().locale.toString().replace(io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR, "");
        model = m.isTablet(context) ? ANDROID_TABLET : ANDROID_PHONE;
        kitversion = AATKit.getVersion();
        setTestAppId(0);
    }

    public static HashMap<String, String> toHashMap() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("app", getReportingAppID());
        hashMap.put("appID", getReportingAppID());
        hashMap.put(PubMaticConstants.LANGUAGE, getLang());
        hashMap.put(PubMaticConstants.MODEL_PARAM, getModel());
        hashMap.put("idfa", getAdvertisingId());
        hashMap.put("kitversion", kitversion);
        hashMap.put("protocolversion", PROTOCOL_VERSION);
        return hashMap;
    }

    public static String getAppID() {
        return appID;
    }

    public static String getReportingAppID() {
        return getTestAppId() != 0 ? String.format(Locale.US, "android.com.account%d.application.demo", Integer.valueOf(getTestAppId())) : appID;
    }

    public static String getLang() {
        return lang;
    }

    public static String getModel() {
        return model;
    }

    public static int getTestAppId() {
        return testAppId;
    }

    public static void setTestAppId(int i) {
        testAppId = i;
    }

    public static String getIP() {
        return IP;
    }

    public static void setIP(String str) {
        IP = str;
    }

    public static String getAdvertisingId() {
        return advertisingId;
    }

    public static void setAdvertisingId(String str) {
        advertisingId = str;
    }
}
