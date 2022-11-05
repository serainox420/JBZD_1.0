package com.unity3d.ads.api;

import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
/* loaded from: classes.dex */
public class Placement {
    @WebViewExposed
    public static void setDefaultPlacement(String str, WebViewCallback webViewCallback) {
        com.unity3d.ads.placement.Placement.setDefaultPlacement(str);
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void setPlacementState(String str, String str2, WebViewCallback webViewCallback) {
        com.unity3d.ads.placement.Placement.setPlacementState(str, str2);
        webViewCallback.invoke(new Object[0]);
    }
}
