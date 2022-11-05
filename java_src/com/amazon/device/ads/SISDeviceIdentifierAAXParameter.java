package com.amazon.device.ads;

import com.amazon.device.ads.AAXParameter;
/* compiled from: AAXParameterGroupParameter.java */
/* loaded from: classes.dex */
class SISDeviceIdentifierAAXParameter extends AAXParameterGroupParameter {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SISDeviceIdentifierAAXParameter() {
        this(DebugProperties.getInstance(), new MobileAdsLoggerFactory());
    }

    SISDeviceIdentifierAAXParameter(DebugProperties debugProperties, MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        super(debugProperties, "ad-id", DebugProperties.DEBUG_ADID, mobileAdsLoggerFactory);
    }

    @Override // com.amazon.device.ads.AAXParameterGroupParameter
    protected String getDerivedValue(AAXParameter.ParameterData parameterData) {
        return parameterData.getAdRequest().getAdvertisingIdentifierInfo().getSISDeviceIdentifier();
    }
}
