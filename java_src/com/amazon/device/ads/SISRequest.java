package com.amazon.device.ads;

import com.amazon.device.ads.AdvertisingIdentifier;
import com.amazon.device.ads.Configuration;
import com.amazon.device.ads.Metrics;
import com.amazon.device.ads.WebRequest;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SISRequests.java */
/* loaded from: classes.dex */
public abstract class SISRequest {
    private final Metrics.MetricType callMetricType;
    private final Configuration configuration;
    private final String logTag;
    protected final MobileAdsLogger logger;
    protected MobileAdsInfoStore mobileAdsInfoStore;
    private final String path;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SISRequests.java */
    /* loaded from: classes.dex */
    public enum SISDeviceRequestType {
        GENERATE_DID,
        UPDATE_DEVICE_INFO
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract HashMap<String, String> getPostParameters();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onResponseReceived(JSONObject jSONObject);

    /* JADX INFO: Access modifiers changed from: package-private */
    public SISRequest(MobileAdsLoggerFactory mobileAdsLoggerFactory, String str, Metrics.MetricType metricType, String str2, MobileAdsInfoStore mobileAdsInfoStore, Configuration configuration) {
        this.logTag = str;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(this.logTag);
        this.callMetricType = metricType;
        this.path = str2;
        this.mobileAdsInfoStore = mobileAdsInfoStore;
        this.configuration = configuration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MobileAdsLogger getLogger() {
        return this.logger;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getLogTag() {
        return this.logTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Metrics.MetricType getCallMetricType() {
        return this.callMetricType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getPath() {
        return this.path;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebRequest.QueryStringParameters getQueryParameters() {
        WebRequest.QueryStringParameters queryStringParameters = new WebRequest.QueryStringParameters();
        queryStringParameters.putUrlEncoded("dt", this.mobileAdsInfoStore.getDeviceInfo().getDeviceType());
        queryStringParameters.putUrlEncoded("app", this.mobileAdsInfoStore.getRegistrationInfo().getAppName());
        queryStringParameters.putUrlEncoded("appId", this.mobileAdsInfoStore.getRegistrationInfo().getAppKey());
        queryStringParameters.putUrlEncoded("sdkVer", Version.getSDKVersion());
        queryStringParameters.putUrlEncoded("aud", this.configuration.getString(Configuration.ConfigOption.SIS_DOMAIN));
        queryStringParameters.putUnencoded("pkg", this.mobileAdsInfoStore.getAppInfo().getPackageInfoJSONString());
        return queryStringParameters;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SISRequests.java */
    /* loaded from: classes.dex */
    public static class SISRequestFactory {
        public SISDeviceRequest createDeviceRequest(SISDeviceRequestType sISDeviceRequestType, AdvertisingIdentifier advertisingIdentifier) {
            switch (sISDeviceRequestType) {
                case GENERATE_DID:
                    return new SISGenerateDIDRequest(advertisingIdentifier);
                case UPDATE_DEVICE_INFO:
                    return new SISUpdateDeviceInfoRequest(advertisingIdentifier);
                default:
                    throw new IllegalArgumentException("SISRequestType " + sISDeviceRequestType + " is not a SISDeviceRequest");
            }
        }

        public SISRegisterEventRequest createRegisterEventRequest(AdvertisingIdentifier.Info info, JSONArray jSONArray) {
            return new SISRegisterEventRequest(info, jSONArray);
        }
    }
}
