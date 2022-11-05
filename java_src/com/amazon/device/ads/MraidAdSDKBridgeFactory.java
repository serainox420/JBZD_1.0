package com.amazon.device.ads;
/* loaded from: classes.dex */
class MraidAdSDKBridgeFactory implements AdSDKBridgeFactory {
    @Override // com.amazon.device.ads.AdSDKBridgeFactory
    public AdSDKBridge createAdSDKBridge(AdControlAccessor adControlAccessor) {
        return new MRAIDAdSDKBridge(adControlAccessor, new JavascriptInteractor());
    }
}
