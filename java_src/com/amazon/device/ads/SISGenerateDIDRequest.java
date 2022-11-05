package com.amazon.device.ads;

import com.amazon.device.ads.Metrics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SISRequests.java */
/* loaded from: classes.dex */
public class SISGenerateDIDRequest extends SISDeviceRequest {
    private static final String PATH = "/generate_did";
    private static final String LOGTAG = SISGenerateDIDRequest.class.getSimpleName();
    private static final Metrics.MetricType CALL_METRIC_TYPE = Metrics.MetricType.SIS_LATENCY_REGISTER;

    public SISGenerateDIDRequest(AdvertisingIdentifier advertisingIdentifier) {
        this(advertisingIdentifier, MobileAdsInfoStore.getInstance(), Configuration.getInstance());
    }

    SISGenerateDIDRequest(AdvertisingIdentifier advertisingIdentifier, MobileAdsInfoStore mobileAdsInfoStore, Configuration configuration) {
        super(new MobileAdsLoggerFactory(), LOGTAG, CALL_METRIC_TYPE, PATH, advertisingIdentifier, mobileAdsInfoStore, configuration);
    }
}
