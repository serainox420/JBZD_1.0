package com.amazon.device.ads;

import com.amazon.device.ads.JSONUtils;
import java.util.Properties;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DebugProperties {
    public static final String DEBUG_AAX_AD_PARAMS = "debug.aaxAdParams";
    public static final String DEBUG_AAX_CONFIG_HOSTNAME = "debug.aaxConfigHostname";
    public static final String DEBUG_AAX_CONFIG_PARAMS = "debug.aaxConfigParams";
    public static final String DEBUG_AAX_CONFIG_USE_SECURE = "debug.aaxConfigUseSecure";
    public static final String DEBUG_ADID = "debug.adid";
    public static final String DEBUG_ADVTARGETING = "debug.advTargeting";
    public static final String DEBUG_APPID = "debug.appid";
    public static final String DEBUG_CAN_TIMEOUT = "debug.canTimeout";
    public static final String DEBUG_CHANNEL = "debug.channel";
    public static final String DEBUG_CONFIG_FEATURE_USE_GPS_ADVERTISING_ID = "debug.fUseGPSAID";
    public static final String DEBUG_DINFO = "debug.dinfo";
    public static final String DEBUG_DIRECTEDID = "debug.directedId";
    public static final String DEBUG_ECPM = "debug.ec";
    public static final String DEBUG_GEOLOC = "debug.geoloc";
    public static final String DEBUG_IDFA = "debug.idfa";
    public static final String DEBUG_LOGGING = "debug.logging";
    public static final String DEBUG_MADS_USE_SECURE = "debug.madsUseSecure";
    public static final String DEBUG_MD5UDID = "debug.md5udid";
    public static final String DEBUG_MXSZ = "debug.mxsz";
    public static final String DEBUG_NORETRYTTL = "debug.noRetryTTL";
    public static final String DEBUG_NORETRYTTL_MAX = "debug.noRetryTTLMax";
    public static final String DEBUG_OPT_OUT = "debug.optOut";
    public static final String DEBUG_PA = "debug.pa";
    public static final String DEBUG_PJ = "debug.pj";
    public static final String DEBUG_PK = "debug.pk";
    public static final String DEBUG_PKG = "debug.pkg";
    public static final String DEBUG_PT = "debug.pt";
    public static final String DEBUG_SHA1UDID = "debug.sha1udid";
    public static final String DEBUG_SHOULD_FETCH_CONFIG = "debug.shouldFetchConfig";
    public static final String DEBUG_SHOULD_IDENTIFY_USER = "debug.shouldIdentifyUser";
    public static final String DEBUG_SHOULD_REGISTER_SIS = "debug.shouldRegisterSIS";
    public static final String DEBUG_SIS_CHECKIN_INTERVAL = "debug.sisCheckinInterval";
    public static final String DEBUG_SIZE = "debug.size";
    public static final String DEBUG_SLOT = "debug.slot";
    public static final String DEBUG_SLOTS = "debug.slots";
    public static final String DEBUG_SLOT_ID = "debug.slotId";
    public static final String DEBUG_SP = "debug.sp";
    public static final String DEBUG_SUPPORTED_MEDIA_TYPES = "debug.supportedMediaTypes";
    public static final String DEBUG_TEST = "debug.test";
    public static final String DEBUG_UA = "debug.ua";
    public static final String DEBUG_USESECURE = "debug.useSecure";
    public static final String DEBUG_VER = "debug.ver";
    public static final String DEBUG_VIDEO_OPTIONS = "debug.videoOptions";
    public static final String DEBUG_VIEWABLE_INTERVAL = "debug.viewableInterval";
    public static final String DEBUG_WEBVIEWS = "debug.webViews";
    private final Properties debugProperties;
    private final JSONUtils.JSONUtilities jsonUtilities;
    private final MobileAdsLogger logger;
    private static final DebugProperties instance = new DebugProperties();
    private static final String LOGTAG = DebugProperties.class.getSimpleName();

    public DebugProperties() {
        this(new JSONUtils.JSONUtilities(), new MobileAdsLoggerFactory());
    }

    DebugProperties(JSONUtils.JSONUtilities jSONUtilities, MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        this.debugProperties = new Properties();
        this.jsonUtilities = jSONUtilities;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
    }

    public static DebugProperties getInstance() {
        return instance;
    }

    public String getDebugPropertyAsString(String str, String str2) {
        return this.debugProperties.getProperty(str, str2);
    }

    public Integer getDebugPropertyAsInteger(String str, Integer num) {
        String property = this.debugProperties.getProperty(str);
        if (property != null) {
            try {
                return Integer.valueOf(Integer.parseInt(property));
            } catch (NumberFormatException e) {
                this.logger.e("Unable to parse integer debug property - property: %s, value: %s", str, property);
                return num;
            }
        }
        return num;
    }

    public Boolean getDebugPropertyAsBoolean(String str, Boolean bool) {
        String property = this.debugProperties.getProperty(str);
        if (property != null) {
            try {
                return Boolean.valueOf(Boolean.parseBoolean(property));
            } catch (NumberFormatException e) {
                this.logger.e("Unable to parse boolean debug property - property: %s, value: %s", str, property);
                return bool;
            }
        }
        return bool;
    }

    public Long getDebugPropertyAsLong(String str, Long l) {
        String property = this.debugProperties.getProperty(str);
        if (property != null) {
            try {
                return Long.valueOf(Long.parseLong(property));
            } catch (NumberFormatException e) {
                this.logger.e("Unable to parse long debug property - property: %s, value: %s", str, property);
                return l;
            }
        }
        return l;
    }

    public JSONObject getDebugPropertyAsJSONObject(String str, JSONObject jSONObject) {
        String property = this.debugProperties.getProperty(str);
        return property == null ? jSONObject : this.jsonUtilities.getJSONObjectFromString(property);
    }

    public boolean containsDebugProperty(String str) {
        return this.debugProperties.containsKey(str);
    }

    public void setDebugProperty(String str, String str2) {
        this.debugProperties.put(str, str2);
    }

    public void clearDebugProperties() {
        this.debugProperties.clear();
    }

    public void overwriteDebugProperties(JSONObject jSONObject) {
        clearDebugProperties();
        this.debugProperties.putAll(this.jsonUtilities.createMapFromJSON(jSONObject));
    }
}
