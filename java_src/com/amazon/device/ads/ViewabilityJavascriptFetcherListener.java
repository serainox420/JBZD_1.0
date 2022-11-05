package com.amazon.device.ads;

import com.amazon.device.ads.Configuration;
/* loaded from: classes.dex */
class ViewabilityJavascriptFetcherListener implements Configuration.ConfigurationListener {
    private static final String LOGTAG = ViewabilityJavascriptFetcherListener.class.getSimpleName();
    private final MobileAdsLogger logger;
    private ViewabilityJavascriptFetcher viewabilityJavascriptFetcher;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewabilityJavascriptFetcherListener() {
        this(new ViewabilityJavascriptFetcher(), new MobileAdsLoggerFactory());
    }

    ViewabilityJavascriptFetcherListener(ViewabilityJavascriptFetcher viewabilityJavascriptFetcher, MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        this.viewabilityJavascriptFetcher = viewabilityJavascriptFetcher;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
    }

    @Override // com.amazon.device.ads.Configuration.ConfigurationListener
    public void onConfigurationReady() {
        this.viewabilityJavascriptFetcher.fetchJavascript();
    }

    @Override // com.amazon.device.ads.Configuration.ConfigurationListener
    public void onConfigurationFailure() {
        this.logger.w("Configuration fetching failed so Viewability Javascript fetch will not proceed.");
    }
}
