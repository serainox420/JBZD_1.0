package com.openx.core.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.Scopes;
import com.openx.common.deviceData.listeners.SDKInitListener;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.common.utils.logger.OXLogWrapper;
import com.openx.view.mraid.BaseJSInterface;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class OXSettings {
    private static final String TAG = "OXSettings";
    public static String userAgent;
    public static int SMS = 1;
    public static int TEL = 2;
    public static int EMAIL = 4;
    public static int CALENDAR = 8;
    public static int STORE_PICTURE = 16;
    public static int INLINE_VIDEO = 32;
    public static String SDK_VERSION = "3.2.5";
    public static String ADID = null;
    public static boolean isLimitAdTrackingEnabled = false;
    public static boolean isSDKInit = false;
    private static ArrayList<SDKInitListener> initListeners = null;
    private static String packageName = null;
    private static String appName = null;
    private static String[] classesToCheck = {"com.millennialmedia.android.MMAdView", "com.google.android.gms.ads.AdView", "com.mopub.mobileads.MoPubView", "com.jirbo.adcolony.AdColonyAd", "com.inmobi.monetization.IMBanner", "com.facebook.ads.AdView"};
    private static String[] jarName = {"MMSDK", "AdMob", "Mopub", "AdColony", "InMobi", "FaceBook"};
    private static String tpjarListString = null;

    public static void setDisabledSupportFlags(int i) {
        String[] strArr = {"sms", "tel", Scopes.EMAIL, Consts.FeatureCalendar, "storePicture", Consts.FeatureInlineVideo};
        int[] iArr = {SMS, TEL, EMAIL, CALENDAR, STORE_PICTURE, INLINE_VIDEO};
        StringBuilder sb = new StringBuilder();
        sb.append("mraid.allSupports = {");
        for (int i2 = 0; i2 < strArr.length; i2++) {
            sb.append(strArr[i2]);
            sb.append(":");
            sb.append((iArr[i2] & i) == iArr[i2] ? Consts.False : Boolean.valueOf(supports(strArr[i2])));
            if (i2 < strArr.length - 1) {
                sb.append(",");
            }
        }
        sb.append("};");
        BaseJSInterface.disabledFlags = sb.toString();
    }

    private static boolean supports(String str) {
        if (str == null || str.equals("")) {
            return false;
        }
        if (str.equalsIgnoreCase("sms")) {
            return OXMManagersResolver.getInstance().getDeviceManager().hasTelephony();
        }
        if (str.equalsIgnoreCase("tel")) {
            return OXMManagersResolver.getInstance().getDeviceManager().hasTelephony();
        }
        if (str.equalsIgnoreCase(Consts.FeatureCalendar) || str.equalsIgnoreCase(Scopes.EMAIL)) {
            return true;
        }
        if (str.equalsIgnoreCase("storePicture")) {
            return OXMManagersResolver.getInstance().getDeviceManager().canStorePicture();
        }
        return str.equalsIgnoreCase(Consts.FeatureInlineVideo) && Utils.atLeastHoneycomb();
    }

    public static String getAppName() {
        return appName;
    }

    public static String getPackageName() {
        return packageName;
    }

    private static void initPackageInfo(Context context) {
        ApplicationInfo applicationInfo;
        if (packageName == null && appName == null) {
            try {
                packageName = context.getPackageName();
                PackageManager packageManager = context.getPackageManager();
                try {
                    applicationInfo = packageManager.getApplicationInfo(packageName, 0);
                } catch (PackageManager.NameNotFoundException e) {
                    applicationInfo = null;
                }
                appName = (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "(unknown)");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static String getDeviceName() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? capitalize(str2) : capitalize(str) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str2;
    }

    private static String capitalize(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char charAt = str.charAt(0);
        return !Character.isUpperCase(charAt) ? Character.toUpperCase(charAt) + str.substring(1) : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public static void initUserAgent(final Context context) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.openx.core.sdk.OXSettings.1
            @Override // java.lang.Runnable
            public void run() {
                OXSettings.userAgent = new WebView(context).getSettings().getUserAgentString();
                if (TextUtils.isEmpty(OXSettings.userAgent) || OXSettings.userAgent.contains("UNAVAILABLE")) {
                    OXSettings.userAgent = "Mozilla/5.0 (Linux; U; Android " + Build.VERSION.RELEASE + ";" + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + OXSettings.getDeviceName() + ")";
                }
                OXSettings.isSDKInit = true;
                Iterator it = OXSettings.initListeners.iterator();
                while (it.hasNext()) {
                    ((SDKInitListener) it.next()).onSDKInit();
                }
            }
        });
    }

    public static void initSDK(final Context context, SDKInitListener sDKInitListener) {
        initPackageInfo(context);
        if (initListeners == null) {
            initListeners = new ArrayList<>();
        }
        if (initListeners.isEmpty()) {
            new Thread(new Runnable() { // from class: com.openx.core.sdk.OXSettings.2
                @Override // java.lang.Runnable
                public void run() {
                    AdvertisingIdClient.Info info;
                    try {
                        info = AdvertisingIdClient.getAdvertisingIdInfo(context);
                    } catch (Exception e) {
                        info = null;
                    }
                    if (info != null) {
                        OXSettings.ADID = info.getId();
                        OXSettings.isLimitAdTrackingEnabled = info.isLimitAdTrackingEnabled();
                    }
                    OXSettings.initUserAgent(context);
                }
            }).start();
            initializeLogging();
        }
        initListeners.add(sDKInitListener);
    }

    private static String findTPJars() {
        StringBuilder sb = new StringBuilder();
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            for (int i = 0; i < classesToCheck.length; i++) {
                contextClassLoader.loadClass(classesToCheck[i]);
                sb.append(jarName[i]);
                sb.append(",");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            OXLog.debug(TAG, " Class not found: " + e.getMessage());
        }
        return sb.toString();
    }

    public static String getTpJarList() {
        return tpjarListString;
    }

    public static void initializeLogging() {
        OXLog.setLogNode(new OXLogWrapper());
        OXLog.setLogLevel(2);
    }
}
