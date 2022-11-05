package com.amazon.device.ads;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.openx.view.mraid.JSInterface;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.Locale;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DeviceInfo {
    private static final String LOGTAG = DeviceInfo.class.getSimpleName();
    public static final String ORIENTATION_LANDSCAPE = "landscape";
    public static final String ORIENTATION_PORTRAIT = "portrait";
    public static final String ORIENTATION_UNKNOWN = "unknown";
    private static final String dt = "android";
    private static final String os = "Android";
    private boolean bad_mac;
    private boolean bad_serial;
    private boolean bad_udid;
    private final AndroidBuildInfo buildInfo;
    private String carrier;
    private String country;
    private final MobileAdsInfoStore infoStore;
    private Size landscapeScreenSize;
    private String language;
    private final MobileAdsLogger logger;
    private boolean macFetched;
    private String make;
    private String model;
    private String osVersion;
    private Size portraitScreenSize;
    private float scalingFactor;
    private String scalingFactorAsString;
    private boolean serialFetched;
    private String sha1_mac;
    private String sha1_serial;
    private String sha1_udid;
    private boolean udidFetched;
    private UserAgentManager userAgentManager;

    public DeviceInfo(Context context, UserAgentManager userAgentManager) {
        this(context, userAgentManager, MobileAdsInfoStore.getInstance(), new MobileAdsLoggerFactory(), new AndroidBuildInfo());
    }

    DeviceInfo(Context context, UserAgentManager userAgentManager, MobileAdsInfoStore mobileAdsInfoStore, MobileAdsLoggerFactory mobileAdsLoggerFactory, AndroidBuildInfo androidBuildInfo) {
        this.make = Build.MANUFACTURER;
        this.model = Build.MODEL;
        this.osVersion = Build.VERSION.RELEASE;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.infoStore = mobileAdsInfoStore;
        this.buildInfo = androidBuildInfo;
        setCountry();
        setCarrier(context);
        setLanguage();
        setScalingFactor(context);
        this.userAgentManager = userAgentManager;
    }

    public void setUserAgentManager(UserAgentManager userAgentManager) {
        this.userAgentManager = userAgentManager;
    }

    private void setMacAddressIfNotFetched() {
        if (!this.macFetched) {
            setMacAddress();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void setMacAddress() {
        WifiInfo wifiInfo;
        WifiManager wifiManager = (WifiManager) this.infoStore.getApplicationContext().getSystemService("wifi");
        if (wifiManager != null) {
            try {
                wifiInfo = wifiManager.getConnectionInfo();
            } catch (ExceptionInInitializerError e) {
                this.logger.d("Unable to get Wifi connection information: %s", e);
            } catch (SecurityException e2) {
                this.logger.d("Unable to get Wifi connection information: %s", e2);
                wifiInfo = null;
            }
            if (wifiInfo != null) {
                this.sha1_mac = null;
            } else {
                String macAddress = wifiInfo.getMacAddress();
                if (macAddress == null || macAddress.length() == 0) {
                    this.sha1_mac = null;
                    this.bad_mac = true;
                } else if (!Pattern.compile("((([0-9a-fA-F]){1,2}[-:]){5}([0-9a-fA-F]){1,2})").matcher(macAddress).find()) {
                    this.sha1_mac = null;
                    this.bad_mac = true;
                } else {
                    this.sha1_mac = WebUtils.getURLEncodedString(StringUtils.sha1(macAddress));
                }
            }
            this.macFetched = true;
        }
        wifiInfo = null;
        if (wifiInfo != null) {
        }
        this.macFetched = true;
    }

    private void setSerialIfNotFetched() {
        if (!this.serialFetched) {
            setSerial();
        }
    }

    private void setSerial() {
        String str;
        try {
            str = (String) Build.class.getDeclaredField("SERIAL").get(Build.class);
        } catch (Exception e) {
            str = null;
        }
        if (str == null || str.length() == 0 || str.equalsIgnoreCase("unknown")) {
            this.bad_serial = true;
        } else {
            this.sha1_serial = WebUtils.getURLEncodedString(StringUtils.sha1(str));
        }
        this.serialFetched = true;
    }

    private void setUdidIfNotFetched() {
        if (!this.udidFetched) {
            setUdid();
        }
    }

    private void setUdid() {
        String string = Settings.Secure.getString(this.infoStore.getApplicationContext().getContentResolver(), "android_id");
        if (StringUtils.isNullOrEmpty(string) || string.equalsIgnoreCase("9774d56d682e549c")) {
            this.sha1_udid = null;
            this.bad_udid = true;
        } else {
            this.sha1_udid = WebUtils.getURLEncodedString(StringUtils.sha1(string));
        }
        this.udidFetched = true;
    }

    private void setLanguage() {
        String language = Locale.getDefault().getLanguage();
        if (language == null || language.length() <= 0) {
            language = null;
        }
        this.language = language;
    }

    private void setCountry() {
        String country = Locale.getDefault().getCountry();
        if (country == null || country.length() <= 0) {
            country = null;
        }
        this.country = country;
    }

    private void setCarrier(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            String networkOperatorName = telephonyManager.getNetworkOperatorName();
            if (networkOperatorName == null || networkOperatorName.length() <= 0) {
                networkOperatorName = null;
            }
            this.carrier = networkOperatorName;
        }
    }

    private void setScalingFactor(Context context) {
        if (this.make.equals("motorola") && this.model.equals("MB502")) {
            this.scalingFactor = 1.0f;
        } else {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            this.scalingFactor = displayMetrics.scaledDensity;
        }
        this.scalingFactorAsString = Float.toString(this.scalingFactor);
    }

    public String getDeviceType() {
        return "android";
    }

    public String getMake() {
        return this.make;
    }

    public String getModel() {
        return this.model;
    }

    public String getOS() {
        return "Android";
    }

    public String getOSVersion() {
        return this.osVersion;
    }

    public String getMacSha1() {
        setMacAddressIfNotFetched();
        return this.sha1_mac;
    }

    public boolean isMacBad() {
        setMacAddressIfNotFetched();
        return this.bad_mac;
    }

    public String getSerialSha1() {
        setSerialIfNotFetched();
        return this.sha1_serial;
    }

    public boolean isSerialBad() {
        setSerialIfNotFetched();
        return this.bad_serial;
    }

    public String getUdidSha1() {
        setUdidIfNotFetched();
        return this.sha1_udid;
    }

    public boolean isUdidBad() {
        setUdidIfNotFetched();
        return this.bad_udid;
    }

    public String getCarrier() {
        return this.carrier;
    }

    public String getCountry() {
        return this.country;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getScalingFactorAsString() {
        return this.scalingFactorAsString;
    }

    public float getScalingFactorAsFloat() {
        return this.scalingFactor;
    }

    public String getUserAgentString() {
        return this.userAgentManager.getUserAgentString();
    }

    public void setUserAgentString(String str) {
        this.userAgentManager.setUserAgentString(str);
    }

    public void populateUserAgentString(Context context) {
        this.userAgentManager.populateUserAgentString(context);
    }

    public String getOrientation() {
        switch (DisplayUtils.determineCanonicalScreenOrientation(this.infoStore.getApplicationContext(), this.buildInfo)) {
            case 0:
            case 8:
                return "landscape";
            case 1:
            case 9:
                return "portrait";
            default:
                return "unknown";
        }
    }

    public Size getScreenSize(String str) {
        DisplayMetrics displayMetrics;
        if (str.equals("portrait") && this.portraitScreenSize != null) {
            return this.portraitScreenSize;
        }
        if (str.equals("landscape") && this.landscapeScreenSize != null) {
            return this.landscapeScreenSize;
        }
        ((WindowManager) this.infoStore.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        String str2 = String.valueOf(displayMetrics.widthPixels) + JSInterface.JSON_X + String.valueOf(displayMetrics.heightPixels);
        if (str.equals("portrait")) {
            this.portraitScreenSize = new Size(str2);
            return this.portraitScreenSize;
        } else if (str.equals("landscape")) {
            this.landscapeScreenSize = new Size(str2);
            return this.landscapeScreenSize;
        } else {
            return new Size(str2);
        }
    }

    public JSONObject getDInfoProperty() {
        JSONObject jSONObject = new JSONObject();
        JSONUtils.put(jSONObject, PubMaticConstants.MAKE_PARAM, getMake());
        JSONUtils.put(jSONObject, PubMaticConstants.MODEL_PARAM, getModel());
        JSONUtils.put(jSONObject, PubMaticConstants.OS_PARAM, getOS());
        JSONUtils.put(jSONObject, "osVersion", getOSVersion());
        JSONUtils.put(jSONObject, "scalingFactor", getScalingFactorAsString());
        JSONUtils.put(jSONObject, "language", getLanguage());
        JSONUtils.put(jSONObject, PubMaticConstants.COUNTRY_PARAM, getCountry());
        JSONUtils.put(jSONObject, "carrier", getCarrier());
        return jSONObject;
    }

    public String toJsonString() {
        return toJsonObject(getOrientation()).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject toJsonObject(String str) {
        JSONObject dInfoProperty = getDInfoProperty();
        JSONUtils.put(dInfoProperty, "orientation", str);
        JSONUtils.put(dInfoProperty, "screenSize", getScreenSize(str).toString());
        JSONUtils.put(dInfoProperty, "connectionType", new ConnectionInfo(this.infoStore).getConnectionType());
        return dInfoProperty;
    }
}
