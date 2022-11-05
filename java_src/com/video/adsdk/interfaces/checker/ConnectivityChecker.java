package com.video.adsdk.interfaces.checker;
/* loaded from: classes3.dex */
public interface ConnectivityChecker extends SystemParameterChecker {
    public static final int EDGE = 1;
    public static final int G3 = 3;
    public static final int LTE = 6;
    public static final int MOBILE_DATA = 2;
    public static final int OFFLINE = 0;
    public static final int WIFI = 9;

    int getConnectionType();

    boolean isWifiEnabled();
}
