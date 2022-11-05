package com.unity3d.ads.api;

import com.unity3d.ads.request.IResolveHostListener;
import com.unity3d.ads.request.ResolveHostError;
import com.unity3d.ads.request.ResolveHostEvent;
import com.unity3d.ads.request.WebRequestThread;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
/* loaded from: classes.dex */
public class Resolve {
    @WebViewExposed
    public static void resolve(final String str, String str2, WebViewCallback webViewCallback) {
        if (!WebRequestThread.resolve(str2, new IResolveHostListener() { // from class: com.unity3d.ads.api.Resolve.1
            @Override // com.unity3d.ads.request.IResolveHostListener
            public void onResolve(String str3, String str4) {
                if (WebViewApp.getCurrentApp() != null) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.RESOLVE, ResolveHostEvent.COMPLETE, str, str3, str4);
                }
            }

            @Override // com.unity3d.ads.request.IResolveHostListener
            public void onFailed(String str3, ResolveHostError resolveHostError, String str4) {
                if (WebViewApp.getCurrentApp() != null) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.RESOLVE, ResolveHostEvent.FAILED, str, str3, resolveHostError.name(), str4);
                }
            }
        })) {
            webViewCallback.error(ResolveHostError.INVALID_HOST, str);
        } else {
            webViewCallback.invoke(str);
        }
    }
}
