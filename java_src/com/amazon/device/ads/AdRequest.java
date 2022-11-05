package com.amazon.device.ads;

import android.annotation.SuppressLint;
import com.amazon.device.ads.AAXParameter;
import com.amazon.device.ads.AdvertisingIdentifier;
import com.amazon.device.ads.Configuration;
import com.amazon.device.ads.JSONUtils;
import com.amazon.device.ads.Metrics;
import com.amazon.device.ads.WebRequest;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdRequest {
    private static final String LOGTAG = AdRequest.class.getSimpleName();
    private static final AAXParameter<?>[] PARAMETERS = {AAXParameter.APP_KEY, AAXParameter.CHANNEL, AAXParameter.PUBLISHER_KEYWORDS, AAXParameter.PUBLISHER_ASINS, AAXParameter.USER_AGENT, AAXParameter.SDK_VERSION, AAXParameter.GEOLOCATION, AAXParameter.DEVICE_INFO, AAXParameter.PACKAGE_INFO, AAXParameter.TEST, AAXParameter.OPT_OUT};
    private static final AAXParameterGroup[] PARAMETER_GROUPS = {AAXParameterGroup.USER_ID, AAXParameterGroup.PUBLISHER_EXTRA_PARAMETERS};
    private AdvertisingIdentifier.Info advertisingIdentifierInfo;
    private final Configuration configuration;
    private final ConnectionInfo connectionInfo;
    private final DebugProperties debugProperties;
    private String instrPixelUrl;
    private final JSONObjectBuilder jsonObjectBuilder;
    private final JSONUtils.JSONUtilities jsonUtilities;
    private final MobileAdsLogger logger;
    private final AdTargetingOptions opt;
    private final String orientation;
    protected final Map<Integer, LOISlot> slots;
    private final WebRequest.WebRequestFactory webRequestFactory;

    public AdRequest(AdTargetingOptions adTargetingOptions) {
        this(adTargetingOptions, new WebRequest.WebRequestFactory(), MobileAdsInfoStore.getInstance(), Configuration.getInstance(), DebugProperties.getInstance(), new MobileAdsLoggerFactory(), new JSONUtils.JSONUtilities());
    }

    @SuppressLint({"UseSparseArrays"})
    AdRequest(AdTargetingOptions adTargetingOptions, WebRequest.WebRequestFactory webRequestFactory, MobileAdsInfoStore mobileAdsInfoStore, Configuration configuration, DebugProperties debugProperties, MobileAdsLoggerFactory mobileAdsLoggerFactory, JSONUtils.JSONUtilities jSONUtilities) {
        JSONObject debugPropertyAsJSONObject;
        this.opt = adTargetingOptions;
        this.webRequestFactory = webRequestFactory;
        this.jsonUtilities = jSONUtilities;
        this.slots = new HashMap();
        this.orientation = mobileAdsInfoStore.getDeviceInfo().getOrientation();
        this.connectionInfo = new ConnectionInfo(mobileAdsInfoStore);
        this.configuration = configuration;
        this.debugProperties = debugProperties;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        HashMap<String, String> copyOfAdvancedOptions = this.opt.getCopyOfAdvancedOptions();
        if (this.debugProperties.containsDebugProperty(DebugProperties.DEBUG_ADVTARGETING) && (debugPropertyAsJSONObject = this.debugProperties.getDebugPropertyAsJSONObject(DebugProperties.DEBUG_ADVTARGETING, null)) != null) {
            copyOfAdvancedOptions.putAll(this.jsonUtilities.createMapFromJSON(debugPropertyAsJSONObject));
        }
        this.jsonObjectBuilder = new JSONObjectBuilder(this.logger).setAAXParameters(PARAMETERS).setAAXParameterGroups(PARAMETER_GROUPS).setAdvancedOptions(copyOfAdvancedOptions).setParameterData(new AAXParameter.ParameterData().setAdTargetingOptions(this.opt).setAdvancedOptions(copyOfAdvancedOptions).setAdRequest(this));
    }

    public void setInstrumentationPixelURL(String str) {
        this.instrPixelUrl = str;
    }

    public String getInstrumentationPixelURL() {
        return this.instrPixelUrl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdTargetingOptions getAdTargetingOptions() {
        return this.opt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getOrientation() {
        return this.orientation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdvertisingIdentifier.Info getAdvertisingIdentifierInfo() {
        return this.advertisingIdentifierInfo;
    }

    AdRequest setAdvertisingIdentifierInfo(AdvertisingIdentifier.Info info) {
        this.advertisingIdentifierInfo = info;
        return this;
    }

    public void putSlot(AdSlot adSlot) {
        if (getAdvertisingIdentifierInfo().hasSISDeviceIdentifier()) {
            adSlot.getMetricsCollector().incrementMetric(Metrics.MetricType.AD_COUNTER_IDENTIFIED_DEVICE);
        }
        adSlot.setConnectionInfo(this.connectionInfo);
        this.slots.put(Integer.valueOf(adSlot.getSlotNumber()), new LOISlot(adSlot, this, this.logger));
    }

    protected JSONArray getSlots() {
        JSONArray jSONArray = new JSONArray();
        for (LOISlot lOISlot : this.slots.values()) {
            jSONArray.put(lOISlot.getJSON());
        }
        return jSONArray;
    }

    public WebRequest getWebRequest() {
        WebRequest createWebRequest = this.webRequestFactory.createWebRequest();
        createWebRequest.setUseSecure(isSSLRequired() || createWebRequest.getUseSecure());
        createWebRequest.setExternalLogTag(LOGTAG);
        createWebRequest.setHttpMethod(WebRequest.HttpMethod.POST);
        createWebRequest.setHost(this.configuration.getString(Configuration.ConfigOption.AAX_HOSTNAME));
        createWebRequest.setPath(this.configuration.getString(Configuration.ConfigOption.AD_RESOURCE_PATH));
        createWebRequest.enableLog(true);
        createWebRequest.setContentType("application/json");
        createWebRequest.setDisconnectEnabled(false);
        setParametersInWebRequest(createWebRequest);
        return createWebRequest;
    }

    private boolean isSSLRequired() {
        return !Configuration.getInstance().getBoolean(Configuration.ConfigOption.TRUNCATE_LAT_LON) && Configuration.getInstance().getBoolean(Configuration.ConfigOption.SEND_GEO) && getAdTargetingOptions().isGeoLocationEnabled();
    }

    protected void setParametersInWebRequest(WebRequest webRequest) {
        this.jsonObjectBuilder.build();
        JSONArray value = AAXParameter.SLOTS.getValue(this.jsonObjectBuilder.getParameterData());
        if (value == null) {
            value = getSlots();
        }
        this.jsonObjectBuilder.putIntoJSON(AAXParameter.SLOTS, value);
        JSONObject json = this.jsonObjectBuilder.getJSON();
        String debugPropertyAsString = this.debugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_AAX_AD_PARAMS, null);
        if (!StringUtils.isNullOrEmpty(debugPropertyAsString)) {
            webRequest.setAdditionalQueryParamsString(debugPropertyAsString);
        }
        setRequestBodyString(webRequest, json);
    }

    protected void setRequestBodyString(WebRequest webRequest, JSONObject jSONObject) {
        webRequest.setRequestBodyString(jSONObject.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class LOISlot {
        static final AAXParameter<?>[] PARAMETERS = {AAXParameter.SIZE, AAXParameter.PAGE_TYPE, AAXParameter.SLOT, AAXParameter.SLOT_POSITION, AAXParameter.MAX_SIZE, AAXParameter.SLOT_ID, AAXParameter.FLOOR_PRICE, AAXParameter.SUPPORTED_MEDIA_TYPES, AAXParameter.VIDEO_OPTIONS};
        private final AdSlot adSlot;
        private final DebugProperties debugProperties;
        private final JSONObjectBuilder jsonObjectBuilder;
        private final JSONUtils.JSONUtilities jsonUtilities;
        private final AdTargetingOptions opt;

        LOISlot(AdSlot adSlot, AdRequest adRequest, MobileAdsLogger mobileAdsLogger) {
            this(adSlot, adRequest, mobileAdsLogger, new JSONObjectBuilder(mobileAdsLogger), DebugProperties.getInstance(), new JSONUtils.JSONUtilities());
        }

        LOISlot(AdSlot adSlot, AdRequest adRequest, MobileAdsLogger mobileAdsLogger, JSONObjectBuilder jSONObjectBuilder, DebugProperties debugProperties, JSONUtils.JSONUtilities jSONUtilities) {
            JSONObject debugPropertyAsJSONObject;
            this.opt = adSlot.getAdTargetingOptions();
            this.adSlot = adSlot;
            this.debugProperties = debugProperties;
            this.jsonUtilities = jSONUtilities;
            HashMap<String, String> copyOfAdvancedOptions = this.opt.getCopyOfAdvancedOptions();
            if (this.debugProperties.containsDebugProperty(DebugProperties.DEBUG_ADVTARGETING) && (debugPropertyAsJSONObject = this.debugProperties.getDebugPropertyAsJSONObject(DebugProperties.DEBUG_ADVTARGETING, null)) != null) {
                copyOfAdvancedOptions.putAll(this.jsonUtilities.createMapFromJSON(debugPropertyAsJSONObject));
            }
            this.jsonObjectBuilder = jSONObjectBuilder.setAAXParameters(PARAMETERS).setAdvancedOptions(copyOfAdvancedOptions).setParameterData(new AAXParameter.ParameterData().setAdTargetingOptions(this.opt).setAdvancedOptions(copyOfAdvancedOptions).setLOISlot(this).setAdRequest(adRequest));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AdTargetingOptions getAdTargetingOptions() {
            return this.opt;
        }

        JSONObject getJSON() {
            this.jsonObjectBuilder.build();
            return this.jsonObjectBuilder.getJSON();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AdSlot getAdSlot() {
            return this.adSlot;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class JSONObjectBuilder {
        private AAXParameterGroup[] aaxParameterGroups;
        private AAXParameter<?>[] aaxParameters;
        private Map<String, String> advancedOptions;
        private final JSONObject json;
        private final MobileAdsLogger logger;
        private AAXParameter.ParameterData parameterData;

        JSONObjectBuilder(MobileAdsLogger mobileAdsLogger) {
            this(mobileAdsLogger, new JSONObject());
        }

        JSONObjectBuilder(MobileAdsLogger mobileAdsLogger, JSONObject jSONObject) {
            this.logger = mobileAdsLogger;
            this.json = jSONObject;
        }

        JSONObjectBuilder setAAXParameters(AAXParameter<?>[] aAXParameterArr) {
            this.aaxParameters = aAXParameterArr;
            return this;
        }

        JSONObjectBuilder setAAXParameterGroups(AAXParameterGroup[] aAXParameterGroupArr) {
            this.aaxParameterGroups = aAXParameterGroupArr;
            return this;
        }

        JSONObjectBuilder setAdvancedOptions(Map<String, String> map) {
            this.advancedOptions = map;
            return this;
        }

        JSONObjectBuilder setParameterData(AAXParameter.ParameterData parameterData) {
            this.parameterData = parameterData;
            return this;
        }

        AAXParameter.ParameterData getParameterData() {
            return this.parameterData;
        }

        JSONObject getJSON() {
            return this.json;
        }

        void build() {
            AAXParameter<?>[] aAXParameterArr;
            if (this.aaxParameterGroups != null) {
                for (AAXParameterGroup aAXParameterGroup : this.aaxParameterGroups) {
                    aAXParameterGroup.evaluate(this.parameterData, this.json);
                }
            }
            for (AAXParameter<?> aAXParameter : this.aaxParameters) {
                putIntoJSON(aAXParameter, aAXParameter.getValue(this.parameterData));
            }
            if (this.advancedOptions != null) {
                for (Map.Entry<String, String> entry : this.advancedOptions.entrySet()) {
                    if (!StringUtils.isNullOrWhiteSpace(entry.getValue())) {
                        putIntoJSON(entry.getKey(), entry.getValue());
                    }
                }
            }
        }

        void putIntoJSON(AAXParameter<?> aAXParameter, Object obj) {
            putIntoJSON(aAXParameter.getName(), obj);
        }

        void putIntoJSON(String str, Object obj) {
            if (obj != null) {
                try {
                    this.json.put(str, obj);
                } catch (JSONException e) {
                    this.logger.d("Could not add parameter to JSON %s: %s", str, obj);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AdRequestBuilder {
        private AdTargetingOptions adTargetingOptions;
        private AdvertisingIdentifier.Info advertisingIdentifierInfo;

        public AdRequestBuilder withAdTargetingOptions(AdTargetingOptions adTargetingOptions) {
            this.adTargetingOptions = adTargetingOptions;
            return this;
        }

        public AdRequestBuilder withAdvertisingIdentifierInfo(AdvertisingIdentifier.Info info) {
            this.advertisingIdentifierInfo = info;
            return this;
        }

        public AdRequest build() {
            return new AdRequest(this.adTargetingOptions).setAdvertisingIdentifierInfo(this.advertisingIdentifierInfo);
        }
    }
}
