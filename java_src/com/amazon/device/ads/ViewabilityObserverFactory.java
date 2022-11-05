package com.amazon.device.ads;
/* loaded from: classes.dex */
public class ViewabilityObserverFactory {
    public ViewabilityObserver buildViewabilityObserver(AdController adController) {
        return new ViewabilityObserver(adController);
    }
}
