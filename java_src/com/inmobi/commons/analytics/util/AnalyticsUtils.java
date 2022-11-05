package com.inmobi.commons.analytics.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import android.util.Base64OutputStream;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.io.ByteArrayOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AnalyticsUtils {
    public static final String ANALYTICS_LOGGING_TAG = "[InMobi]-[Analytics]-4.5.5";
    public static final String INITIALIZE_NOT_CALLED = "Please call InMobi.initialize or startSession before calling any events API";

    /* renamed from: a  reason: collision with root package name */
    private static String f3766a;
    private static boolean b;

    public static String getWebviewUserAgent() {
        return f3766a;
    }

    public static void setWebviewUserAgent(String str) {
        f3766a = str;
    }

    public static synchronized void setStartHandle(boolean z) {
        synchronized (AnalyticsUtils.class) {
            b = z;
        }
    }

    public static synchronized boolean getStartHandle() {
        boolean z;
        synchronized (AnalyticsUtils.class) {
            z = b;
        }
        return z;
    }

    public static synchronized long getMaxdbcount() {
        long maxDbEvents;
        synchronized (AnalyticsUtils.class) {
            maxDbEvents = AnalyticsInitializer.getConfigParams().getMaxDbEvents();
        }
        return maxDbEvents;
    }

    public static synchronized String getMaxevents() {
        String str;
        synchronized (AnalyticsUtils.class) {
            str = AnalyticsInitializer.getConfigParams().getGetParamsLimit() + "";
        }
        return str;
    }

    public static synchronized int getMaxstring() {
        int maxValLength;
        synchronized (AnalyticsUtils.class) {
            maxValLength = AnalyticsInitializer.getConfigParams().getMaxValLength();
        }
        return maxValLength;
    }

    public static synchronized int getMaxparamskey() {
        int maxKeyLength;
        synchronized (AnalyticsUtils.class) {
            maxKeyLength = AnalyticsInitializer.getConfigParams().getMaxKeyLength();
        }
        return maxKeyLength;
    }

    public static synchronized int getExtraParamsLimit() {
        int extraParamsLimit;
        synchronized (AnalyticsUtils.class) {
            extraParamsLimit = AnalyticsInitializer.getConfigParams().getExtraParamsLimit();
        }
        return extraParamsLimit;
    }

    public static synchronized long getTimeinterval() {
        long pingInterval;
        synchronized (AnalyticsUtils.class) {
            pingInterval = AnalyticsInitializer.getConfigParams().getPingInterval();
        }
        return pingInterval;
    }

    public static synchronized int getMaxRetryBeforeDiscard() {
        int maxRetryBeforeCacheDiscard;
        synchronized (AnalyticsUtils.class) {
            maxRetryBeforeCacheDiscard = AnalyticsInitializer.getConfigParams().getMaxRetryBeforeCacheDiscard();
        }
        return maxRetryBeforeCacheDiscard;
    }

    public static String getApplicationName(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Error retrieving application name");
            return null;
        }
    }

    public static String getAppVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Error retrieving application version");
            return null;
        }
    }

    public static Object getCountryISO(Context context) {
        String str;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        new Object();
        if (telephonyManager.getNetworkCountryIso().equals("")) {
            try {
                str = context.getResources().getConfiguration().locale.getISO3Country();
            } catch (MissingResourceException e) {
                str = null;
            }
        } else {
            try {
                str = telephonyManager.getNetworkCountryIso();
            } catch (MissingResourceException e2) {
                str = null;
            }
        }
        if (str == null || str.equals("")) {
            return null;
        }
        return str;
    }

    public static String convertToJSON(Map<String, String> map) {
        String str;
        JSONObject jSONObject;
        if (map.size() > getExtraParamsLimit()) {
            Log.verbose(ANALYTICS_LOGGING_TAG, "Analytics events - number of key-value pairs in attribute map exceeds " + getExtraParamsLimit());
            return null;
        }
        try {
            jSONObject = new JSONObject();
            for (String str2 : map.keySet()) {
                if (str2.length() > 0 && str2.length() <= getMaxparamskey()) {
                    String str3 = map.get(str2);
                    if (str3.length() <= getMaxstring()) {
                        jSONObject.put(str2, map.get(str2));
                    } else {
                        Log.verbose(ANALYTICS_LOGGING_TAG, "Analytics events - value : " + str3 + " ,exceeds inmobi's limitation of " + getMaxstring() + " characters.");
                        return null;
                    }
                } else {
                    Log.verbose(ANALYTICS_LOGGING_TAG, "Analytics events - key : " + str2 + " ,exceeds inmobi's limitation of " + getMaxparamskey() + " characters.");
                    return null;
                }
            }
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Unable to convert map to JSON");
        }
        if (jSONObject.length() > 0) {
            str = jSONObject.toString();
            return str;
        }
        str = null;
        return str;
    }

    public static String convertLevelStatus(AnalyticsEventsWrapper.IMSectionStatus iMSectionStatus) {
        if (iMSectionStatus == AnalyticsEventsWrapper.IMSectionStatus.COMPLETED) {
            return "1";
        }
        if (iMSectionStatus == AnalyticsEventsWrapper.IMSectionStatus.FAILED) {
            return "2";
        }
        if (iMSectionStatus != AnalyticsEventsWrapper.IMSectionStatus.CANCELED) {
            return null;
        }
        return "3";
    }

    public static String convertItemType(AnalyticsEventsWrapper.IMItemType iMItemType) {
        if (iMItemType == AnalyticsEventsWrapper.IMItemType.CONSUMABLE) {
            return "1";
        }
        if (iMItemType == AnalyticsEventsWrapper.IMItemType.DURABLE) {
            return "2";
        }
        if (iMItemType != AnalyticsEventsWrapper.IMItemType.PERSONALIZATION) {
            return null;
        }
        return "3";
    }

    public static String getScreenWidth(Context context) {
        return "" + context.getResources().getDisplayMetrics().widthPixels;
    }

    public static String getScreenHeight(Context context) {
        return "" + context.getResources().getDisplayMetrics().heightPixels;
    }

    public static float getDeviceDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.net.HttpURLConnection] */
    public static void asyncPingInternal(String str) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = 0;
        HttpURLConnection httpURLConnection3 = null;
        try {
            try {
                String replaceAll = str.replaceAll("%25", "%");
                Log.debug(ANALYTICS_LOGGING_TAG, "Pinging URL: " + replaceAll);
                httpURLConnection = (HttpURLConnection) new URL(replaceAll).openConnection();
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            httpURLConnection.setConnectTimeout(20000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
            httpURLConnection2 = ANALYTICS_LOGGING_TAG;
            Log.debug(httpURLConnection2, "Async Ping Connection Response Code: " + httpURLConnection.getResponseCode());
            if (httpURLConnection == null) {
                return;
            }
            httpURLConnection.disconnect();
        } catch (Exception e2) {
            httpURLConnection3 = httpURLConnection;
            e = e2;
            Log.debug(ANALYTICS_LOGGING_TAG, "Error doing async Ping. ", e);
            if (httpURLConnection3 == null) {
                return;
            }
            httpURLConnection3.disconnect();
        } catch (Throwable th2) {
            httpURLConnection2 = httpURLConnection;
            th = th2;
            if (httpURLConnection2 != 0) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    public static String getEventUrl() {
        return AnalyticsInitializer.getConfigParams().getEndPoints().getEventsUrl();
    }

    public static String compressPayload(String str) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 0);
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
            gZIPOutputStream.write(str.getBytes("UTF-8"));
            gZIPOutputStream.close();
            base64OutputStream.close();
            return byteArrayOutputStream.toString();
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Exception compress sdk payload.", e);
            return null;
        }
    }
}
