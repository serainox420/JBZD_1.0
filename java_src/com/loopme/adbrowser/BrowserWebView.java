package com.loopme.adbrowser;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
/* loaded from: classes2.dex */
public class BrowserWebView extends WebView {
    public BrowserWebView(Context context) {
        super(context);
        init();
    }

    private void init() {
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setPluginState(WebSettings.PluginState.ON);
        settings.setBuiltInZoomControls(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        setInitialScale(1);
    }
}
