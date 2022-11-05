package com.amazon.device.ads;

import com.amazon.device.ads.AAXParameter;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class AAXParameterGroupParameter {
    private final String debugName;
    protected final DebugProperties debugProperties;
    private final String key;
    private final MobileAdsLogger logger;
    private static final String LOG_TAG = AAXParameterGroupParameter.class.getSimpleName();
    static final AdvertisingIdentifierAAXParameter ADVERTISING_IDENTIFIER = new AdvertisingIdentifierAAXParameter();
    static final SISDeviceIdentifierAAXParameter SIS_DEVICE_IDENTIFIER = new SISDeviceIdentifierAAXParameter();
    static final SHA1UDIDAAXParameter SHA1_UDID = new SHA1UDIDAAXParameter();
    static final DirectedIdAAXParameter DIRECTED_ID = new DirectedIdAAXParameter();

    protected abstract String getDerivedValue(AAXParameter.ParameterData parameterData);

    /* JADX INFO: Access modifiers changed from: package-private */
    public AAXParameterGroupParameter(DebugProperties debugProperties, String str, String str2, MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        this.debugProperties = debugProperties;
        this.key = str;
        this.debugName = str2;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOG_TAG);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean evaluate(AAXParameter.ParameterData parameterData, JSONObject jSONObject) {
        return putIntoJSON(jSONObject, this.key, this.debugProperties.getDebugPropertyAsString(this.debugName, getDerivedValue(parameterData)));
    }

    protected boolean putIntoJSON(JSONObject jSONObject, String str, String str2) {
        if (!StringUtils.isNullOrEmpty(str2)) {
            try {
                jSONObject.put(str, str2);
                return true;
            } catch (JSONException e) {
                this.logger.d("Could not add parameter to JSON %s: %s", str, str2);
            }
        }
        return false;
    }
}
