package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import com.amazon.device.ads.AdRequest;
import com.amazon.device.ads.Configuration;
import com.amazon.device.ads.Parsers;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.inmobi.monetization.internal.configs.PkInitilaizer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class AAXParameter<T> {
    private final String debugName;
    private final String name;
    private static final String LOGTAG = AAXParameter.class.getSimpleName();
    static final AAXParameter<String> APP_KEY = new AppKeyParameter();
    static final AAXParameter<String> CHANNEL = new StringParameter("c", DebugProperties.DEBUG_CHANNEL);
    static final PublisherKeywordsParameter PUBLISHER_KEYWORDS = new PublisherKeywordsParameter();
    static final AAXParameter<JSONArray> PUBLISHER_ASINS = new JSONArrayParameter("pa", DebugProperties.DEBUG_PA);
    static final AAXParameter<String> USER_AGENT = new UserAgentParameter();
    static final AAXParameter<String> SDK_VERSION = new SDKVersionParameter();
    static final AAXParameter<String> GEOLOCATION = new GeoLocationParameter();
    static final AAXParameter<JSONObject> DEVICE_INFO = new DeviceInfoParameter();
    static final AAXParameter<JSONObject> PACKAGE_INFO = new PackageInfoParameter();
    static final AAXParameter<Boolean> TEST = new TestParameter();
    static final AAXParameter<JSONArray> SLOTS = new JSONArrayParameter("slots", DebugProperties.DEBUG_SLOTS);
    static final AAXParameter<Boolean> OPT_OUT = new OptOutParameter();
    static final AAXParameter<String> SIZE = new SizeParameter();
    static final AAXParameter<String> PAGE_TYPE = new StringParameter("pt", DebugProperties.DEBUG_PT);
    static final AAXParameter<String> SLOT = new SlotParameter();
    static final AAXParameter<String> SLOT_POSITION = new StringParameter("sp", DebugProperties.DEBUG_SP);
    static final AAXParameter<String> MAX_SIZE = new MaxSizeParameter();
    static final AAXParameter<Integer> SLOT_ID = new SlotIdParameter();
    static final AAXParameter<Long> FLOOR_PRICE = new FloorPriceParameter();
    static final AAXParameter<JSONArray> SUPPORTED_MEDIA_TYPES = new SupportedMediaTypesParameter();
    static final AAXParameter<JSONObject> VIDEO_OPTIONS = new VideoOptionsParameter();

    /* renamed from: getFromDebugProperties */
    protected abstract T mo25getFromDebugProperties();

    /* renamed from: parseFromString */
    protected abstract T mo26parseFromString(String str);

    AAXParameter(String str, String str2) {
        this.name = str;
        this.debugName = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getName() {
        return this.name;
    }

    protected String getDebugName() {
        return this.debugName;
    }

    protected boolean hasDebugPropertiesValue() {
        return DebugProperties.getInstance().containsDebugProperty(this.debugName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T getValueDoNotRemove(ParameterData parameterData) {
        return getValueHelper(parameterData, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T getValue(ParameterData parameterData) {
        return getValueHelper(parameterData, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private T getValueHelper(ParameterData parameterData, boolean z) {
        T t;
        T applyPostParameterProcessing;
        T mo25getFromDebugProperties = hasDebugPropertiesValue() ? mo25getFromDebugProperties() : null;
        if (parameterData.advancedOptions != null) {
            String str = z ? (String) parameterData.advancedOptions.remove(this.name) : (String) parameterData.advancedOptions.get(this.name);
            if (mo25getFromDebugProperties == null && !StringUtils.isNullOrEmpty(str)) {
                t = mo26parseFromString(str);
                if (t == null) {
                    t = mo30getDerivedValue(parameterData);
                }
                applyPostParameterProcessing = applyPostParameterProcessing(t, parameterData);
                if (!(applyPostParameterProcessing instanceof String) && StringUtils.isNullOrWhiteSpace((String) applyPostParameterProcessing)) {
                    return null;
                }
            }
        }
        t = mo25getFromDebugProperties;
        if (t == null) {
        }
        applyPostParameterProcessing = applyPostParameterProcessing(t, parameterData);
        return !(applyPostParameterProcessing instanceof String) ? applyPostParameterProcessing : applyPostParameterProcessing;
    }

    /* renamed from: getDerivedValue */
    protected T mo30getDerivedValue(ParameterData parameterData) {
        return null;
    }

    protected T applyPostParameterProcessing(T t, ParameterData parameterData) {
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ParameterData {
        private AdRequest adRequest;
        private AdTargetingOptions adTargetingOptions;
        private Map<String, String> advancedOptions;
        private AdRequest.LOISlot loiSlot;
        private Map<String, String> temporaryOptions = new HashMap();

        /* JADX INFO: Access modifiers changed from: package-private */
        public ParameterData setAdRequest(AdRequest adRequest) {
            this.adRequest = adRequest;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ParameterData setAdvancedOptions(Map<String, String> map) {
            this.advancedOptions = map;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map<String, String> getInternalAdvancedOptions() {
            return this.advancedOptions;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ParameterData setLOISlot(AdRequest.LOISlot lOISlot) {
            this.loiSlot = lOISlot;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AdRequest getAdRequest() {
            return this.adRequest;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ParameterData setAdTargetingOptions(AdTargetingOptions adTargetingOptions) {
            this.adTargetingOptions = adTargetingOptions;
            return this;
        }
    }

    /* loaded from: classes.dex */
    static class StringParameter extends AAXParameter<String> {
        StringParameter(String str, String str2) {
            super(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: parseFromString  reason: collision with other method in class */
        public String mo26parseFromString(String str) {
            return str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getFromDebugProperties  reason: collision with other method in class */
        public String mo25getFromDebugProperties() {
            return DebugProperties.getInstance().getDebugPropertyAsString(getDebugName(), null);
        }
    }

    /* loaded from: classes.dex */
    static class BooleanParameter extends AAXParameter<Boolean> {
        BooleanParameter(String str, String str2) {
            super(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: parseFromString */
        public Boolean mo26parseFromString(String str) {
            return Boolean.valueOf(Boolean.parseBoolean(str));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getFromDebugProperties */
        public Boolean mo25getFromDebugProperties() {
            return DebugProperties.getInstance().getDebugPropertyAsBoolean(getDebugName(), null);
        }
    }

    /* loaded from: classes.dex */
    static class IntegerParameter extends AAXParameter<Integer> {
        IntegerParameter(String str, String str2) {
            super(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: parseFromString */
        public Integer mo26parseFromString(String str) {
            return Integer.valueOf(Integer.parseInt(str));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getFromDebugProperties */
        public Integer mo25getFromDebugProperties() {
            return DebugProperties.getInstance().getDebugPropertyAsInteger(getDebugName(), null);
        }
    }

    /* loaded from: classes.dex */
    static class LongParameter extends AAXParameter<Long> {
        LongParameter(String str, String str2) {
            super(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: parseFromString */
        public Long mo26parseFromString(String str) {
            return Long.valueOf(Long.parseLong(str));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getFromDebugProperties */
        public Long mo25getFromDebugProperties() {
            return DebugProperties.getInstance().getDebugPropertyAsLong(getDebugName(), null);
        }
    }

    /* loaded from: classes.dex */
    static class JSONArrayParameter extends AAXParameter<JSONArray> {
        private final MobileAdsLogger logger;

        JSONArrayParameter(String str, String str2) {
            super(str, str2);
            this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(AAXParameter.LOGTAG);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: parseFromString  reason: collision with other method in class */
        public JSONArray mo26parseFromString(String str) {
            try {
                return new JSONArray(str);
            } catch (JSONException e) {
                this.logger.e("Unable to parse the following value into a JSONArray: %s", getName());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getFromDebugProperties  reason: collision with other method in class */
        public JSONArray mo25getFromDebugProperties() {
            return mo26parseFromString(DebugProperties.getInstance().getDebugPropertyAsString(getDebugName(), null));
        }
    }

    /* loaded from: classes.dex */
    static class JSONObjectParameter extends AAXParameter<JSONObject> {
        private final MobileAdsLogger logger;

        JSONObjectParameter(String str, String str2) {
            super(str, str2);
            this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(AAXParameter.LOGTAG);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: parseFromString  reason: collision with other method in class */
        public JSONObject mo26parseFromString(String str) {
            try {
                return new JSONObject(str);
            } catch (JSONException e) {
                this.logger.e("Unable to parse the following value into a JSONObject: %s", getName());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getFromDebugProperties  reason: collision with other method in class */
        public JSONObject mo25getFromDebugProperties() {
            return mo26parseFromString(DebugProperties.getInstance().getDebugPropertyAsString(getDebugName(), null));
        }
    }

    /* loaded from: classes.dex */
    static class AppKeyParameter extends StringParameter {
        AppKeyParameter() {
            super("appId", DebugProperties.DEBUG_APPID);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: avoid collision after fix types in other method */
        public String mo30getDerivedValue(ParameterData parameterData) {
            return MobileAdsInfoStore.getInstance().getRegistrationInfo().getAppKey();
        }
    }

    /* loaded from: classes.dex */
    static class PublisherKeywordsParameter extends JSONArrayParameter {
        PublisherKeywordsParameter() {
            super(PkInitilaizer.PRODUCT_PK, DebugProperties.DEBUG_PK);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        public JSONArray applyPostParameterProcessing(JSONArray jSONArray, ParameterData parameterData) {
            HashSet<String> internalPublisherKeywords;
            if (jSONArray == null) {
                jSONArray = new JSONArray();
            }
            if (parameterData.adTargetingOptions != null && (internalPublisherKeywords = parameterData.adTargetingOptions.getInternalPublisherKeywords()) != null) {
                Iterator<String> it = internalPublisherKeywords.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
            }
            return jSONArray;
        }
    }

    /* loaded from: classes.dex */
    static class UserAgentParameter extends StringParameter {
        UserAgentParameter() {
            super("ua", DebugProperties.DEBUG_UA);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: collision with other method in class */
        public String mo30getDerivedValue(ParameterData parameterData) {
            return MobileAdsInfoStore.getInstance().getDeviceInfo().getUserAgentString();
        }
    }

    /* loaded from: classes.dex */
    static class SDKVersionParameter extends StringParameter {
        SDKVersionParameter() {
            super("adsdk", DebugProperties.DEBUG_VER);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: collision with other method in class */
        public String mo30getDerivedValue(ParameterData parameterData) {
            return Version.getSDKVersion();
        }
    }

    /* loaded from: classes.dex */
    static class GeoLocationParameter extends StringParameter {
        private final Configuration configuration;
        private final Context context;

        GeoLocationParameter() {
            this(Configuration.getInstance(), MobileAdsInfoStore.getInstance().getApplicationContext());
        }

        GeoLocationParameter(Configuration configuration, Context context) {
            super("geoloc", DebugProperties.DEBUG_GEOLOC);
            this.configuration = configuration;
            this.context = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: collision with other method in class */
        public String mo30getDerivedValue(ParameterData parameterData) {
            Location location;
            if (!this.configuration.getBoolean(Configuration.ConfigOption.SEND_GEO) || !parameterData.getAdRequest().getAdTargetingOptions().isGeoLocationEnabled() || (location = new AdLocation(this.context).getLocation()) == null) {
                return null;
            }
            return location.getLatitude() + "," + location.getLongitude();
        }
    }

    /* loaded from: classes.dex */
    static class DeviceInfoParameter extends JSONObjectParameter {
        DeviceInfoParameter() {
            super("dinfo", DebugProperties.DEBUG_DINFO);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: avoid collision after fix types in other method */
        public JSONObject mo30getDerivedValue(ParameterData parameterData) {
            return MobileAdsInfoStore.getInstance().getDeviceInfo().toJsonObject(parameterData.adRequest.getOrientation());
        }
    }

    /* loaded from: classes.dex */
    static class PackageInfoParameter extends JSONObjectParameter {
        PackageInfoParameter() {
            super("pkg", DebugProperties.DEBUG_PKG);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: collision with other method in class */
        public JSONObject mo30getDerivedValue(ParameterData parameterData) {
            return MobileAdsInfoStore.getInstance().getAppInfo().getPackageInfoJSON();
        }
    }

    /* loaded from: classes.dex */
    static class TestParameter extends BooleanParameter {
        TestParameter() {
            super("isTest", DebugProperties.DEBUG_TEST);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue */
        public Boolean mo30getDerivedValue(ParameterData parameterData) {
            return Settings.getInstance().getBoolean("testingEnabled", (Boolean) null);
        }
    }

    /* loaded from: classes.dex */
    static class OptOutParameter extends BooleanParameter {
        OptOutParameter() {
            super("oo", DebugProperties.DEBUG_OPT_OUT);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue */
        public Boolean mo30getDerivedValue(ParameterData parameterData) {
            if (parameterData.adRequest.getAdvertisingIdentifierInfo().hasAdvertisingIdentifier()) {
                return Boolean.valueOf(parameterData.adRequest.getAdvertisingIdentifierInfo().isLimitAdTrackingEnabled());
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    static class SizeParameter extends StringParameter {
        SizeParameter() {
            super("sz", DebugProperties.DEBUG_SIZE);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: collision with other method in class */
        public String mo30getDerivedValue(ParameterData parameterData) {
            return parameterData.loiSlot.getAdSlot().getRequestedAdSize().toString();
        }
    }

    /* loaded from: classes.dex */
    static class SlotParameter extends StringParameter {
        SlotParameter() {
            super("slot", DebugProperties.DEBUG_SLOT);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: collision with other method in class */
        public String mo30getDerivedValue(ParameterData parameterData) {
            return parameterData.adRequest.getOrientation();
        }
    }

    /* loaded from: classes.dex */
    static class MaxSizeParameter extends StringParameter {
        MaxSizeParameter() {
            super("mxsz", DebugProperties.DEBUG_MXSZ);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: collision with other method in class */
        public String mo30getDerivedValue(ParameterData parameterData) {
            return parameterData.loiSlot.getAdSlot().getMaxSize();
        }
    }

    /* loaded from: classes.dex */
    static class SlotIdParameter extends IntegerParameter {
        SlotIdParameter() {
            super("slotId", DebugProperties.DEBUG_SLOT_ID);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue */
        public Integer mo30getDerivedValue(ParameterData parameterData) {
            return Integer.valueOf(parameterData.loiSlot.getAdSlot().getSlotNumber());
        }
    }

    /* loaded from: classes.dex */
    static class FloorPriceParameter extends LongParameter {
        FloorPriceParameter() {
            super("ec", DebugProperties.DEBUG_ECPM);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue */
        public Long mo30getDerivedValue(ParameterData parameterData) {
            if (parameterData.loiSlot.getAdTargetingOptions().hasFloorPrice()) {
                return Long.valueOf(parameterData.loiSlot.getAdTargetingOptions().getFloorPrice());
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    static class SupportedMediaTypesParameter extends JSONArrayParameter {
        public SupportedMediaTypesParameter() {
            super("supportedMediaTypes", DebugProperties.DEBUG_SUPPORTED_MEDIA_TYPES);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: collision with other method in class */
        public JSONArray mo30getDerivedValue(ParameterData parameterData) {
            JSONArray jSONArray = new JSONArray();
            addDisplay(parameterData, jSONArray);
            addVideo(parameterData, jSONArray);
            return jSONArray;
        }

        private void addDisplay(ParameterData parameterData, JSONArray jSONArray) {
            boolean isDisplayAdsEnabled = parameterData.loiSlot.getAdTargetingOptions().isDisplayAdsEnabled();
            if (parameterData.advancedOptions.containsKey("enableDisplayAds")) {
                isDisplayAdsEnabled = Boolean.parseBoolean((String) parameterData.advancedOptions.remove("enableDisplayAds"));
            }
            if (isDisplayAdsEnabled) {
                jSONArray.put("DISPLAY");
            }
        }

        private void addVideo(ParameterData parameterData, JSONArray jSONArray) {
            if (new VideoAdsEnabledChecker(parameterData).isVideoAdsEnabled()) {
                jSONArray.put(ShareConstants.VIDEO_URL);
            }
        }
    }

    /* loaded from: classes.dex */
    static class VideoOptionsParameter extends JSONObjectParameter {
        private static final int MAXIMUM_DURATION_DEFAULT = 30000;
        private static final int MINIMUM_DURATION_DEFAULT = 0;

        public VideoOptionsParameter() {
            super(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, DebugProperties.DEBUG_VIDEO_OPTIONS);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.AAXParameter
        /* renamed from: getDerivedValue  reason: collision with other method in class */
        public JSONObject mo30getDerivedValue(ParameterData parameterData) {
            int i = 0;
            if (!new VideoAdsEnabledChecker(parameterData).isVideoAdsEnabled()) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            if (parameterData.advancedOptions.containsKey("minVideoAdDuration")) {
                i = new Parsers.IntegerParser().setDefaultValue(0).setParseErrorLogTag(AAXParameter.LOGTAG).setParseErrorLogMessage("The minVideoAdDuration advanced option could not be parsed properly.").parse((String) parameterData.advancedOptions.remove("minVideoAdDuration"));
            }
            JSONUtils.put(jSONObject, "minAdDuration", i);
            JSONUtils.put(jSONObject, "maxAdDuration", parameterData.advancedOptions.containsKey("maxVideoAdDuration") ? new Parsers.IntegerParser().setDefaultValue(30000).setParseErrorLogTag(AAXParameter.LOGTAG).setParseErrorLogMessage("The maxVideoAdDuration advanced option could not be parsed properly.").parse((String) parameterData.advancedOptions.remove("maxVideoAdDuration")) : 30000);
            return jSONObject;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class VideoAdsEnabledChecker {
        private final ParameterData parameterData;

        public VideoAdsEnabledChecker(ParameterData parameterData) {
            this.parameterData = parameterData;
        }

        public boolean isVideoAdsEnabled() {
            if (this.parameterData.loiSlot.getAdTargetingOptions().isVideoEnabledSettable()) {
                if (!this.parameterData.advancedOptions.containsKey("enableVideoAds")) {
                    return this.parameterData.temporaryOptions.containsKey("enableVideoAds") ? Boolean.parseBoolean((String) this.parameterData.temporaryOptions.get("enableVideoAds")) : this.parameterData.loiSlot.getAdTargetingOptions().isVideoAdsEnabled();
                }
                String str = (String) this.parameterData.advancedOptions.remove("enableVideoAds");
                this.parameterData.temporaryOptions.put("enableVideoAds", str);
                return Boolean.parseBoolean(str);
            }
            return false;
        }
    }
}
