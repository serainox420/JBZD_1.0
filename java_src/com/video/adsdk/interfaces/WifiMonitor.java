package com.video.adsdk.interfaces;
/* loaded from: classes3.dex */
public interface WifiMonitor {
    boolean isWifiActive();

    void registerWifiListener(WifiListener wifiListener);

    void unregisterWifiListener(WifiListener wifiListener);
}
