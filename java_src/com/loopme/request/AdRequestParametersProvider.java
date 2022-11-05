package com.loopme.request;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.support.v4.content.b;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.loopme.adview.AdView;
import com.loopme.common.Logging;
import com.loopme.common.Utils;
import java.util.Locale;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class AdRequestParametersProvider {
    private static final String LOG_TAG = AdRequestParametersProvider.class.getSimpleName();
    private static AdRequestParametersProvider sProvider;
    private volatile String mAdvertisingId;
    private String mAppKey;
    private String mAppVersion;
    private String mCarrier;
    private boolean mCarrierInited;
    private volatile boolean mDntPresent;
    private String mLoopMeId;
    private String mMraid;
    private String mPackageId;

    private AdRequestParametersProvider() {
    }

    public static AdRequestParametersProvider getInstance() {
        if (sProvider == null) {
            sProvider = new AdRequestParametersProvider();
        }
        return sProvider;
    }

    public void detectPackage(Context context) {
        this.mPackageId = context.getPackageName();
    }

    public String getPackage() {
        return this.mPackageId;
    }

    public void setAppKey(String str) {
        this.mAppKey = str;
    }

    public String getAppKey() {
        return this.mAppKey;
    }

    public void reset() {
        sProvider = null;
    }

    public void setGoogleAdvertisingId(String str, boolean z) {
        Logging.out(LOG_TAG, "Advertising Id = " + str + " Limited: " + z);
        this.mAdvertisingId = str;
        this.mDntPresent = z;
    }

    public String getGoogleAdvertisingId() {
        return this.mAdvertisingId;
    }

    public int getConnectionType(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        TelephonyManager telephonyManager;
        if (context != null && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
            int type = activeNetworkInfo.getType();
            if (type == 1) {
                return 2;
            }
            if (type == 9) {
                return 1;
            }
            if (type == 0 && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                switch (telephonyManager.getNetworkType()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return 4;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return 5;
                    case 13:
                        return 6;
                    default:
                        return 3;
                }
            }
            return 0;
        }
        return 0;
    }

    public String getLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public String getAppVersion(Context context) {
        if (this.mAppVersion == null) {
            initAppVersion(context);
        }
        return this.mAppVersion;
    }

    private void initAppVersion(Context context) {
        if (context == null) {
            this.mAppVersion = "0.0";
            return;
        }
        try {
            this.mAppVersion = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            Logging.out(LOG_TAG, "Can't get app version. Exception: " + e.getMessage());
            this.mAppVersion = "0.0";
        }
    }

    public String getMraidSupport() {
        if (this.mMraid == null) {
            initMraidSupport();
        }
        return this.mMraid;
    }

    private void initMraidSupport() {
        this.mMraid = "1";
        try {
            Class.forName("com.loopme.MraidView");
        } catch (ClassNotFoundException e) {
            this.mMraid = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
    }

    public String getOrientation(Context context) {
        if (context == null || context.getResources() == null) {
            return "";
        }
        if (2 == context.getResources().getConfiguration().orientation) {
            return "l";
        }
        return "p";
    }

    public String getViewerToken() {
        String str = this.mAdvertisingId;
        if (TextUtils.isEmpty(str)) {
            if (this.mLoopMeId == null) {
                String hexString = Long.toHexString(Double.doubleToLongBits(Math.random()));
                Logging.out(LOG_TAG, "LoopMe Id = " + hexString);
                this.mLoopMeId = hexString;
            }
            return this.mLoopMeId;
        }
        return str;
    }

    public String getLatitude() {
        Location lastKnownLocation = Utils.getLastKnownLocation();
        if (lastKnownLocation != null) {
            return String.valueOf(lastKnownLocation.getLatitude());
        }
        return null;
    }

    public String getLongitude() {
        Location lastKnownLocation = Utils.getLastKnownLocation();
        if (lastKnownLocation != null) {
            return String.valueOf(lastKnownLocation.getLongitude());
        }
        return null;
    }

    public String getCarrier(Context context) {
        if (!this.mCarrierInited) {
            initCarrier(context);
        }
        return this.mCarrier;
    }

    private void initCarrier(Context context) {
        if (context == null) {
            this.mCarrierInited = true;
            return;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            this.mCarrierInited = true;
            return;
        }
        this.mCarrier = telephonyManager.getNetworkOperator();
        if (this.mCarrier.isEmpty()) {
            this.mCarrier = null;
        }
        this.mCarrierInited = true;
    }

    public boolean isDntPresent() {
        return this.mDntPresent;
    }

    public boolean isWifiInfoAvailable(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") == 0;
    }

    public String getWifiName(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (!wifiManager.isWifiEnabled()) {
                return null;
            }
            String ssid = wifiManager.getConnectionInfo().getSSID();
            if (ssid.startsWith("\"") && ssid.endsWith("\"")) {
                ssid = ssid.substring(1, ssid.length() - 1);
            }
            if (!TextUtils.isEmpty(ssid) && !ssid.contains("unknown ssid")) {
                if (!ssid.equals("0x")) {
                    return ssid;
                }
                return null;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public String getDeviceId(Context context) {
        TelephonyManager telephonyManager;
        if (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null || b.b(context, "android.permission.READ_PHONE_STATE") != 0) {
            return null;
        }
        return telephonyManager.getDeviceId();
    }

    public String[] getBatteryInfo(Context context) {
        final Object obj = new Object();
        final String[] strArr = new String[2];
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.loopme.request.AdRequestParametersProvider.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                synchronized (obj) {
                    strArr[0] = String.valueOf(intent.getIntExtra("level", -1) / intent.getIntExtra("scale", -1));
                    switch (intent.getIntExtra("plugged", -1)) {
                        case 0:
                            strArr[1] = "NCHRG";
                            break;
                        case 1:
                            strArr[1] = "AC";
                            break;
                        case 2:
                            strArr[1] = "USB";
                            break;
                        case 3:
                        default:
                            strArr[1] = "CHRG";
                            break;
                        case 4:
                            strArr[1] = "WL";
                            break;
                    }
                    obj.notifyAll();
                }
            }
        };
        context.registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        new ScheduledThreadPoolExecutor(1).schedule(new Runnable() { // from class: com.loopme.request.AdRequestParametersProvider.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (obj) {
                    if (strArr[0] == null) {
                        strArr[0] = "-1.0";
                        strArr[1] = "UNKNOWN";
                    }
                    obj.notifyAll();
                }
            }
        }, 2L, TimeUnit.SECONDS);
        synchronized (obj) {
            try {
                if (strArr[0] == null) {
                    obj.wait();
                }
            } catch (InterruptedException e) {
            }
            try {
                context.unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException e2) {
            }
        }
        return strArr;
    }

    public String getWebViewVersion(Context context) {
        String str = "unknown";
        if (context != null) {
            try {
                str = context.getPackageManager().getPackageInfo("com.google.android.webview", 0).versionName;
                Logging.out(LOG_TAG, "WebView version: " + str);
                return str;
            } catch (PackageManager.NameNotFoundException e) {
                Logging.out(LOG_TAG, "Android System WebView is not found. Trying to get it from user agent");
                String[] split = AdView.CHROME_USER_AGENT.split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                for (int i = 0; i < split.length; i++) {
                    if (split[i].startsWith("Chrome")) {
                        str = split[i].split("/")[1];
                    }
                }
                return str;
            }
        }
        return str;
    }
}
