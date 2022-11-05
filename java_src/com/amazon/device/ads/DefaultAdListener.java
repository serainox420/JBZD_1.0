package com.amazon.device.ads;

import android.graphics.Rect;
/* loaded from: classes.dex */
public class DefaultAdListener implements ExtendedAdListener {
    private static final String LOGTAG = DefaultAdListener.class.getSimpleName();
    private final MobileAdsLogger logger;

    public DefaultAdListener() {
        this(LOGTAG);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultAdListener(String str) {
        this(new MobileAdsLoggerFactory(), str);
    }

    DefaultAdListener(MobileAdsLoggerFactory mobileAdsLoggerFactory, String str) {
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(str);
    }

    MobileAdsLogger getLogger() {
        return this.logger;
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdLoaded(Ad ad, AdProperties adProperties) {
        this.logger.d("Default ad listener called - AdLoaded.");
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdFailedToLoad(Ad ad, AdError adError) {
        this.logger.d("Default ad listener called - Ad Failed to Load. Error code: %s, Error Message: %s", adError.getCode(), adError.getMessage());
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdExpanded(Ad ad) {
        this.logger.d("Default ad listener called - Ad Will Expand.");
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdCollapsed(Ad ad) {
        this.logger.d("Default ad listener called - Ad Collapsed.");
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdDismissed(Ad ad) {
        this.logger.d("Default ad listener called - Ad Dismissed.");
    }

    @Override // com.amazon.device.ads.ExtendedAdListener
    public void onAdResized(Ad ad, Rect rect) {
        this.logger.d("Default ad listener called - Ad Resized.");
    }

    @Override // com.amazon.device.ads.ExtendedAdListener
    public void onAdExpired(Ad ad) {
        this.logger.d("Default ad listener called - Ad Expired.");
    }
}
