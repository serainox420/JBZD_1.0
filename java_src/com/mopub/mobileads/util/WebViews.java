package com.mopub.mobileads.util;

import android.annotation.TargetApi;
import android.os.Build;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
/* loaded from: classes3.dex */
public class WebViews {
    @TargetApi(11)
    public static void onResume(WebView webView) {
        if (Build.VERSION.SDK_INT >= 11) {
            webView.onResume();
            return;
        }
        try {
            new Reflection.MethodBuilder(webView, "onResume").setAccessible().execute();
        } catch (Exception e) {
        }
    }

    @TargetApi(11)
    public static void onPause(WebView webView, boolean z) {
        if (z) {
            webView.stopLoading();
            webView.loadUrl("");
        }
        if (Build.VERSION.SDK_INT >= 11) {
            webView.onPause();
            return;
        }
        try {
            new Reflection.MethodBuilder(webView, "onPause").setAccessible().execute();
        } catch (Exception e) {
        }
    }

    public static void setDisableJSChromeClient(WebView webView) {
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.mobileads.util.WebViews.1
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView2, String str, String str2, JsResult jsResult) {
                MoPubLog.d(str2);
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView webView2, String str, String str2, JsResult jsResult) {
                MoPubLog.d(str2);
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView webView2, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                MoPubLog.d(str2);
                jsPromptResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsBeforeUnload(WebView webView2, String str, String str2, JsResult jsResult) {
                MoPubLog.d(str2);
                jsResult.confirm();
                return true;
            }
        });
    }
}
