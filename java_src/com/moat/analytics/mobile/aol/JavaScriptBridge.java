package com.moat.analytics.mobile.aol;

import android.webkit.WebView;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
/* loaded from: classes3.dex */
interface JavaScriptBridge {

    /* loaded from: classes3.dex */
    public interface Responder {
        String getJSEnvString();

        String getVisibilityInfo() throws MoatException;
    }

    boolean installBridge(WebView webView, Responder responder) throws MoatException;

    void removeBridge();
}
