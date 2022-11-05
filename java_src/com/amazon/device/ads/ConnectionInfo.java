package com.amazon.device.ads;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ConnectionInfo {
    private static final String LOGTAG = ConnectionInfo.class.getSimpleName();
    private static final String WIFI_NAME = "Wifi";
    private String connectionType;
    private ConnectivityManager connectivityManager;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    public ConnectionInfo(MobileAdsInfoStore mobileAdsInfoStore) {
        initialize((ConnectivityManager) mobileAdsInfoStore.getApplicationContext().getSystemService("connectivity"));
    }

    ConnectionInfo(ConnectivityManager connectivityManager) {
        initialize(connectivityManager);
    }

    private void initialize(ConnectivityManager connectivityManager) {
        this.connectivityManager = connectivityManager;
        refresh();
    }

    public void refresh() {
        generateConnectionType();
    }

    private void generateConnectionType() {
        NetworkInfo networkInfo = null;
        try {
            if (this.connectivityManager != null) {
                networkInfo = this.connectivityManager.getActiveNetworkInfo();
            }
        } catch (SecurityException e) {
            this.logger.d("Unable to get active network information: %s", e);
        }
        if (networkInfo != null) {
            if (networkInfo.getType() == 1) {
                this.connectionType = WIFI_NAME;
                return;
            } else {
                this.connectionType = Integer.toString(networkInfo.getSubtype());
                return;
            }
        }
        this.connectionType = Integer.toString(0);
    }

    public String getConnectionType() {
        return this.connectionType;
    }

    public boolean isWiFi() {
        return WIFI_NAME.equals(getConnectionType());
    }
}
