package com.inmobi.commons.thinICE.wifi;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEConfigSettings;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class WifiUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f3823a = {"android.permission.ACCESS_WIFI_STATE"};
    private static final String[] b = {"android.permission.ACCESS_WIFI_STATE", "android.permission.CHANGE_WIFI_STATE"};
    private static final String[] c = {"android.permission.WAKE_LOCK"};

    public static WifiInfo getConnectedWifiInfo(Context context, boolean z, boolean z2) {
        android.net.wifi.WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        if (connectionInfo == null) {
            return null;
        }
        WifiInfo wifiInfo = new WifiInfo();
        String bssid = connectionInfo.getBSSID();
        String ssid = connectionInfo.getSSID();
        if (bssid == null || a(z, ssid)) {
            return null;
        }
        wifiInfo.bssid = macToLong(bssid);
        if (z2) {
            ssid = null;
        }
        wifiInfo.ssid = ssid;
        wifiInfo.rssi = connectionInfo.getRssi();
        wifiInfo.ip = connectionInfo.getIpAddress();
        return wifiInfo;
    }

    public static WifiInfo getConnectedWifiInfo(Context context) {
        int wifiFlags = IceDataCollector.getConfig().getWifiFlags();
        return getConnectedWifiInfo(context, !ThinICEConfigSettings.bitTest(wifiFlags, 2), ThinICEConfigSettings.bitTest(wifiFlags, 1));
    }

    public static boolean hasGetConnectedWifiInfoPermission(Context context) {
        for (String str : f3823a) {
            if (context.checkCallingOrSelfPermission(str) != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean hasWifiScanPermission(Context context, boolean z) {
        for (String str : b) {
            if (context.checkCallingOrSelfPermission(str) != 0) {
                return false;
            }
        }
        if (z) {
            for (String str2 : c) {
                if (context.checkCallingOrSelfPermission(str2) != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    public static List<WifiInfo> scanResultsToWifiInfos(List<ScanResult> list, boolean z, boolean z2) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (ScanResult scanResult : list) {
            if (!a(z, scanResult.SSID)) {
                arrayList.add(scanResultToWifiInfo(scanResult, z2));
            }
        }
        return arrayList;
    }

    private static boolean a(boolean z, String str) {
        return z && str != null && str.endsWith("_nomap");
    }

    public static WifiInfo scanResultToWifiInfo(ScanResult scanResult, boolean z) {
        String str = null;
        if (scanResult == null) {
            return null;
        }
        WifiInfo wifiInfo = new WifiInfo();
        wifiInfo.bssid = macToLong(scanResult.BSSID);
        if (!z) {
            str = scanResult.SSID;
        }
        wifiInfo.ssid = str;
        wifiInfo.rssi = scanResult.level;
        return wifiInfo;
    }

    public static long macToLong(String str) {
        String[] split = str.split("\\:");
        byte[] bArr = new byte[6];
        for (int i = 0; i < 6; i++) {
            bArr[i] = (byte) Integer.parseInt(split[i], 16);
        }
        return a(bArr);
    }

    private static long a(byte[] bArr) {
        if (bArr == null || bArr.length != 6) {
            return 0L;
        }
        return a(bArr[5]) | (a(bArr[4]) << 8) | (a(bArr[3]) << 16) | (a(bArr[2]) << 24) | (a(bArr[1]) << 32) | (a(bArr[0]) << 40);
    }

    private static long a(byte b2) {
        return b2 & 255;
    }
}
