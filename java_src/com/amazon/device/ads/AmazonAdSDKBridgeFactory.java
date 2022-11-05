package com.amazon.device.ads;
/* loaded from: classes.dex */
class AmazonAdSDKBridgeFactory implements AdSDKBridgeFactory {
    @Override // com.amazon.device.ads.AdSDKBridgeFactory
    public AdSDKBridge createAdSDKBridge(AdControlAccessor adControlAccessor) {
        return new AmazonAdSDKBridge(adControlAccessor, new JavascriptInteractor());
    }
}
