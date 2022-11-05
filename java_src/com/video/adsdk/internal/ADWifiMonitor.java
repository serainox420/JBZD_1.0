package com.video.adsdk.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.SupplicantState;
import com.video.adsdk.interfaces.WifiListener;
import com.video.adsdk.interfaces.WifiMonitor;
import com.video.adsdk.interfaces.checker.ConnectivityChecker;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ADWifiMonitor extends BroadcastReceiver implements WifiMonitor {
    ConnectivityChecker wifiChecker;
    List<WifiListener> wifiListeners = new ArrayList();

    public ADWifiMonitor(ConnectivityChecker connectivityChecker) {
        this.wifiChecker = null;
        this.wifiChecker = connectivityChecker;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        switch (AnonymousClass1.$SwitchMap$android$net$wifi$SupplicantState[((SupplicantState) intent.getParcelableExtra("newState")).ordinal()]) {
            case 1:
                notifyWifiActivated();
                return;
            case 2:
                notifyWifiDeactivated();
                return;
            default:
                return;
        }
    }

    /* renamed from: com.video.adsdk.internal.ADWifiMonitor$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$net$wifi$SupplicantState = new int[SupplicantState.values().length];

        static {
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.DISCONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    @Override // com.video.adsdk.interfaces.WifiMonitor
    public void registerWifiListener(WifiListener wifiListener) {
        if (!this.wifiListeners.contains(wifiListener)) {
            this.wifiListeners.add(wifiListener);
        }
    }

    @Override // com.video.adsdk.interfaces.WifiMonitor
    public void unregisterWifiListener(WifiListener wifiListener) {
        this.wifiListeners.remove(wifiListener);
    }

    private void notifyWifiActivated() {
        for (WifiListener wifiListener : this.wifiListeners) {
            wifiListener.onWifiActivated();
        }
    }

    private void notifyWifiDeactivated() {
        for (WifiListener wifiListener : this.wifiListeners) {
            wifiListener.onWifiDeactivated();
        }
    }

    @Override // com.video.adsdk.interfaces.WifiMonitor
    public boolean isWifiActive() {
        if (this.wifiChecker.readCurrentValues()) {
            return this.wifiChecker.isWifiEnabled();
        }
        return false;
    }
}
