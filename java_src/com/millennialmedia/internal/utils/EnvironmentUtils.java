package com.millennialmedia.internal.utils;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.provider.Settings;
import android.support.v4.content.b;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.firebase.a.a;
import com.millennialmedia.MMLog;
import com.moat.analytics.mobile.aol.BuildConfig;
import java.io.File;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.Locale;
/* loaded from: classes3.dex */
public class EnvironmentUtils {
    public static final String ORIENTATION_LANDSCAPE = "landscape";
    public static final String ORIENTATION_PORTRAIT = "portrait";

    /* renamed from: a  reason: collision with root package name */
    private static final String f4169a = EnvironmentUtils.class.getSimpleName();
    private static Application b;
    private static Context c;
    private static String d;
    private static boolean e;
    private static boolean f;
    private static boolean g;
    private static boolean h;
    private static boolean i;
    private static boolean j;
    private static boolean k;
    private static boolean l;
    private static boolean m;
    private static Integer n;
    private static AvailableCameras o;

    /* loaded from: classes3.dex */
    public static class AvailableCameras {
        public boolean backCamera;
        public boolean frontCamera;
    }

    public static void init(Application application) {
        b = application;
        c = application.getApplicationContext();
        d();
        c();
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.utils.EnvironmentUtils.1
            @Override // java.lang.Runnable
            public void run() {
                AdvertisingIdClient.Info adInfo = EnvironmentUtils.getAdInfo();
                MMLog.i(EnvironmentUtils.f4169a, "AAID: " + EnvironmentUtils.getAaid(adInfo));
                MMLog.i(EnvironmentUtils.f4169a, "Limit ad tracking enabled: " + EnvironmentUtils.isLimitAdTrackingEnabled(adInfo));
            }
        });
        o = e();
        MMLog.i(f4169a, "Environment initialized with the following data.\n\tMillennial Media Ad SDK version: 6.3.1-4006cb2\n\tAndroid SDK version: " + Build.VERSION.SDK_INT + "\n\tApplication name: " + getApplicationName() + "\n\tApplication id: " + getAppId() + "\n\tLocale country " + getLocaleCountry() + "\n\tLocale language: " + getLocaleLanguage() + "\n\tUser agent: " + getUserAgent() + "\n\tExternal storage available: " + isExternalStorageReadable() + "\n\tDisplay width: " + getDisplayWidth() + "\n\tDisplay height: " + getDisplayHeight() + "\n\tDisplay density: " + getDisplayDensity() + "\n\tDisplay dpi: " + getDisplayDensityDpi() + "\n\tNatural screen orientation: " + getNaturalConfigOrientationString() + "\n\tREAD_EXTERNAL_STORAGE permission available: " + e + "\n\tWRITE_EXTERNAL_STORAGE permission available: " + f + "\n\tACCESS_WIFI_STATE permission available: " + g + "\n\tWRITE_CALENDAR permission available: " + i + "\n\tACCESS_FINE_LOCATION permission available: " + h + "\n\tVIBRATE permission available: " + j + "\n\tBLUETOOTH permission available: " + k + "\n\tNFC permission available: " + l + "\n\tRECORD_AUDIO permission available: " + m + "\n\tFront camera available: " + o.frontCamera + "\n\tBack camera available: " + o.backCamera + "\n\n");
    }

    private static void c() {
        ((TelephonyManager) b.getSystemService("phone")).listen(new PhoneStateListener() { // from class: com.millennialmedia.internal.utils.EnvironmentUtils.2
            @Override // android.telephony.PhoneStateListener
            public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                super.onSignalStrengthsChanged(signalStrength);
                if (signalStrength.isGsm()) {
                    Integer unused = EnvironmentUtils.n = Integer.valueOf((signalStrength.getGsmSignalStrength() * 2) - 113);
                } else {
                    Integer unused2 = EnvironmentUtils.n = Integer.valueOf(signalStrength.getCdmaDbm());
                }
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(EnvironmentUtils.f4169a, "Cell signal DBM updated to: " + EnvironmentUtils.n);
                }
            }
        }, 256);
    }

    private static void d() {
        boolean z = true;
        f = Build.VERSION.SDK_INT > 22 || b.b(c, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
        e = b.b(c, "android.permission.READ_EXTERNAL_STORAGE") == 0;
        g = b.b(c, "android.permission.ACCESS_WIFI_STATE") == 0;
        i = b.b(c, "android.permission.WRITE_CALENDAR") == 0;
        h = b.b(c, "android.permission.ACCESS_FINE_LOCATION") == 0;
        j = b.b(c, "android.permission.VIBRATE") == 0;
        k = b.b(c, "android.permission.BLUETOOTH") == 0;
        l = b.b(c, "android.permission.NFC") == 0;
        if (b.b(c, "android.permission.RECORD_AUDIO") != 0) {
            z = false;
        }
        m = z;
    }

    @TargetApi(21)
    private static AvailableCameras e() {
        o = new AvailableCameras();
        o.frontCamera = false;
        o.backCamera = false;
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                CameraManager cameraManager = (CameraManager) c.getSystemService("camera");
                for (String str : cameraManager.getCameraIdList()) {
                    int intValue = ((Integer) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING)).intValue();
                    if (intValue == 0) {
                        o.frontCamera = true;
                    } else if (intValue == 1) {
                        o.backCamera = true;
                    }
                }
            } else {
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                int numberOfCameras = Camera.getNumberOfCameras();
                for (int i2 = 0; i2 < numberOfCameras; i2++) {
                    Camera.getCameraInfo(i2, cameraInfo);
                    if (cameraInfo.facing == 1) {
                        o.frontCamera = true;
                    } else if (cameraInfo.facing == 0) {
                        o.backCamera = true;
                    }
                }
            }
        } catch (AssertionError e2) {
            MMLog.e(f4169a, "AssertionError while retrieving camera info <" + e2.getMessage() + "> -- ignored");
        } catch (Exception e3) {
            MMLog.e(f4169a, "Error retrieving camera information for device", e3);
        }
        return o;
    }

    public static Application getApplication() {
        return b;
    }

    public static Context getApplicationContext() {
        return c;
    }

    public static float getDisplayDensity() {
        return c.getResources().getDisplayMetrics().density;
    }

    public static int getDisplayDensityDpi() {
        return c.getResources().getDisplayMetrics().densityDpi;
    }

    @TargetApi(17)
    public static int getDisplayHeight() {
        if (Build.VERSION.SDK_INT >= 17) {
            Display defaultDisplay = ((WindowManager) c.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            return point.y;
        }
        return c.getResources().getDisplayMetrics().heightPixels;
    }

    @TargetApi(17)
    public static int getDisplayWidth() {
        if (Build.VERSION.SDK_INT >= 17) {
            Display defaultDisplay = ((WindowManager) c.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            return point.x;
        }
        return c.getResources().getDisplayMetrics().widthPixels;
    }

    public static AdvertisingIdClient.Info getAdInfo() {
        if (ThreadUtils.isUiThread()) {
            MMLog.e(f4169a, "Unable to get AdInfo instance on UI thread!");
            return null;
        } else if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(c) != 0) {
            return null;
        } else {
            try {
                return AdvertisingIdClient.getAdvertisingIdInfo(c);
            } catch (GooglePlayServicesNotAvailableException e2) {
                MMLog.e(f4169a, "Unable to get google play services advertising info, google play services is not available", e2);
                return null;
            } catch (GooglePlayServicesRepairableException e3) {
                MMLog.e(f4169a, "Unable to get google play services advertising info, google play services is not installed, up-to-date, or enabled", e3);
                return null;
            } catch (IOException e4) {
                MMLog.e(f4169a, "Unable to get google play services advertising info, google play services (e.g., the old version of the service doesn't support getting advertising ID)", e4);
                return null;
            } catch (IllegalStateException e5) {
                MMLog.e(f4169a, "Unable to get google play services advertising info, illegal state", e5);
                return null;
            }
        }
    }

    public static String getAaid(AdvertisingIdClient.Info info) {
        if (info == null) {
            MMLog.e(f4169a, "Unable to get aaid value");
            return null;
        }
        return info.getId();
    }

    public static boolean isLimitAdTrackingEnabled(AdvertisingIdClient.Info info) {
        if (info == null) {
            MMLog.e(f4169a, "Unable to get limit ad tracking value, ad info is null");
            return false;
        }
        return info.isLimitAdTrackingEnabled();
    }

    public static synchronized String getHashedDeviceId(String str) {
        String str2 = null;
        synchronized (EnvironmentUtils.class) {
            String string = Settings.Secure.getString(c.getContentResolver(), "android_id");
            if (string != null) {
                try {
                    str2 = Utils.a(MessageDigest.getInstance(str).digest(string.getBytes()));
                } catch (Exception e2) {
                    MMLog.e(f4169a, "Exception calculating <" + str + "> hashed device id with ANDROID_ID <" + string + ">", e2);
                }
            }
        }
        return str2;
    }

    public static Integer getMcc() {
        Configuration configuration = c.getResources().getConfiguration();
        if (configuration.mcc == 0) {
            String networkOperator = getNetworkOperator();
            if (networkOperator != null && networkOperator.length() >= 6) {
                try {
                    return Integer.valueOf(Integer.parseInt(networkOperator.substring(0, 3)));
                } catch (NumberFormatException e2) {
                    MMLog.w(f4169a, "Unable to parse mcc from network operator", e2);
                }
            }
            MMLog.w(f4169a, "Unable to retrieve mcc");
            return null;
        }
        return Integer.valueOf(configuration.mcc);
    }

    public static Integer getMnc() {
        Configuration configuration = c.getResources().getConfiguration();
        if (configuration.mnc == 0) {
            String networkOperator = getNetworkOperator();
            if (networkOperator != null && networkOperator.length() >= 6) {
                try {
                    return Integer.valueOf(Integer.parseInt(networkOperator.substring(3)));
                } catch (NumberFormatException e2) {
                    MMLog.w(f4169a, "Unable to parse mnc from network operator", e2);
                }
            }
            MMLog.w(f4169a, "Unable to retrieve mnc");
            return null;
        }
        return Integer.valueOf(configuration.mnc);
    }

    public static String getNetworkOperator() {
        return ((TelephonyManager) c.getSystemService("phone")).getNetworkOperator();
    }

    public static String getNetworkOperatorName() {
        return ((TelephonyManager) c.getSystemService("phone")).getNetworkOperatorName();
    }

    public static String getLocaleLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public static String getLocaleCountry() {
        return Locale.getDefault().getCountry();
    }

    public static String getApplicationName() {
        try {
            PackageManager packageManager = c.getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(c.getPackageName(), 0)).toString();
        } catch (PackageManager.NameNotFoundException e2) {
            MMLog.e(f4169a, "Unable to determine package name", e2);
            return null;
        }
    }

    public static String getAppId() {
        return c.getPackageName();
    }

    @TargetApi(17)
    public static String getUserAgent() {
        if (d != null) {
            return d;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                d = WebSettings.getDefaultUserAgent(c);
            } catch (Exception e2) {
                MMLog.w(f4169a, "Unable to get user agent from call to getDefaultUserAgent");
            }
        }
        if (d == null) {
            d = new WebView(c).getSettings().getUserAgentString();
        }
        return d;
    }

    public static Integer getBatteryLevel() {
        Intent f2 = f();
        if (f2 == null) {
            return null;
        }
        int intExtra = f2.getIntExtra("scale", -1);
        int intExtra2 = f2.getIntExtra("level", -1);
        if (intExtra != -1 && intExtra2 != -1) {
            return Integer.valueOf(Math.round((intExtra2 / intExtra) * 100.0f));
        }
        return null;
    }

    public static boolean isDevicePlugged() {
        Intent f2 = f();
        return (f2 == null || f2.getIntExtra("plugged", 0) == 0) ? false : true;
    }

    private static Intent f() {
        return c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    public static long getAvailableInternalStorageSize() {
        return a(Environment.getRootDirectory().getAbsolutePath());
    }

    public static long getAvailableExternalStorageSize() {
        if (isExternalStorageReadable()) {
            return a(Environment.getExternalStorageDirectory().getAbsolutePath());
        }
        return 0L;
    }

    public static long getAvailableStorageSize() {
        return 0 + getAvailableInternalStorageSize() + getAvailableExternalStorageSize();
    }

    private static long a(String str) {
        StatFs statFs = new StatFs(str);
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    public static boolean isExternalStorageReadable() {
        String externalStorageState = Environment.getExternalStorageState();
        return e && ("mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState));
    }

    public static boolean isExternalStorageWritable() {
        return f && "mounted".equals(Environment.getExternalStorageState());
    }

    public static boolean isExternalStorageSupported() {
        return f;
    }

    public static boolean isNetworkAvailable() {
        NetworkInfo[] allNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) c.getSystemService("connectivity");
        if (connectivityManager == null || (allNetworkInfo = connectivityManager.getAllNetworkInfo()) == null) {
            return false;
        }
        for (NetworkInfo networkInfo : allNetworkInfo) {
            if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                return true;
            }
        }
        return false;
    }

    public static String getNetworkConnectionType() {
        ConnectivityManager connectivityManager = (ConnectivityManager) c.getSystemService("connectivity");
        if (connectivityManager == null) {
            return "unknown";
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            int type = activeNetworkInfo.getType();
            if (type == 1) {
                return "wifi";
            }
            if (type == 0) {
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                        return "gprs";
                    case 2:
                        return "edge";
                    case 3:
                        return "umts";
                    case 4:
                        return "cdma";
                    case 5:
                        return "evdo_0";
                    case 6:
                        return "evdo_a";
                    case 7:
                        return "1xrtt";
                    case 8:
                        return "hsdpa";
                    case 9:
                        return "hsupa";
                    case 10:
                        return "hspa";
                    case 11:
                        return "iden";
                    case 12:
                        return "evdo_b";
                    case 13:
                        return "lte";
                    case 14:
                        return "ehrpd";
                    case 15:
                        return "hspap";
                    default:
                        return "unknown";
                }
            }
            return "unknown";
        }
        return "offline";
    }

    public static String getCellSignalDbm() {
        if (n != null) {
            return n.toString();
        }
        return null;
    }

    public static String getIpAddress() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress()) {
                        String upperCase = inetAddress.getHostAddress().toUpperCase();
                        if (!(inetAddress instanceof Inet4Address)) {
                            int indexOf = upperCase.indexOf(37);
                            return indexOf < 0 ? upperCase : upperCase.substring(0, indexOf);
                        }
                        return upperCase;
                    }
                }
            }
        } catch (Exception e2) {
            MMLog.e(f4169a, "Unable to determine IP address for device", e2);
        }
        return null;
    }

    public static String getMacAddress() {
        if (g) {
            return ((WifiManager) c.getSystemService("wifi")).getConnectionInfo().getBSSID();
        }
        return null;
    }

    public static int getCurrentConfigOrientation() {
        return c.getResources().getConfiguration().orientation;
    }

    public static String getCurrentConfigOrientationString() {
        switch (c.getResources().getConfiguration().orientation) {
            case 1:
                return "portrait";
            case 2:
                return "landscape";
            default:
                return getNaturalConfigOrientationString();
        }
    }

    public static int getNaturalConfigOrientation() {
        Configuration configuration = c.getResources().getConfiguration();
        int rotation = ((WindowManager) c.getSystemService("window")).getDefaultDisplay().getRotation();
        if (configuration.orientation == 2 && (rotation == 0 || rotation == 2)) {
            return 2;
        }
        return (configuration.orientation == 1 && (rotation == 1 || rotation == 3)) ? 2 : 1;
    }

    public static String getNaturalConfigOrientationString() {
        return getNaturalConfigOrientation() == 2 ? "landscape" : "portrait";
    }

    public static int getConfigOrientationFromRequestedOrientation(int i2) {
        switch (i2) {
            case -1:
                return 0;
            case 0:
            case 6:
            case 8:
            case 11:
                return 2;
            case 1:
            case 7:
            case 9:
            case 12:
                return 1;
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
            default:
                return getCurrentConfigOrientation();
        }
    }

    public static Location getLocation() {
        LocationManager locationManager;
        if (!h || (locationManager = (LocationManager) c.getSystemService(a.b.LOCATION)) == null) {
            return null;
        }
        return locationManager.getLastKnownLocation("passive");
    }

    public static boolean hasGps() {
        return c.getPackageManager().hasSystemFeature("android.hardware.location.gps");
    }

    public static boolean hasFineLocationPermission() {
        return h;
    }

    public static boolean hasMicrophone() {
        return c.getPackageManager().hasSystemFeature("android.hardware.microphone");
    }

    public static boolean hasMicrophonePermission() {
        return m;
    }

    public static boolean hasCamera() {
        return o.backCamera || o.frontCamera;
    }

    public static AvailableCameras getAvailableCameras() {
        return o;
    }

    public static boolean hasCalendarPermission() {
        return i;
    }

    public static boolean hasVibratePermission() {
        return j;
    }

    public static boolean hasBluetooth() {
        return c.getPackageManager().hasSystemFeature("android.hardware.bluetooth");
    }

    public static boolean hasBluetoothPermission() {
        return k;
    }

    public static boolean hasNfc() {
        return c.getPackageManager().hasSystemFeature("android.hardware.nfc");
    }

    public static boolean hasNfcPermission() {
        return l;
    }

    public static int getVolume(int i2) {
        AudioManager audioManager = (AudioManager) c.getSystemService("audio");
        int streamMaxVolume = audioManager.getStreamMaxVolume(i2);
        if (streamMaxVolume < 1) {
            return 0;
        }
        return (int) (audioManager.getStreamVolume(i2) * (100.0f / streamMaxVolume));
    }

    public static boolean areHeadphonesPluggedIn() {
        return ((AudioManager) c.getSystemService("audio")).isWiredHeadsetOn();
    }

    public static File getMillennialDir() {
        File file = new File(c.getFilesDir() + "/.com.millennialmedia/");
        file.mkdirs();
        return file;
    }

    public static File getPicturesDirectory() {
        File externalStoragePublicDirectory;
        File file = null;
        if (Build.VERSION.SDK_INT >= 23) {
            File[] externalMediaDirs = c.getExternalMediaDirs();
            if (externalMediaDirs.length > 0) {
                file = externalMediaDirs[0];
            }
            externalStoragePublicDirectory = file;
        } else {
            externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        }
        if (externalStoragePublicDirectory != null) {
            File file2 = new File(externalStoragePublicDirectory.getAbsolutePath() + File.separator + BuildConfig.NAMESPACE + File.separator + getApplicationName());
            file2.mkdirs();
            return file2;
        }
        return externalStoragePublicDirectory;
    }

    public static boolean isSmsSupported() {
        return c.getPackageManager().hasSystemFeature("android.hardware.telephony");
    }

    public static boolean isCalendarSupported() {
        return Build.VERSION.SDK_INT >= 14;
    }

    public static boolean isTelSupported() {
        return c.getPackageManager().hasSystemFeature("android.hardware.telephony");
    }

    @TargetApi(23)
    public static boolean isDeviceIdle() {
        if (Build.VERSION.SDK_INT >= 23) {
            return ((PowerManager) b.getSystemService("power")).isDeviceIdleMode();
        }
        return false;
    }
}
