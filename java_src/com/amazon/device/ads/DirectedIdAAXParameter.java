package com.amazon.device.ads;

import com.amazon.device.ads.AAXParameter;
import com.amazon.device.ads.Configuration;
/* compiled from: AAXParameterGroupParameter.java */
/* loaded from: classes.dex */
class DirectedIdAAXParameter extends AAXParameterGroupParameter {
    private final Configuration configuration;
    private final DirectedIdRetriever directedIdRetriever;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DirectedIdAAXParameter() {
        this(DebugProperties.getInstance(), new MobileAdsLoggerFactory(), Configuration.getInstance(), (DirectedIdRetriever) Settings.getInstance().getObject(DirectedIdRetriever.SETTINGS_KEY, null, DirectedIdRetriever.class));
    }

    DirectedIdAAXParameter(DebugProperties debugProperties, MobileAdsLoggerFactory mobileAdsLoggerFactory, Configuration configuration, DirectedIdRetriever directedIdRetriever) {
        super(debugProperties, "directedId", DebugProperties.DEBUG_DIRECTEDID, mobileAdsLoggerFactory);
        this.configuration = configuration;
        this.directedIdRetriever = directedIdRetriever;
    }

    @Override // com.amazon.device.ads.AAXParameterGroupParameter
    protected String getDerivedValue(AAXParameter.ParameterData parameterData) {
        if (!this.configuration.getBoolean(Configuration.ConfigOption.WHITELISTED_CUSTOMER) || this.directedIdRetriever == null) {
            return null;
        }
        return this.directedIdRetriever.getDirectedId();
    }
}
