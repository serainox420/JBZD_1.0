package com.pubmatic.sdk.common.pubmatic;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationListener;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import com.openx.view.mraid.JSInterface;
import io.fabric.sdk.android.services.b.b;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes3.dex */
public final class PUBDeviceInformation implements LocationListener {
    public static final String mAdPosition = "-1x-1";
    public static final String msdkId = "2";
    public static final String msdkVersion = "5.1.0";
    public String mApplicationName;
    public String mApplicationVersion;
    public String mCarrierName;
    public String mDeviceAcceptLanguage;
    public String mDeviceCountryCode;
    public String mDeviceIpAddress;
    public String mDeviceLocation = "";
    public String mDeviceMake;
    public String mDeviceModel;
    public String mDeviceOSName;
    public String mDeviceOSVersion;
    public String mDeviceScreenResolution;
    public double mDeviceTimeZone;
    public String mDeviceUserAgent;
    public String mPackageName;
    public String mPageURL;
    private static Context mApplicationContext = null;
    public static int mJavaScriptSupport = 1;
    public static int mAdVisibility = 1;
    public static int mInIframe = 0;
    private static PUBDeviceInformation instance = null;

    private PUBDeviceInformation(Context context) {
        this.mDeviceMake = null;
        this.mDeviceModel = null;
        this.mDeviceOSName = null;
        this.mDeviceOSVersion = null;
        this.mApplicationName = null;
        this.mApplicationVersion = null;
        this.mPackageName = null;
        this.mPageURL = null;
        this.mDeviceCountryCode = null;
        this.mDeviceIpAddress = null;
        this.mDeviceUserAgent = null;
        this.mCarrierName = null;
        this.mDeviceAcceptLanguage = null;
        this.mDeviceScreenResolution = null;
        this.mDeviceTimeZone = 0.0d;
        mApplicationContext = context;
        this.mDeviceMake = Build.MANUFACTURER;
        this.mDeviceModel = Build.MODEL;
        this.mDeviceOSName = "Android";
        this.mDeviceOSVersion = Build.VERSION.RELEASE;
        Display defaultDisplay = ((WindowManager) mApplicationContext.getSystemService("window")).getDefaultDisplay();
        this.mDeviceScreenResolution = defaultDisplay.getWidth() + JSInterface.JSON_X + defaultDisplay.getHeight();
        this.mDeviceTimeZone = Calendar.getInstance().getTimeZone().getRawOffset() / 3600000.0d;
        this.mDeviceUserAgent = new WebView(mApplicationContext).getSettings().getUserAgentString();
        this.mDeviceAcceptLanguage = Locale.getDefault().toString();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        this.mCarrierName = telephonyManager.getNetworkOperatorName();
        if (telephonyManager.getPhoneType() != 2) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            this.mDeviceCountryCode = new Locale(Locale.getDefault().getLanguage(), networkCountryIso.length() <= 0 ? telephonyManager.getSimCountryIso() : networkCountryIso).getISO3Country();
        }
        PackageManager packageManager = mApplicationContext.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(mApplicationContext.getPackageName(), 0);
            this.mApplicationName = packageInfo.applicationInfo.loadLabel(packageManager).toString();
            this.mPackageName = mApplicationContext.getPackageName();
            this.mApplicationVersion = packageInfo.versionName;
            this.mPageURL = this.mApplicationName + b.ROLL_OVER_FILE_NAME_SEPARATOR + this.mApplicationVersion;
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mDeviceIpAddress = getDeviceIpAddress();
    }

    public static synchronized PUBDeviceInformation getInstance(Context context) {
        PUBDeviceInformation pUBDeviceInformation;
        synchronized (PUBDeviceInformation.class) {
            if (instance == null) {
                instance = new PUBDeviceInformation(context);
            }
            pUBDeviceInformation = instance;
        }
        return pUBDeviceInformation;
    }

    public static synchronized String getCurrentTime() {
        String format;
        synchronized (PUBDeviceInformation.class) {
            format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
        }
        return format;
    }

    public static synchronized float getRandomNumber() {
        float random;
        synchronized (PUBDeviceInformation.class) {
            random = (float) Math.random();
            while (random >= 1.0f) {
                random /= 10.0f;
            }
        }
        return random;
    }

    public static synchronized int getScreenOrientation() {
        int i;
        synchronized (PUBDeviceInformation.class) {
            Display defaultDisplay = ((WindowManager) mApplicationContext.getSystemService("window")).getDefaultDisplay();
            if (defaultDisplay.getWidth() == defaultDisplay.getHeight()) {
                i = 0;
            } else {
                i = defaultDisplay.getWidth() < defaultDisplay.getHeight() ? 0 : 1;
            }
        }
        return i;
    }

    public synchronized int getDeviceOrientation() {
        int i;
        Display defaultDisplay = ((WindowManager) mApplicationContext.getSystemService("window")).getDefaultDisplay();
        int rotation = defaultDisplay.getRotation();
        if (defaultDisplay.getWidth() == defaultDisplay.getHeight()) {
            i = (rotation == 1 || rotation == 3) ? 1 : 0;
        } else if (defaultDisplay.getWidth() < defaultDisplay.getHeight()) {
            i = (rotation == 1 || rotation == 3) ? 1 : 0;
        } else {
            i = (rotation == 1 || rotation == 3) ? 1 : 1;
        }
        return i;
    }

    private static synchronized String getDeviceIpAddress() {
        String str;
        synchronized (PUBDeviceInformation.class) {
            WifiManager wifiManager = (WifiManager) mApplicationContext.getSystemService("wifi");
            if (wifiManager != null) {
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                str = connectionInfo != null ? Formatter.formatIpAddress(connectionInfo.getIpAddress()) : null;
            } else {
                str = null;
            }
        }
        return str;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (location != null) {
            this.mDeviceLocation = location.getLatitude() + "," + location.getLongitude();
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
