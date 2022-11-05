package com.unity3d.ads.connectivity;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.properties.ClientProperties;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class ConnectivityMonitor {
    private static int _connected = -1;
    private static boolean _listening = false;
    private static boolean _webappMonitoring = false;
    private static boolean _wifi = false;
    private static int _networkType = -1;
    private static HashSet<IConnectivityListener> _listeners = null;

    public static void setConnectionMonitoring(boolean z) {
        _webappMonitoring = z;
        updateListeningStatus();
    }

    public static void addListener(IConnectivityListener iConnectivityListener) {
        if (_listeners == null) {
            _listeners = new HashSet<>();
        }
        _listeners.add(iConnectivityListener);
        updateListeningStatus();
    }

    public static void removeListener(IConnectivityListener iConnectivityListener) {
        if (_listeners != null) {
            _listeners.remove(iConnectivityListener);
            updateListeningStatus();
        }
    }

    public static void stopAll() {
        _listeners = null;
        _webappMonitoring = false;
        updateListeningStatus();
    }

    private static void updateListeningStatus() {
        if (_webappMonitoring || (_listeners != null && !_listeners.isEmpty())) {
            startListening();
        } else {
            stopListening();
        }
    }

    private static void startListening() {
        if (!_listening) {
            _listening = true;
            initConnectionStatus();
            if (Build.VERSION.SDK_INT < 21) {
                ConnectivityChangeReceiver.register();
            } else {
                ConnectivityNetworkCallback.register();
            }
        }
    }

    private static void stopListening() {
        if (_listening) {
            _listening = false;
            if (Build.VERSION.SDK_INT < 21) {
                ConnectivityChangeReceiver.unregister();
            } else {
                ConnectivityNetworkCallback.unregister();
            }
        }
    }

    private static void initConnectionStatus() {
        ConnectivityManager connectivityManager = (ConnectivityManager) ClientProperties.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                _connected = 1;
                _wifi = activeNetworkInfo.getType() == 1;
                if (!_wifi) {
                    _networkType = ((TelephonyManager) ClientProperties.getApplicationContext().getSystemService("phone")).getNetworkType();
                    return;
                }
                return;
            }
            _connected = 0;
        }
    }

    public static void connected() {
        if (_connected != 1) {
            DeviceLog.debug("Unity Ads connectivity change: connected");
            initConnectionStatus();
            if (_listeners != null) {
                Iterator<IConnectivityListener> it = _listeners.iterator();
                while (it.hasNext()) {
                    it.next().onConnected();
                }
            }
            sendToWebview(ConnectivityEvent.CONNECTED, _wifi, _networkType);
        }
    }

    public static void disconnected() {
        if (_connected != 0) {
            _connected = 0;
            DeviceLog.debug("Unity Ads connectivity change: disconnected");
            if (_listeners != null) {
                Iterator<IConnectivityListener> it = _listeners.iterator();
                while (it.hasNext()) {
                    it.next().onDisconnected();
                }
            }
            sendToWebview(ConnectivityEvent.DISCONNECTED, false, 0);
        }
    }

    public static void connectionStatusChanged() {
        NetworkInfo activeNetworkInfo;
        boolean z = true;
        if (_connected == 1 && (activeNetworkInfo = ((ConnectivityManager) ClientProperties.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() != 1) {
                z = false;
            }
            int networkType = ((TelephonyManager) ClientProperties.getApplicationContext().getSystemService("phone")).getNetworkType();
            if (z != _wifi || (networkType != _networkType && !_wifi)) {
                _wifi = z;
                _networkType = networkType;
                DeviceLog.debug("Unity Ads connectivity change: network change");
                sendToWebview(ConnectivityEvent.NETWORK_CHANGE, z, networkType);
            }
        }
    }

    private static void sendToWebview(ConnectivityEvent connectivityEvent, boolean z, int i) {
        WebViewApp currentApp;
        if (_webappMonitoring && (currentApp = WebViewApp.getCurrentApp()) != null && currentApp.isWebAppLoaded()) {
            switch (connectivityEvent) {
                case CONNECTED:
                    if (z) {
                        currentApp.sendEvent(WebViewEventCategory.CONNECTIVITY, ConnectivityEvent.CONNECTED, Boolean.valueOf(z), 0);
                        return;
                    } else {
                        currentApp.sendEvent(WebViewEventCategory.CONNECTIVITY, ConnectivityEvent.CONNECTED, Boolean.valueOf(z), Integer.valueOf(i));
                        return;
                    }
                case DISCONNECTED:
                    currentApp.sendEvent(WebViewEventCategory.CONNECTIVITY, ConnectivityEvent.DISCONNECTED, new Object[0]);
                    return;
                case NETWORK_CHANGE:
                    if (z) {
                        currentApp.sendEvent(WebViewEventCategory.CONNECTIVITY, ConnectivityEvent.NETWORK_CHANGE, Boolean.valueOf(z), 0);
                        return;
                    } else {
                        currentApp.sendEvent(WebViewEventCategory.CONNECTIVITY, ConnectivityEvent.NETWORK_CHANGE, Boolean.valueOf(z), Integer.valueOf(i));
                        return;
                    }
                default:
                    return;
            }
        }
    }
}
