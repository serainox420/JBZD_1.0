package com.openx.view;

import android.content.Context;
import com.openx.common.utils.logger.OXLog;
import com.openx.model.Ad;
import com.openx.view.mraid.BannerJSInterface;
import com.openx.view.mraid.BaseJSInterface;
import com.openx.view.video.PreloadManager;
import java.util.UUID;
/* loaded from: classes3.dex */
public class WebViewBanner extends WebViewBase {
    public WebViewBanner(Context context, Ad ad, UUID uuid, boolean z, PreloadManager.PreloadedListener preloadedListener) {
        super(context, ad, uuid, z, preloadedListener);
    }

    public WebViewBanner(Context context, boolean z, PreloadManager.PreloadedListener preloadedListener) {
        super(context, z, preloadedListener);
        init();
    }

    @Override // com.openx.view.WebViewBase, com.openx.view.AdWebView
    public void init() {
        setMRAIDInterface();
    }

    public void setMRAIDInterface() {
        BaseJSInterface bannerJSInterface = new BannerJSInterface(getContext(), this);
        addJavascriptInterface(bannerJSInterface, "jsBridge");
        OXLog.debug("WebViewBanner", "WebViewBanner: setMRAIDInterface() JSbridge initialized: yay!");
        setBaseJSInterface(bannerJSInterface);
    }
}
