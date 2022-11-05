package com.madsdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes2.dex */
public class AppInfo {
    public static final int EDGE = 1;
    public static final int G3 = 3;
    public static final int LTE = 6;
    public static final int MOBILE_DATA = 2;
    public static final int OFFLINE = 0;
    private static final String SDK_VERSION = "1.0.0";
    public static final int WIFI = 9;
    private static AppInfo instance;
    private String advertisingId;
    private String androidId;
    private String appVersion;
    private String applicationId;
    private String carrier;
    private String connectivity;
    private String deviceType;
    private String sdkVersion;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onAppInfoLoaded(AppInfo appInfo);
    }

    public static void request(final Context context, final Listener listener) {
        if (instance == null) {
            new Thread() { // from class: com.madsdk.AppInfo.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    AppInfo unused = AppInfo.instance = new AppInfo();
                    AppInfo.instance.androidId = Settings.Secure.getString(context.getContentResolver(), "android_id");
                    AppInfo.instance.advertisingId = AppInfo.getAdvertisingId(context);
                    AppInfo.instance.carrier = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
                    AppInfo.instance.applicationId = context.getPackageName();
                    AppInfo.instance.deviceType = AppInfo.getDeviceType(context);
                    AppInfo.instance.sdkVersion = AppInfo.SDK_VERSION;
                    AppInfo.instance.appVersion = AppInfo.getApplicationVersion(context);
                    AppInfo.instance.connectivity = String.valueOf(AppInfo.getConnectionType(context));
                    listener.onAppInfoLoaded(AppInfo.instance);
                }
            }.start();
        } else {
            listener.onAppInfoLoaded(instance);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getAdvertisingId(Context context) {
        AdvertisingIdClient.Info info;
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (GooglePlayServicesNotAvailableException e) {
            Log.e("MadSDK", "Google Advertising ID not available! Google Play is not installed on this device.");
            info = null;
        } catch (GooglePlayServicesRepairableException e2) {
            Log.e("MadSDK", "Google Advertising ID not available! Encountered a recoverable error connecting to Google Play services.\nError message: " + e2.getMessage());
            info = null;
        } catch (IOException e3) {
            Log.e("MadSDK", "Google Advertising ID not available! Unrecoverable error connecting to Google Play services e.g., the old version of the service doesn't support getting AdvertisingId.\nError message: " + e3.getMessage());
            info = null;
        } catch (Exception e4) {
            Log.e("MadSDK", "Google Advertising ID not available!\nReason: " + e4.getMessage());
            info = null;
        }
        if (info == null) {
            return null;
        }
        return info.getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getApplicationVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "unknown";
        }
    }

    public static String getDeviceType(Context context) {
        return isTablet(context) ? DeviceType.TABLET.getIdentifier() : DeviceType.SMARTPHONE.getIdentifier();
    }

    private static boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getConnectionType(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        if ((activeNetworkInfo != null && activeNetworkInfo.getType() == 1) || wifiManager.isWifiEnabled()) {
            return 9;
        }
        if (activeNetworkInfo.getType() == 0) {
            switch (activeNetworkInfo.getSubtype()) {
                case 1:
                    return 3;
                case 2:
                    return 1;
                case 13:
                    return 6;
                default:
                    return 2;
            }
        }
        return 0;
    }

    public String getCarrier() {
        return this.carrier;
    }

    public String getConnectivity() {
        return this.connectivity;
    }

    public String getAdvertisingId() {
        return this.advertisingId;
    }

    /* loaded from: classes2.dex */
    public enum DeviceType {
        TABLET("tablet"),
        SMARTPHONE("smartphone");
        
        private String identifier;

        DeviceType(String str) {
            this.identifier = str;
        }

        public String getIdentifier() {
            return this.identifier;
        }
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    public String getDeviceType() {
        return this.deviceType;
    }

    public String getSdkVersion() {
        return this.sdkVersion;
    }

    public String getAppVersion() {
        return this.appVersion;
    }
}
