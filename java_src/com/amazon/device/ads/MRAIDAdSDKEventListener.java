package com.amazon.device.ads;

import android.view.ViewTreeObserver;
/* loaded from: classes.dex */
class MRAIDAdSDKEventListener implements SDKEventListener {
    private static final String LOGTAG = MRAIDAdSDKEventListener.class.getSimpleName();
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    private MRAIDAdSDKBridge mraidAdSDKBridge;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MRAIDAdSDKEventListener(MRAIDAdSDKBridge mRAIDAdSDKBridge) {
        this.mraidAdSDKBridge = mRAIDAdSDKBridge;
    }

    @Override // com.amazon.device.ads.SDKEventListener
    public void onSDKEvent(SDKEvent sDKEvent, AdControlAccessor adControlAccessor) {
        this.logger.d(sDKEvent.getEventType().toString());
        switch (sDKEvent.getEventType()) {
            case RENDERED:
            default:
                return;
            case PLACED:
                handleDefaultEvent(adControlAccessor);
                handleReadyEvent(adControlAccessor);
                return;
            case VISIBLE:
                handleShowingEvent(adControlAccessor);
                handleDefaultEvent(adControlAccessor);
                handleReadyEvent(adControlAccessor);
                return;
            case CLOSED:
                handleClosedEvent(adControlAccessor);
                return;
            case RESIZED:
                this.mraidAdSDKBridge.reportSizeChangeEvent();
                return;
            case HIDDEN:
            case DESTROYED:
                adControlAccessor.injectJavascript("mraidBridge.stateChange('hidden');");
                return;
            case BRIDGE_ADDED:
                handleBridgeAddedEvent(sDKEvent, adControlAccessor);
                return;
            case VIEWABLE:
                handleViewableEvent(sDKEvent, adControlAccessor);
                return;
        }
    }

    private void handleViewableEvent(SDKEvent sDKEvent, AdControlAccessor adControlAccessor) {
        adControlAccessor.injectJavascript("mraidBridge.viewableChange(" + sDKEvent.getParameter(ViewabilityObserver.IS_VIEWABLE_KEY) + ");");
    }

    private void handleBridgeAddedEvent(SDKEvent sDKEvent, AdControlAccessor adControlAccessor) {
        String parameter = sDKEvent.getParameter(SDKEvent.BRIDGE_NAME);
        if (parameter != null && parameter.equals(this.mraidAdSDKBridge.getName())) {
            switch (adControlAccessor.getAdState()) {
                case EXPANDED:
                case SHOWING:
                    handleShowingEvent(adControlAccessor);
                    handleDefaultEvent(adControlAccessor);
                    handleReadyEvent(adControlAccessor);
                    return;
                case RENDERED:
                    if (!adControlAccessor.isModal()) {
                        handleDefaultEvent(adControlAccessor);
                        handleReadyEvent(adControlAccessor);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private void handleReadyEvent(AdControlAccessor adControlAccessor) {
        adControlAccessor.injectJavascript("mraidBridge.ready();");
    }

    private void handleShowingEvent(final AdControlAccessor adControlAccessor) {
        adControlAccessor.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.amazon.device.ads.MRAIDAdSDKEventListener.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Position currentPosition = adControlAccessor.getCurrentPosition();
                if (currentPosition != null) {
                    adControlAccessor.removeOnGlobalLayoutListener(this);
                    MRAIDAdSDKEventListener.this.mraidAdSDKBridge.updateDefaultPosition(currentPosition.getSize().getWidth(), currentPosition.getSize().getHeight(), currentPosition.getX(), currentPosition.getY());
                    MRAIDAdSDKEventListener.this.mraidAdSDKBridge.orientationPropertyChange();
                }
            }
        });
    }

    private void handleDefaultEvent(AdControlAccessor adControlAccessor) {
        adControlAccessor.injectJavascript("mraidBridge.stateChange('default');");
    }

    private void handleClosedEvent(AdControlAccessor adControlAccessor) {
        if (adControlAccessor.getAdState().equals(AdState.EXPANDED)) {
            this.mraidAdSDKBridge.collapseExpandedAd(adControlAccessor);
        } else if (adControlAccessor.getAdState().equals(AdState.SHOWING)) {
            adControlAccessor.injectJavascript("mraidBridge.stateChange('hidden');");
            adControlAccessor.injectJavascript("mraidBridge.viewableChange('false');");
        }
    }
}
