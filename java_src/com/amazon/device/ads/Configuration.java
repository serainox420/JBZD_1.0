package com.amazon.device.ads;

import com.amazon.device.ads.Metrics;
import com.amazon.device.ads.PreferredMarketplaceRetriever;
import com.amazon.device.ads.ThreadUtils;
import com.amazon.device.ads.WebRequest;
import com.applovin.impl.sdk.NativeAdImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Configuration {
    private static final String AAX_MSDK_CONFIG_ENDPOINT = "/msdk/getConfig";
    private static final String AAX_PROD_US_HOSTNAME = "mads.amazon-adsystem.com";
    protected static final String CONFIG_APP_DEFINED_MARKETPLACE = "config-appDefinedMarketplace";
    protected static final String CONFIG_LASTFETCHTIME = "config-lastFetchTime";
    protected static final String CONFIG_TTL = "config-ttl";
    protected static final String CONFIG_VERSION_NAME = "configVersion";
    protected static final int CURRENT_CONFIG_VERSION = 4;
    protected static final int MAX_CONFIG_TTL = 172800000;
    protected static final int MAX_NO_RETRY_TTL = 300000;
    private String appDefinedMarketplace;
    private final DebugProperties debugProperties;
    private final MobileAdsInfoStore infoStore;
    private boolean isAppDefinedMarketplaceSet;
    private final AtomicBoolean isFetching;
    private boolean isFirstParty;
    private Boolean lastTestModeValue;
    private final List<ConfigurationListener> listeners;
    private final MobileAdsLogger logger;
    private final Metrics metrics;
    private final PermissionChecker permissionChecker;
    private PreferredMarketplaceRetriever pfmRetriever;
    private final Settings settings;
    private final SystemTime systemTime;
    private final ThreadUtils.ThreadRunner threadRunner;
    private final WebRequest.WebRequestFactory webRequestFactory;
    private final WebRequestUserId webRequestUserId;
    private static final String LOGTAG = Configuration.class.getSimpleName();
    private static Configuration instance = new Configuration();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface ConfigurationListener {
        void onConfigurationFailure();

        void onConfigurationReady();
    }

    /* loaded from: classes.dex */
    public static class ConfigOption {
        private final boolean allowEmpty;
        private final Class<?> dataType;
        private final String responseKey;
        private final String settingsName;
        public static final ConfigOption AAX_HOSTNAME = new ConfigOption("config-aaxHostname", String.class, "aaxHostname");
        public static final ConfigOption AD_RESOURCE_PATH = new ConfigOption("config-adResourcePath", String.class, "adResourcePath");
        public static final ConfigOption SIS_URL = new ConfigOption("config-sisURL", String.class, "sisURL");
        public static final ConfigOption AD_PREF_URL = new ConfigOption("config-adPrefURL", String.class, "adPrefURL");
        public static final ConfigOption MADS_HOSTNAME = new ConfigOption("config-madsHostname", String.class, "madsHostname", true);
        public static final ConfigOption SIS_DOMAIN = new ConfigOption("config-sisDomain", String.class, "sisDomain");
        public static final ConfigOption SEND_GEO = new ConfigOption("config-sendGeo", Boolean.class, "sendGeo");
        public static final ConfigOption TRUNCATE_LAT_LON = new ConfigOption("config-truncateLatLon", Boolean.class, "truncateLatLon");
        public static final ConfigOption WHITELISTED_CUSTOMER = new ConfigOption("config-whitelistedCustomer", Boolean.class, "whitelistedCustomer");
        public static final ConfigOption IDENTIFY_USER_INTERVAL = new ConfigOption("config-identifyUserInterval", Long.class, "identifyUserInterval");
        public static final ConfigOption IDENTIFY_USER_SESSION_INTERVAL = new ConfigOption("config-identifyUserSessionIdInterval", Long.class, "identifyUserSessionIdInterval", true);
        public static final ConfigOption VIEWABLE_JAVASCRIPT_URL = new ConfigOption("config-viewableJavascriptCDNURL", String.class, "viewableJavascriptCDNURL");
        public static final ConfigOption VIEWABLE_JS_VERSION_CONFIG = new ConfigOption("config-viewableJSVersionConfig", Integer.class, "viewableJSVersion");
        public static final ConfigOption VIEWABLE_INTERVAL = new ConfigOption("config-viewableInterval", Long.class, "viewableInterval", true);
        public static final ConfigOption DEBUG_PROPERTIES = new ConfigOption("config-debugProperties", JSONObject.class, "debugProperties", true);
        public static final ConfigOption BASE_URL = new ConfigOption("config-baseURL", String.class, "baseURL", true);
        public static final ConfigOption[] configOptions = {AAX_HOSTNAME, AD_RESOURCE_PATH, SIS_URL, AD_PREF_URL, MADS_HOSTNAME, SIS_DOMAIN, SEND_GEO, TRUNCATE_LAT_LON, WHITELISTED_CUSTOMER, IDENTIFY_USER_INTERVAL, IDENTIFY_USER_SESSION_INTERVAL, VIEWABLE_JAVASCRIPT_URL, VIEWABLE_JS_VERSION_CONFIG, DEBUG_PROPERTIES, VIEWABLE_INTERVAL, BASE_URL};

        protected ConfigOption(String str, Class<?> cls, String str2) {
            this(str, cls, str2, false);
        }

        protected ConfigOption(String str, Class<?> cls, String str2, boolean z) {
            this.settingsName = str;
            this.responseKey = str2;
            this.dataType = cls;
            this.allowEmpty = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getSettingsName() {
            return this.settingsName;
        }

        String getResponseKey() {
            return this.responseKey;
        }

        Class<?> getDataType() {
            return this.dataType;
        }

        boolean getAllowEmpty() {
            return this.allowEmpty;
        }
    }

    protected Configuration() {
        this(new MobileAdsLoggerFactory(), new PermissionChecker(), new WebRequest.WebRequestFactory(), DebugProperties.getInstance(), Settings.getInstance(), MobileAdsInfoStore.getInstance(), new SystemTime(), Metrics.getInstance(), ThreadUtils.getThreadRunner(), new WebRequestUserId());
    }

    Configuration(MobileAdsLoggerFactory mobileAdsLoggerFactory, PermissionChecker permissionChecker, WebRequest.WebRequestFactory webRequestFactory, DebugProperties debugProperties, Settings settings, MobileAdsInfoStore mobileAdsInfoStore, SystemTime systemTime, Metrics metrics, ThreadUtils.ThreadRunner threadRunner, WebRequestUserId webRequestUserId) {
        this.appDefinedMarketplace = null;
        this.isAppDefinedMarketplaceSet = false;
        this.listeners = new ArrayList(5);
        this.isFetching = new AtomicBoolean(false);
        this.lastTestModeValue = null;
        this.isFirstParty = false;
        this.pfmRetriever = new PreferredMarketplaceRetriever.NullPreferredMarketplaceRetriever();
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.permissionChecker = permissionChecker;
        this.webRequestFactory = webRequestFactory;
        this.debugProperties = debugProperties;
        this.settings = settings;
        this.infoStore = mobileAdsInfoStore;
        this.systemTime = systemTime;
        this.metrics = metrics;
        this.threadRunner = threadRunner;
        this.webRequestUserId = webRequestUserId;
    }

    public static final Configuration getInstance() {
        return instance;
    }

    public void setAppDefinedMarketplace(String str) {
        this.appDefinedMarketplace = str;
        this.isAppDefinedMarketplaceSet = true;
    }

    public void setIsFirstParty(boolean z) {
        this.isFirstParty = z;
    }

    boolean isFirstParty() {
        return this.isFirstParty;
    }

    public boolean hasValue(ConfigOption configOption) {
        return !StringUtils.isNullOrWhiteSpace(getString(configOption));
    }

    public String getString(ConfigOption configOption) {
        return this.settings.getString(configOption.getSettingsName(), null);
    }

    public String getStringWithDefault(ConfigOption configOption, String str) {
        return this.settings.getString(configOption.getSettingsName(), str);
    }

    public boolean getBoolean(ConfigOption configOption) {
        return getBooleanWithDefault(configOption, false);
    }

    public boolean getBooleanWithDefault(ConfigOption configOption, boolean z) {
        return this.settings.getBoolean(configOption.getSettingsName(), z);
    }

    public int getInt(ConfigOption configOption) {
        return getIntWithDefault(configOption, 0);
    }

    public int getIntWithDefault(ConfigOption configOption, int i) {
        return this.settings.getInt(configOption.getSettingsName(), i);
    }

    public long getLong(ConfigOption configOption) {
        return getLongWithDefault(configOption, 0L);
    }

    public long getLongWithDefault(ConfigOption configOption, long j) {
        return this.settings.getLong(configOption.getSettingsName(), j);
    }

    public JSONObject getJSONObject(ConfigOption configOption) {
        return getJSONObjectWithDefault(configOption, null);
    }

    public JSONObject getJSONObjectWithDefault(ConfigOption configOption, JSONObject jSONObject) {
        return this.settings.getJSONObject(configOption.getSettingsName(), jSONObject);
    }

    protected boolean shouldFetch() {
        if (!hasAppDefinedMarketplaceChanged() && this.settings.getInt(CONFIG_VERSION_NAME, 0) == 4) {
            long j = this.settings.getLong(CONFIG_LASTFETCHTIME, 0L);
            if (j == 0) {
                this.logger.d("No configuration found. A new configuration will be retrieved.");
                return true;
            }
            if (this.systemTime.currentTimeMillis() - j > this.settings.getLong(CONFIG_TTL, 172800000L)) {
                this.logger.d("The configuration has expired. A new configuration will be retrieved.");
                return true;
            } else if (this.settings.getWrittenLong("amzn-ad-iu-last-checkin", 0L) - j > 0) {
                this.logger.d("A new user has been identified. A new configuration will be retrieved.");
                return true;
            } else if (this.lastTestModeValue == null || this.lastTestModeValue.booleanValue() == this.settings.getBoolean("testingEnabled", false)) {
                return this.debugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_SHOULD_FETCH_CONFIG, false).booleanValue();
            } else {
                this.logger.d("The testing mode has changed. A new configuration will be retrieved.");
                return true;
            }
        }
        return true;
    }

    private boolean hasAppDefinedMarketplaceChanged() {
        String string = this.settings.getString(CONFIG_APP_DEFINED_MARKETPLACE, null);
        if (this.isAppDefinedMarketplaceSet) {
            this.isAppDefinedMarketplaceSet = false;
            if (this.appDefinedMarketplace != null && !this.appDefinedMarketplace.equals(string)) {
                this.settings.putLongWithNoFlush(CONFIG_LASTFETCHTIME, 0L);
                this.settings.putStringWithNoFlush(CONFIG_APP_DEFINED_MARKETPLACE, this.appDefinedMarketplace);
                this.settings.flush();
                this.infoStore.getRegistrationInfo().requestNewSISDeviceIdentifier();
                this.logger.d("New application-defined marketplace set. A new configuration will be retrieved.");
                return true;
            } else if (string != null && this.appDefinedMarketplace == null) {
                this.settings.remove(CONFIG_APP_DEFINED_MARKETPLACE);
                this.infoStore.getRegistrationInfo().requestNewSISDeviceIdentifier();
                this.logger.d("Application-defined marketplace removed. A new configuration will be retrieved.");
                return true;
            }
        }
        return false;
    }

    protected boolean isFetching() {
        return this.isFetching.get();
    }

    protected void setIsFetching(boolean z) {
        this.isFetching.set(z);
    }

    public synchronized void queueConfigurationListener(ConfigurationListener configurationListener) {
        queueConfigurationListener(configurationListener, true);
    }

    public synchronized void queueConfigurationListener(ConfigurationListener configurationListener, boolean z) {
        if (isFetching()) {
            this.listeners.add(configurationListener);
        } else if (shouldFetch()) {
            this.listeners.add(configurationListener);
            if (z) {
                this.logger.d("Starting configuration fetching...");
                setIsFetching(true);
                beginFetch();
            }
        } else {
            configurationListener.onConfigurationReady();
        }
    }

    protected void beginFetch() {
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.Configuration.1
            @Override // java.lang.Runnable
            public void run() {
                Configuration.this.fetchConfigurationOnBackgroundThread();
            }
        }, ThreadUtils.ExecutionStyle.SCHEDULE, ThreadUtils.ExecutionThread.BACKGROUND_THREAD);
    }

    protected synchronized void onFetchSuccess() {
        synchronized (this) {
            setIsFetching(false);
            for (ConfigurationListener configurationListener : getAndClearListeners()) {
                configurationListener.onConfigurationReady();
            }
        }
    }

    protected synchronized void onFetchFailure() {
        synchronized (this) {
            this.metrics.getMetricsCollector().incrementMetric(Metrics.MetricType.AAX_CONFIG_DOWNLOAD_FAILED);
            setIsFetching(false);
            for (ConfigurationListener configurationListener : getAndClearListeners()) {
                configurationListener.onConfigurationFailure();
            }
        }
    }

    protected synchronized ConfigurationListener[] getAndClearListeners() {
        ConfigurationListener[] configurationListenerArr;
        configurationListenerArr = (ConfigurationListener[]) this.listeners.toArray(new ConfigurationListener[this.listeners.size()]);
        this.listeners.clear();
        return configurationListenerArr;
    }

    protected ConfigOption[] getConfigOptions() {
        return ConfigOption.configOptions;
    }

    protected void setLastTestModeValue(boolean z) {
        this.lastTestModeValue = Boolean.valueOf(z);
    }

    protected void fetchConfigurationOnBackgroundThread() {
        ConfigOption[] configOptions;
        long j = 172800000;
        this.logger.d("In configuration fetcher background thread.");
        if (!this.permissionChecker.hasInternetPermission(this.infoStore.getApplicationContext())) {
            this.logger.e("Network task cannot commence because the INTERNET permission is missing from the app's manifest.");
            onFetchFailure();
            return;
        }
        WebRequest createWebRequest = createWebRequest();
        if (createWebRequest == null) {
            onFetchFailure();
            return;
        }
        try {
            JSONObject readAsJSON = createWebRequest.makeCall().getResponseReader().readAsJSON();
            try {
                for (ConfigOption configOption : getConfigOptions()) {
                    if (readAsJSON.isNull(configOption.getResponseKey())) {
                        if (configOption.getAllowEmpty()) {
                            this.settings.removeWithNoFlush(configOption.getSettingsName());
                        } else {
                            throw new Exception("The configuration value for " + configOption.getResponseKey() + " must be present and not null.");
                        }
                    } else {
                        writeSettingFromConfigOption(configOption, readAsJSON);
                    }
                }
                if (readAsJSON.isNull(ConfigOption.DEBUG_PROPERTIES.getResponseKey())) {
                    this.settings.removeWithNoFlush(ConfigOption.DEBUG_PROPERTIES.getSettingsName());
                    this.debugProperties.clearDebugProperties();
                } else {
                    this.debugProperties.overwriteDebugProperties(readAsJSON.getJSONObject(ConfigOption.DEBUG_PROPERTIES.getResponseKey()));
                }
                if (readAsJSON.isNull("ttl")) {
                    throw new Exception("The configuration value must be present and not null.");
                }
                long convertToMillisecondsFromSeconds = NumberUtils.convertToMillisecondsFromSeconds(readAsJSON.getInt("ttl"));
                if (convertToMillisecondsFromSeconds <= 172800000) {
                    j = convertToMillisecondsFromSeconds;
                }
                this.settings.putLongWithNoFlush(CONFIG_TTL, j);
                this.settings.putLongWithNoFlush(CONFIG_LASTFETCHTIME, this.systemTime.currentTimeMillis());
                this.settings.putIntWithNoFlush(CONFIG_VERSION_NAME, 4);
                this.settings.flush();
                this.logger.d("Configuration fetched and saved.");
                onFetchSuccess();
            } catch (JSONException e) {
                this.logger.e("Unable to parse JSON response: %s", e.getMessage());
                onFetchFailure();
            } catch (Exception e2) {
                this.logger.e("Unexpected error during parsing: %s", e2.getMessage());
                onFetchFailure();
            }
        } catch (WebRequest.WebRequestException e3) {
            onFetchFailure();
        }
    }

    private void writeSettingFromConfigOption(ConfigOption configOption, JSONObject jSONObject) throws Exception {
        if (configOption.getDataType().equals(String.class)) {
            String string = jSONObject.getString(configOption.getResponseKey());
            if (configOption.getAllowEmpty() || !StringUtils.isNullOrWhiteSpace(string)) {
                this.settings.putStringWithNoFlush(configOption.getSettingsName(), string);
                return;
            }
            throw new IllegalArgumentException("The configuration value must not be empty or contain only white spaces.");
        } else if (configOption.getDataType().equals(Boolean.class)) {
            this.settings.putBooleanWithNoFlush(configOption.getSettingsName(), jSONObject.getBoolean(configOption.getResponseKey()));
        } else if (configOption.getDataType().equals(Integer.class)) {
            this.settings.putIntWithNoFlush(configOption.getSettingsName(), jSONObject.getInt(configOption.getResponseKey()));
        } else if (configOption.getDataType().equals(Long.class)) {
            this.settings.putLongWithNoFlush(configOption.getSettingsName(), jSONObject.getLong(configOption.getResponseKey()));
        } else if (configOption.getDataType().equals(JSONObject.class)) {
            this.settings.putJSONObjectWithNoFlush(configOption.getSettingsName(), jSONObject.getJSONObject(configOption.getResponseKey()));
        } else {
            throw new IllegalArgumentException("Undefined configuration option type.");
        }
    }

    protected WebRequest createWebRequest() {
        WebRequest createJSONGetWebRequest = this.webRequestFactory.createJSONGetWebRequest();
        createJSONGetWebRequest.setExternalLogTag(LOGTAG);
        createJSONGetWebRequest.enableLog(true);
        createJSONGetWebRequest.setHost(this.debugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_AAX_CONFIG_HOSTNAME, AAX_PROD_US_HOSTNAME));
        createJSONGetWebRequest.setPath(AAX_MSDK_CONFIG_ENDPOINT);
        createJSONGetWebRequest.setMetricsCollector(this.metrics.getMetricsCollector());
        createJSONGetWebRequest.setServiceCallLatencyMetric(Metrics.MetricType.AAX_CONFIG_DOWNLOAD_LATENCY);
        createJSONGetWebRequest.setUseSecure(this.debugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_AAX_CONFIG_USE_SECURE, true).booleanValue());
        RegistrationInfo registrationInfo = this.infoStore.getRegistrationInfo();
        DeviceInfo deviceInfo = this.infoStore.getDeviceInfo();
        createJSONGetWebRequest.putUnencodedQueryParameter("appId", registrationInfo.getAppKey());
        createJSONGetWebRequest.putUnencodedQueryParameter("dinfo", deviceInfo.getDInfoProperty().toString());
        createJSONGetWebRequest.putUnencodedQueryParameter("sdkVer", Version.getSDKVersion());
        createJSONGetWebRequest.putUnencodedQueryParameter(NativeAdImpl.QUERY_PARAM_IS_FIRST_PLAY, Boolean.toString(this.isFirstParty));
        createJSONGetWebRequest.putUnencodedQueryParameter("mkt", this.settings.getString(CONFIG_APP_DEFINED_MARKETPLACE, null));
        createJSONGetWebRequest.putUnencodedQueryParameter("pfm", getPreferredMarketplace());
        boolean z = this.settings.getBoolean("testingEnabled", false);
        setLastTestModeValue(z);
        if (z) {
            createJSONGetWebRequest.putUnencodedQueryParameter("testMode", "true");
        }
        createJSONGetWebRequest.setAdditionalQueryParamsString(this.debugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_AAX_CONFIG_PARAMS, null));
        if (!this.webRequestUserId.populateWebRequestUserId(createJSONGetWebRequest)) {
            return null;
        }
        return createJSONGetWebRequest;
    }

    public void setPreferredMarketplaceRetriever(PreferredMarketplaceRetriever preferredMarketplaceRetriever) {
        this.pfmRetriever = preferredMarketplaceRetriever;
    }

    PreferredMarketplaceRetriever getPreferredMarketplaceRetriever() {
        return this.pfmRetriever;
    }

    private String getPreferredMarketplace() {
        return this.pfmRetriever.retrievePreferredMarketplace(MobileAdsInfoStore.getInstance().getApplicationContext());
    }
}
