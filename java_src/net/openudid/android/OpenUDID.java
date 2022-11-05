package net.openudid.android;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.flurry.android.Constants;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
/* loaded from: classes3.dex */
public class OpenUDID {
    private static final boolean LOG = true;
    public static final String PREFS_NAME = "openudid_prefs";
    public static final String PREF_KEY = "openudid";
    public static final String TAG = "OpenUDID";
    private static final boolean _UseBlueToothFailback = false;
    private static final boolean _UseImeiFailback = false;
    private static String _openUdid;

    private static void _debugLog(String str) {
        Log.d(TAG, str);
    }

    public static void syncContext(Context context) {
        if (_openUdid == null) {
            try {
                context = context.createPackageContext("net.openudid.android", 2);
            } catch (PackageManager.NameNotFoundException e) {
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences(PREFS_NAME, 1);
            String string = sharedPreferences.getString(PREF_KEY, null);
            if (string == null) {
                generateOpenUDIDInContext(context);
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putString(PREF_KEY, _openUdid);
                edit.commit();
                return;
            }
            _openUdid = string;
        }
    }

    public static String getOpenUDIDInContext() {
        return _openUdid;
    }

    public static String getCorpUDID(String str) {
        return Md5(String.format("%s.%s", str, getOpenUDIDInContext()));
    }

    private static void generateOpenUDIDInContext(Context context) {
        _debugLog("Generating openUDID");
        generateWifiId(context);
        if (_openUdid == null) {
            String lowerCase = Settings.Secure.getString(context.getContentResolver(), "android_id").toLowerCase();
            if (lowerCase != null && lowerCase.length() > 14 && !lowerCase.equals("9774d56d682e549c")) {
                _openUdid = "ANDROID:" + lowerCase;
                return;
            }
            generateRandomNumber();
            _debugLog(_openUdid);
            _debugLog("done");
        }
    }

    private static void generateImeiId(Context context) {
        try {
            String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            if (deviceId != null && !deviceId.substring(0, 3).equals("000")) {
                _openUdid = "IMEI:" + deviceId;
            }
        } catch (Exception e) {
        }
    }

    private static void generateBlueToothId() {
        try {
            String address = BluetoothAdapter.getDefaultAdapter().getAddress();
            if (address != null) {
                _openUdid = "BTMAC:" + address;
            }
        } catch (Exception e) {
        }
    }

    private static void generateWifiId(Context context) {
        try {
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            _debugLog(String.format("%s", connectionInfo.getMacAddress()));
            String macAddress = connectionInfo.getMacAddress();
            if (macAddress != null) {
                _openUdid = "WIFIMAC:" + macAddress;
            }
        } catch (Exception e) {
        }
    }

    private static String Md5(String str) {
        int i;
        MessageDigest messageDigest = null;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        messageDigest.update(str.getBytes(), 0, str.length());
        byte[] digest = messageDigest.digest();
        String str2 = new String();
        for (byte b : digest) {
            if ((b & Constants.UNKNOWN) <= 15) {
                str2 = String.valueOf(str2) + AppEventsConstants.EVENT_PARAM_VALUE_NO;
            }
            str2 = String.valueOf(str2) + Integer.toHexString(i);
        }
        return str2.toUpperCase();
    }

    private static void generateRandomNumber() {
        _openUdid = Md5(UUID.randomUUID().toString());
    }

    private static void generateSystemId() {
        String format = String.format("%s/%s/%s/%s:%s/%s/%s:%s/%s/%d-%s-%s-%s-%s", Build.BRAND, Build.PRODUCT, Build.DEVICE, Build.BOARD, Build.VERSION.RELEASE, Build.ID, Build.VERSION.INCREMENTAL, Build.TYPE, Build.TAGS, Long.valueOf(Build.TIME), Build.DISPLAY, Build.HOST, Build.MANUFACTURER, Build.MODEL);
        _debugLog(format);
        if (format != null) {
            _openUdid = Md5(format);
        }
    }
}
