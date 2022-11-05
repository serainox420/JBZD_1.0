package com.amazon.device.ads;
/* loaded from: classes.dex */
class AmazonAdSDKViewableEventListener implements SDKEventListener {
    private static final String LOGTAG = AmazonAdSDKViewableEventListener.class.getSimpleName();
    private final MobileAdsLogger logger;

    public AmazonAdSDKViewableEventListener() {
        this(new MobileAdsLoggerFactory());
    }

    AmazonAdSDKViewableEventListener(MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
    }

    @Override // com.amazon.device.ads.SDKEventListener
    public void onSDKEvent(SDKEvent sDKEvent, AdControlAccessor adControlAccessor) {
        this.logger.d(sDKEvent.getEventType().toString());
        switch (sDKEvent.getEventType()) {
            case VIEWABLE:
                handleViewableEvent(adControlAccessor, sDKEvent);
                return;
            default:
                return;
        }
    }

    public void handleViewableEvent(AdControlAccessor adControlAccessor, SDKEvent sDKEvent) {
        adControlAccessor.injectJavascript("viewableBridge.viewabilityChange('" + sDKEvent.getParameter(ViewabilityObserver.VIEWABLE_PARAMS_KEY) + "');");
    }
}
