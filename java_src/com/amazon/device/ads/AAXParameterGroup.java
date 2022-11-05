package com.amazon.device.ads;

import com.amazon.device.ads.AAXParameter;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class AAXParameterGroup {
    public static final UserIdAAXParameterGroup USER_ID = new UserIdAAXParameterGroup();
    public static final PublisherExtraParametersAAXParameterGroup PUBLISHER_EXTRA_PARAMETERS = new PublisherExtraParametersAAXParameterGroup();

    public abstract void evaluate(AAXParameter.ParameterData parameterData, JSONObject jSONObject);

    AAXParameterGroup() {
    }

    /* loaded from: classes.dex */
    static final class UserIdAAXParameterGroup extends AAXParameterGroup {
        private final SISDeviceIdentifierAAXParameter adIdParameter;
        private final DirectedIdAAXParameter directedIdParameter;
        private final AdvertisingIdentifierAAXParameter idfaParameter;
        private final SHA1UDIDAAXParameter sha1udidParameter;

        UserIdAAXParameterGroup() {
            this(AAXParameterGroupParameter.DIRECTED_ID, AAXParameterGroupParameter.ADVERTISING_IDENTIFIER, AAXParameterGroupParameter.SIS_DEVICE_IDENTIFIER, AAXParameterGroupParameter.SHA1_UDID);
        }

        UserIdAAXParameterGroup(DirectedIdAAXParameter directedIdAAXParameter, AdvertisingIdentifierAAXParameter advertisingIdentifierAAXParameter, SISDeviceIdentifierAAXParameter sISDeviceIdentifierAAXParameter, SHA1UDIDAAXParameter sHA1UDIDAAXParameter) {
            this.directedIdParameter = directedIdAAXParameter;
            this.idfaParameter = advertisingIdentifierAAXParameter;
            this.adIdParameter = sISDeviceIdentifierAAXParameter;
            this.sha1udidParameter = sHA1UDIDAAXParameter;
        }

        @Override // com.amazon.device.ads.AAXParameterGroup
        public void evaluate(AAXParameter.ParameterData parameterData, JSONObject jSONObject) {
            if (!this.directedIdParameter.evaluate(parameterData, jSONObject)) {
                if (!this.idfaParameter.evaluate(parameterData, jSONObject)) {
                    this.sha1udidParameter.evaluate(parameterData, jSONObject);
                }
                this.adIdParameter.evaluate(parameterData, jSONObject);
            }
        }
    }

    /* loaded from: classes.dex */
    static final class PublisherExtraParametersAAXParameterGroup extends AAXParameterGroup {
        private static final String LOGTAG = PublisherExtraParametersAAXParameterGroup.class.getSimpleName();
        private final DebugProperties debugProperties;
        private final MobileAdsLogger logger;

        public PublisherExtraParametersAAXParameterGroup() {
            this(new MobileAdsLogger(new LogcatLogger()).mo33withLogTag(LOGTAG), DebugProperties.getInstance());
        }

        PublisherExtraParametersAAXParameterGroup(MobileAdsLogger mobileAdsLogger, DebugProperties debugProperties) {
            this.logger = mobileAdsLogger;
            this.debugProperties = debugProperties;
        }

        @Override // com.amazon.device.ads.AAXParameterGroup
        public void evaluate(AAXParameter.ParameterData parameterData, JSONObject jSONObject) {
            JSONObject processPJInputOrDebugParameterIfPresent = processPJInputOrDebugParameterIfPresent(parameterData);
            if (processPJInputOrDebugParameterIfPresent == null) {
                JSONObject jSONObject2 = new JSONObject();
                JSONArray valueDoNotRemove = AAXParameter.PUBLISHER_ASINS.getValueDoNotRemove(parameterData);
                if (valueDoNotRemove != null && valueDoNotRemove.length() > 0) {
                    try {
                        jSONObject2.put("asins", valueDoNotRemove.join(",").replaceAll("\"", ""));
                    } catch (JSONException e) {
                        this.logger.e("Error putting asins into pj, continuing but not including asins with pj", e);
                    }
                }
                JSONArray valueDoNotRemove2 = AAXParameter.PUBLISHER_KEYWORDS.getValueDoNotRemove(parameterData);
                if (valueDoNotRemove2 != null && valueDoNotRemove2.length() > 0) {
                    try {
                        jSONObject2.put("tk", valueDoNotRemove2);
                        jSONObject2.put("q", valueDoNotRemove2.join(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).replaceAll("\"", ""));
                        processPJInputOrDebugParameterIfPresent = jSONObject2;
                    } catch (JSONException e2) {
                        this.logger.e("Error putting either tk or q into pj, continuing but not including keywords with pj", e2);
                    }
                }
                processPJInputOrDebugParameterIfPresent = jSONObject2;
            }
            if (processPJInputOrDebugParameterIfPresent.length() > 0) {
                try {
                    jSONObject.put("pj", processPJInputOrDebugParameterIfPresent);
                } catch (JSONException e3) {
                    this.logger.e("Error storing pj created from asins and keywords, not including pj in request", e3);
                }
            }
        }

        private JSONObject processPJInputOrDebugParameterIfPresent(AAXParameter.ParameterData parameterData) {
            JSONObject jSONObject;
            Map<String, String> internalAdvancedOptions = parameterData.getInternalAdvancedOptions();
            if (internalAdvancedOptions != null && internalAdvancedOptions.containsKey("pj")) {
                String remove = internalAdvancedOptions.remove("pj");
                if (!StringUtils.isNullOrEmpty(remove)) {
                    try {
                        jSONObject = new JSONObject(remove);
                    } catch (JSONException e) {
                        this.logger.e("Error creating JSON object for pj from advanced option. Ignoring advanced option.", e);
                    }
                    return this.debugProperties.getDebugPropertyAsJSONObject(DebugProperties.DEBUG_PJ, jSONObject);
                }
            }
            jSONObject = null;
            return this.debugProperties.getDebugPropertyAsJSONObject(DebugProperties.DEBUG_PJ, jSONObject);
        }
    }
}
