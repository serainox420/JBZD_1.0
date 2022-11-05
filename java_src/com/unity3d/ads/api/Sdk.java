package com.unity3d.ads.api;

import com.unity3d.ads.UnityAds;
import com.unity3d.ads.configuration.InitializeThread;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.properties.ClientProperties;
import com.unity3d.ads.properties.SdkProperties;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
/* loaded from: classes.dex */
public class Sdk {
    @WebViewExposed
    public static void loadComplete(WebViewCallback webViewCallback) {
        DeviceLog.debug("Web Application loaded");
        WebViewApp.getCurrentApp().setWebAppLoaded(true);
        webViewCallback.invoke(ClientProperties.getGameId(), Boolean.valueOf(SdkProperties.isTestMode()), ClientProperties.getAppName(), ClientProperties.getAppVersion(), Integer.valueOf(SdkProperties.getVersionCode()), SdkProperties.getVersionName(), Boolean.valueOf(ClientProperties.isAppDebuggable()), WebViewApp.getCurrentApp().getConfiguration().getConfigUrl(), WebViewApp.getCurrentApp().getConfiguration().getWebViewUrl(), WebViewApp.getCurrentApp().getConfiguration().getWebViewHash(), WebViewApp.getCurrentApp().getConfiguration().getWebViewVersion());
    }

    @WebViewExposed
    public static void initComplete(WebViewCallback webViewCallback) {
        DeviceLog.debug("Web Application initialized");
        SdkProperties.setInitialized(true);
        WebViewApp.getCurrentApp().setWebAppInitialized(true);
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void setDebugMode(Boolean bool, WebViewCallback webViewCallback) {
        UnityAds.setDebugMode(bool.booleanValue());
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void getDebugMode(WebViewCallback webViewCallback) {
        webViewCallback.invoke(Boolean.valueOf(UnityAds.getDebugMode()));
    }

    @WebViewExposed
    public static void logError(String str, WebViewCallback webViewCallback) {
        DeviceLog.error(str);
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void logWarning(String str, WebViewCallback webViewCallback) {
        DeviceLog.warning(str);
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void logInfo(String str, WebViewCallback webViewCallback) {
        DeviceLog.info(str);
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void logDebug(String str, WebViewCallback webViewCallback) {
        DeviceLog.debug(str);
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void setShowTimeout(Integer num, WebViewCallback webViewCallback) {
        SdkProperties.setShowTimeout(num.intValue());
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void reinitialize(WebViewCallback webViewCallback) {
        InitializeThread.initialize(WebViewApp.getCurrentApp().getConfiguration());
    }
}
