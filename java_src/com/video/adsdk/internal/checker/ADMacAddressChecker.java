package com.video.adsdk.internal.checker;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.video.adsdk.interfaces.checker.MacAddressChecker;
/* loaded from: classes3.dex */
public class ADMacAddressChecker implements MacAddressChecker {
    private final Context context;
    private String macAddress;

    public ADMacAddressChecker(Context context) {
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.checker.SystemParameterChecker
    public boolean readCurrentValues() {
        try {
            this.macAddress = ((WifiManager) this.context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            return this.macAddress != null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.video.adsdk.interfaces.checker.MacAddressChecker
    public String getMacAddress() {
        return this.macAddress;
    }
}
