package com.applovin.sdk;

import android.content.Context;
import android.util.Log;
import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.nativeAds.AppLovinNativeAdService;
/* loaded from: classes.dex */
public abstract class AppLovinSdk {
    public static final String CIS_BUILD_TAG = "{BUILD_NUMBER}";
    public static final String URI_HOST = "com.applovin.sdk";
    public static final String URI_SCHEME = "applovin";
    public static final String VERSION = "6.2.4";
    public static final int VERSION_CODE = 624;

    /* renamed from: a  reason: collision with root package name */
    private static AppLovinSdk[] f1675a = new AppLovinSdk[0];
    private static final Object b = new Object();

    public static AppLovinSdk getInstance(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return getInstance(AppLovinSdkUtils.retrieveSdkKey(context), AppLovinSdkUtils.retrieveUserSettings(context), context);
    }

    public static AppLovinSdk getInstance(AppLovinSdkSettings appLovinSdkSettings, Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return getInstance(AppLovinSdkUtils.retrieveSdkKey(context), appLovinSdkSettings, context);
    }

    public static AppLovinSdk getInstance(String str, AppLovinSdkSettings appLovinSdkSettings, Context context) {
        AppLovinSdkImpl appLovinSdkImpl;
        synchronized (b) {
            if (f1675a.length != 1 || !f1675a[0].getSdkKey().equals(str)) {
                AppLovinSdk[] appLovinSdkArr = f1675a;
                int length = appLovinSdkArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        AppLovinSdkImpl appLovinSdkImpl2 = new AppLovinSdkImpl();
                        appLovinSdkImpl2.initialize(str, appLovinSdkSettings, context.getApplicationContext());
                        appLovinSdkImpl2.setInitializedInMainActivity(appLovinSdkImpl2.checkCorrectInitialization(context));
                        AppLovinSdk[] appLovinSdkArr2 = new AppLovinSdk[f1675a.length + 1];
                        System.arraycopy(f1675a, 0, appLovinSdkArr2, 0, f1675a.length);
                        appLovinSdkArr2[f1675a.length] = appLovinSdkImpl2;
                        f1675a = appLovinSdkArr2;
                        appLovinSdkImpl = appLovinSdkImpl2;
                        break;
                    }
                    AppLovinSdk appLovinSdk = appLovinSdkArr[i];
                    if (appLovinSdk.getSdkKey().equals(str)) {
                        appLovinSdkImpl = appLovinSdk;
                        break;
                    }
                    i++;
                }
            } else {
                appLovinSdkImpl = f1675a[0];
            }
        }
        return appLovinSdkImpl;
    }

    public static void initializeSdk(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        AppLovinSdk appLovinSdk = getInstance(context);
        if (appLovinSdk != null) {
            appLovinSdk.initializeSdk();
        } else {
            Log.e(AppLovinLogger.SDK_TAG, "Unable to initialize AppLovin SDK: SDK object not created");
        }
    }

    public abstract AppLovinAdService getAdService();

    public abstract Context getApplicationContext();

    public abstract AppLovinEventService getEventService();

    public abstract AppLovinLogger getLogger();

    public abstract AppLovinNativeAdService getNativeAdService();

    /* renamed from: getPostbackService */
    public abstract AppLovinPostbackService mo34getPostbackService();

    public abstract String getSdkKey();

    public abstract AppLovinSdkSettings getSettings();

    public abstract AppLovinTargetingData getTargetingData();

    public abstract boolean hasCriticalErrors();

    public abstract void initialize(String str, AppLovinSdkSettings appLovinSdkSettings, Context context);

    public abstract void initializeSdk();

    public abstract boolean isEnabled();

    public abstract void setPluginVersion(String str);
}
