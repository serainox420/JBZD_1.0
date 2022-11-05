package com.openx.common.deviceData.managers;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.openx.common.deviceData.listeners.NetworkListener;
import com.openx.core.sdk.OXMBaseManager;
import com.openx.model.adParams.AdCallParameters;
/* loaded from: classes3.dex */
public final class NetworkImpl extends OXMBaseManager implements NetworkListener {
    private ConnectivityManager mConnectivityManager;

    @Override // com.openx.core.sdk.OXMBaseManager, com.openx.core.sdk.OXMManager
    public void init(Context context) {
        super.init(context);
        if (super.isInit()) {
            this.mConnectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        }
    }

    @Override // com.openx.common.deviceData.listeners.NetworkListener
    public AdCallParameters.OXMConnectionType getConnectionType() {
        NetworkInfo activeNetworkInfo;
        AdCallParameters.OXMConnectionType oXMConnectionType = AdCallParameters.OXMConnectionType.OFFLINE;
        if (isInit() && (activeNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo()) != null) {
            int type = activeNetworkInfo.getType();
            if (activeNetworkInfo.isConnected()) {
                if (Build.VERSION.SDK_INT >= 8) {
                    return type == 0 || type == 4 || type == 5 || type == 2 || type == 3 ? AdCallParameters.OXMConnectionType.CELL : AdCallParameters.OXMConnectionType.WIFI;
                }
                return type == 0 ? AdCallParameters.OXMConnectionType.CELL : AdCallParameters.OXMConnectionType.WIFI;
            }
            return oXMConnectionType;
        }
        return oXMConnectionType;
    }
}
