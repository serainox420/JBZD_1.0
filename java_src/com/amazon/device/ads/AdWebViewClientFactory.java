package com.amazon.device.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdWebViewClientFactory {
    private final AndroidBuildInfo androidBuildInfo;
    private final MobileAdsLoggerFactory loggerFactory;
    private final WebUtils2 webUtils;

    public AdWebViewClientFactory(WebUtils2 webUtils2, MobileAdsLoggerFactory mobileAdsLoggerFactory, AndroidBuildInfo androidBuildInfo) {
        this.webUtils = webUtils2;
        this.loggerFactory = mobileAdsLoggerFactory;
        this.androidBuildInfo = androidBuildInfo;
    }

    public AdWebViewClient createAdWebViewClient(Context context, AdSDKBridgeList adSDKBridgeList, AdControlAccessor adControlAccessor) {
        return new AdWebViewClient(context, adSDKBridgeList, adControlAccessor, this.webUtils, this.loggerFactory, this.androidBuildInfo);
    }
}
