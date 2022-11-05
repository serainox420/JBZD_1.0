package com.amazon.device.ads;

import com.amazon.device.ads.SDKEvent;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdCloser {
    private static final String LOGTAG = AdCloser.class.getSimpleName();
    private final AdController adController;
    private final AtomicBoolean isClosing;
    private final MobileAdsLogger logger;

    public AdCloser(AdController adController) {
        this(adController, new MobileAdsLoggerFactory());
    }

    AdCloser(AdController adController, MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        this.isClosing = new AtomicBoolean(false);
        this.adController = adController;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
    }

    public boolean closeAd() {
        boolean z;
        boolean z2;
        boolean z3 = true;
        this.logger.d("Ad is attempting to close.");
        if (this.adController.getAdState().equals(AdState.READY_TO_LOAD) || this.isClosing.getAndSet(true)) {
            return false;
        }
        switch (this.adController.getAdControlCallback().adClosing()) {
            case 0:
                z = true;
                z2 = false;
                break;
            case 1:
                z = true;
                z2 = true;
                break;
            default:
                z = false;
                z2 = false;
                break;
        }
        if (z) {
            this.adController.fireSDKEvent(new SDKEvent(SDKEvent.SDKEventType.CLOSED));
        } else {
            z3 = false;
        }
        if (z2) {
            this.adController.resetToReady();
        }
        this.isClosing.set(false);
        return z3;
    }
}
