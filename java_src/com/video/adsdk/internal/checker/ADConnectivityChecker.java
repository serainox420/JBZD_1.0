package com.video.adsdk.internal.checker;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import com.video.adsdk.interfaces.checker.ConnectivityChecker;
/* loaded from: classes3.dex */
public class ADConnectivityChecker implements ConnectivityChecker {
    boolean canBeUsed = true;
    int connectionType;
    Context context;

    public ADConnectivityChecker(Context context) {
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.checker.ConnectivityChecker
    public boolean isWifiEnabled() {
        return getConnectionType() == 9;
    }

    @Override // com.video.adsdk.interfaces.checker.ConnectivityChecker
    public int getConnectionType() {
        return this.connectionType;
    }

    @Override // com.video.adsdk.interfaces.checker.SystemParameterChecker
    public boolean readCurrentValues() {
        try {
            this.connectionType = getConnectionTypeUnsafe();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private int getConnectionTypeUnsafe() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        WifiManager wifiManager = (WifiManager) this.context.getSystemService("wifi");
        if ((activeNetworkInfo != null && activeNetworkInfo.getType() == 1) || wifiManager.isWifiEnabled()) {
            return 9;
        }
        if (activeNetworkInfo.getType() == 0) {
            switch (activeNetworkInfo.getSubtype()) {
                case 1:
                    return 3;
                case 2:
                    return 1;
                case 13:
                    return 6;
                default:
                    return 2;
            }
        }
        return 0;
    }
}
