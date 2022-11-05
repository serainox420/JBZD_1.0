package com.unity3d.ads.api;

import com.unity3d.ads.connectivity.ConnectivityMonitor;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
/* loaded from: classes.dex */
public class Connectivity {
    @WebViewExposed
    public static void setConnectionMonitoring(Boolean bool, WebViewCallback webViewCallback) {
        ConnectivityMonitor.setConnectionMonitoring(bool.booleanValue());
        webViewCallback.invoke(new Object[0]);
    }
}
