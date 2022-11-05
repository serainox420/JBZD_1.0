package com.inmobi.commons.thinICE.icedatacollector;

import android.telephony.NeighboringCellInfo;
import com.inmobi.commons.thinICE.cellular.CellOperatorInfo;
import com.inmobi.commons.thinICE.cellular.CellTowerInfo;
import com.inmobi.commons.thinICE.location.LocationInfo;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2.dex */
public final class Sample {
    public CellOperatorInfo cellOperator;
    public CellTowerInfo connectedCellTowerInfo;
    public WifiInfo connectedWifiAp;
    public HashMap<String, LocationInfo> lastKnownLocations;
    public long utc;
    public List<NeighboringCellInfo> visibleCellTowerInfo;
    public List<WifiInfo> visibleWifiAp;
    public int zoneOffset;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Sample() {
        Calendar calendar = Calendar.getInstance();
        this.utc = calendar.getTimeInMillis();
        this.zoneOffset = calendar.get(16) + calendar.get(15);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName()).append("[\n");
        sb.append("-- utc: ").append(this.utc).append("\n");
        sb.append("-- zoneOffset: ").append(this.zoneOffset).append("\n");
        sb.append("-- cell operator: ").append(this.cellOperator).append("\n");
        sb.append("-- connected wifi access point: ").append(this.connectedWifiAp).append("\n");
        sb.append("-- last known locations:");
        if (this.lastKnownLocations == null) {
            sb.append(" null\n");
        } else {
            sb.append("\n");
            for (LocationInfo locationInfo : this.lastKnownLocations.values()) {
                sb.append("   + ").append(locationInfo).append("\n");
            }
        }
        sb.append("-- visible wifi aps:");
        if (this.visibleWifiAp == null) {
            sb.append(" null\n");
        } else {
            sb.append("\n");
            for (WifiInfo wifiInfo : this.visibleWifiAp) {
                sb.append("   + ").append(wifiInfo).append("\n");
            }
        }
        sb.append("-- connected serving cell tower: ").append(this.connectedCellTowerInfo).append("\n");
        sb.append("]");
        return sb.toString();
    }
}
