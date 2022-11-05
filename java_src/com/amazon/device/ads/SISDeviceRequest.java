package com.amazon.device.ads;

import com.amazon.device.ads.AdvertisingIdentifier;
import com.amazon.device.ads.Metrics;
import com.amazon.device.ads.WebRequest;
import com.facebook.appevents.AppEventsConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.HashMap;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SISRequests.java */
/* loaded from: classes.dex */
public abstract class SISDeviceRequest extends SISRequest {
    private AdvertisingIdentifier advertisingIdentifier;
    private AdvertisingIdentifier.Info advertisingIdentifierInfo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SISDeviceRequest(MobileAdsLoggerFactory mobileAdsLoggerFactory, String str, Metrics.MetricType metricType, String str2, AdvertisingIdentifier advertisingIdentifier, MobileAdsInfoStore mobileAdsInfoStore, Configuration configuration) {
        super(mobileAdsLoggerFactory, str, metricType, str2, mobileAdsInfoStore, configuration);
        this.advertisingIdentifier = advertisingIdentifier;
        this.advertisingIdentifierInfo = this.advertisingIdentifier.getAdvertisingIdentifierInfo();
    }

    @Override // com.amazon.device.ads.SISRequest
    public WebRequest.QueryStringParameters getQueryParameters() {
        WebRequest.QueryStringParameters queryParameters = super.getQueryParameters();
        DeviceInfo deviceInfo = this.mobileAdsInfoStore.getDeviceInfo();
        queryParameters.putUnencoded("ua", deviceInfo.getUserAgentString());
        queryParameters.putUnencoded("dinfo", deviceInfo.getDInfoProperty().toString());
        if (this.advertisingIdentifierInfo.hasAdvertisingIdentifier()) {
            queryParameters.putUrlEncoded("idfa", this.advertisingIdentifierInfo.getAdvertisingIdentifier());
            queryParameters.putUrlEncoded("oo", convertOptOutBooleanToStringInt(this.advertisingIdentifierInfo.isLimitAdTrackingEnabled()));
        } else {
            queryParameters.putUrlEncoded("sha1_mac", deviceInfo.getMacSha1());
            queryParameters.putUrlEncoded("sha1_serial", deviceInfo.getSerialSha1());
            queryParameters.putUrlEncoded("sha1_udid", deviceInfo.getUdidSha1());
            queryParameters.putUrlEncodedIfTrue("badMac", "true", deviceInfo.isMacBad());
            queryParameters.putUrlEncodedIfTrue("badSerial", "true", deviceInfo.isSerialBad());
            queryParameters.putUrlEncodedIfTrue("badUdid", "true", deviceInfo.isUdidBad());
        }
        String andClearTransition = this.advertisingIdentifier.getAndClearTransition();
        queryParameters.putUrlEncodedIfTrue("aidts", andClearTransition, andClearTransition != null);
        return queryParameters;
    }

    private static String convertOptOutBooleanToStringInt(boolean z) {
        return z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AdvertisingIdentifier.Info getAdvertisingIdentifierInfo() {
        return this.advertisingIdentifierInfo;
    }

    @Override // com.amazon.device.ads.SISRequest
    public HashMap<String, String> getPostParameters() {
        return null;
    }

    @Override // com.amazon.device.ads.SISRequest
    public void onResponseReceived(JSONObject jSONObject) {
        String stringFromJSON = JSONUtils.getStringFromJSON(jSONObject, PubMaticConstants.AD_ID_PARAM, "");
        if (stringFromJSON.length() > 0) {
            this.mobileAdsInfoStore.getRegistrationInfo().putAdId(stringFromJSON, getAdvertisingIdentifierInfo());
        }
    }
}
