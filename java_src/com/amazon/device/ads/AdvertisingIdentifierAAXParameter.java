package com.amazon.device.ads;

import com.amazon.device.ads.AAXParameter;
/* compiled from: AAXParameterGroupParameter.java */
/* loaded from: classes.dex */
class AdvertisingIdentifierAAXParameter extends AAXParameterGroupParameter {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AdvertisingIdentifierAAXParameter() {
        this(DebugProperties.getInstance(), new MobileAdsLoggerFactory());
    }

    AdvertisingIdentifierAAXParameter(DebugProperties debugProperties, MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        super(debugProperties, "idfa", DebugProperties.DEBUG_IDFA, mobileAdsLoggerFactory);
    }

    @Override // com.amazon.device.ads.AAXParameterGroupParameter
    protected String getDerivedValue(AAXParameter.ParameterData parameterData) {
        return parameterData.getAdRequest().getAdvertisingIdentifierInfo().getAdvertisingIdentifier();
    }
}
