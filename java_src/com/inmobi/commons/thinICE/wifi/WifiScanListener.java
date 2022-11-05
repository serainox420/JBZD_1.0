package com.inmobi.commons.thinICE.wifi;

import android.net.wifi.ScanResult;
import java.util.List;
/* loaded from: classes2.dex */
public interface WifiScanListener {
    void onResultsReceived(List<ScanResult> list);

    void onTimeout();
}
