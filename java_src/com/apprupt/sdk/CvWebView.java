package com.apprupt.sdk;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
/* loaded from: classes.dex */
class CvWebView extends WebView {
    /* JADX INFO: Access modifiers changed from: package-private */
    public CvWebView(Context context) {
        super(context);
        a();
    }

    private void a() {
        WebSettings settings = getSettings();
        CvSDK.a(getContext());
        settings.setUserAgentString(CvAppInfo.a().o());
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        setWebChromeClient(new WebChromeClient());
    }
}
