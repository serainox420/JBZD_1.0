package com.openx.view.mraid;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.openx.view.WebViewBase;
/* loaded from: classes.dex */
public class InterstitialJSInterface extends BaseJSInterface {
    Context context;

    public InterstitialJSInterface(Context context, WebViewBase webViewBase) {
        super(context, webViewBase);
        this.context = context;
    }

    @Override // com.openx.view.mraid.BaseJSInterface, com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public String getPlacementType() {
        return "interstitial";
    }

    @Override // com.openx.view.mraid.BaseJSInterface, com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void expand() {
    }
}
