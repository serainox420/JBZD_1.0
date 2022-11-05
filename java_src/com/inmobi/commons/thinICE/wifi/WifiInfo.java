package com.inmobi.commons.thinICE.wifi;
/* loaded from: classes2.dex */
public final class WifiInfo {
    public long bssid;
    public int ip;
    public int rssi;
    public String ssid;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName()).append("[");
        sb.append("bssid=").append(this.bssid).append(", ");
        sb.append("ssid=").append(this.ssid).append(", ");
        sb.append("rssi=").append(this.rssi).append(", ");
        sb.append("ip=").append(String.format("%d.%d.%d.%d", Integer.valueOf(this.ip & 255), Integer.valueOf((this.ip >> 8) & 255), Integer.valueOf((this.ip >> 16) & 255), Integer.valueOf((this.ip >> 24) & 255)));
        sb.append("]");
        return sb.toString();
    }
}
