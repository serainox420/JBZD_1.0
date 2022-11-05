package com.amazon.device.ads;

import com.amazon.device.ads.AAXParameter;
/* compiled from: AAXParameterGroupParameter.java */
/* loaded from: classes.dex */
class SHA1UDIDAAXParameter extends AAXParameterGroupParameter {
    private MobileAdsInfoStore mobileAdsInfoStore;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SHA1UDIDAAXParameter() {
        this(DebugProperties.getInstance(), new MobileAdsLoggerFactory(), MobileAdsInfoStore.getInstance());
    }

    SHA1UDIDAAXParameter(DebugProperties debugProperties, MobileAdsLoggerFactory mobileAdsLoggerFactory, MobileAdsInfoStore mobileAdsInfoStore) {
        super(debugProperties, "sha1_udid", DebugProperties.DEBUG_SHA1UDID, mobileAdsLoggerFactory);
        this.mobileAdsInfoStore = mobileAdsInfoStore;
    }

    @Override // com.amazon.device.ads.AAXParameterGroupParameter
    protected String getDerivedValue(AAXParameter.ParameterData parameterData) {
        return this.mobileAdsInfoStore.getDeviceInfo().getUdidSha1();
    }
}
