package com.amazon.device.ads;
/* loaded from: classes.dex */
public class ViewabilityCheckerFactory {
    public ViewabilityChecker buildViewabilityChecker(AdController adController) {
        return new ViewabilityChecker(adController);
    }
}
