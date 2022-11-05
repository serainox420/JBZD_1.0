package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.WebView;
import com.amazon.device.ads.AdContainer;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdSize;
import com.amazon.device.ads.AdWebViewClient;
import com.amazon.device.ads.Configuration;
import com.amazon.device.ads.Metrics;
import com.amazon.device.ads.SDKEvent;
import com.amazon.device.ads.ThreadUtils;
import com.amazon.device.ads.WebRequest;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdController implements Metrics.MetricsSubmitter {
    private static final String LOGTAG = AdController.class.getSimpleName();
    protected static final String MSG_PREPARE_AD_LOADING = "An ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad.";
    protected static final String MSG_PREPARE_AD_READY_TO_SHOW = "An ad is ready to show. Please call showAd() to show the ad before loading another ad.";
    protected static final String MSG_PREPARE_AD_SHOWING = "An ad is currently showing. Please wait for the user to dismiss the ad before loading an ad.";
    protected static final String MSG_SHOW_AD_ANOTHER_SHOWING = "Another ad is currently showing. Please wait for the AdListener.onAdDismissed callback of the other ad.";
    protected static final String MSG_SHOW_AD_DESTROYED = "The ad cannot be shown because it has been destroyed. Create a new Ad object to load a new ad.";
    protected static final String MSG_SHOW_AD_DISMISSED = "The ad cannot be shown because it has already been displayed to the user. Please call loadAd(AdTargetingOptions) to load a new ad.";
    protected static final String MSG_SHOW_AD_EXPIRED = "This ad has expired. Please load another ad.";
    protected static final String MSG_SHOW_AD_LOADING = "The ad cannot be shown because it is still loading. Please wait for the AdListener.onAdLoaded() callback before showing the ad.";
    protected static final String MSG_SHOW_AD_READY_TO_LOAD = "The ad cannot be shown because it has not loaded successfully. Please call loadAd(AdTargetingOptions) to load an ad first.";
    protected static final String MSG_SHOW_AD_SHOWING = "The ad cannot be shown because it is already displayed on the screen. Please wait for the AdListener.onAdDismissed() callback and then load a new ad.";
    private Activity adActivity;
    private final AdCloser adCloser;
    private AdContainer adContainer;
    private final AdContainer.AdContainerFactory adContainerFactory;
    private AdControlAccessor adControlAccessor;
    private AdControlCallback adControlCallback;
    private AdData adData;
    private final AdHtmlPreprocessor adHtmlPreprocessor;
    private final AdSDKBridgeList adSdkBridgeList;
    private final AdSize adSize;
    private AdState adState;
    private final AdTimer adTimer;
    private final AdUrlLoader adUrlLoader;
    private final AdUtils2 adUtils;
    private int adWindowHeight;
    private int adWindowWidth;
    private final AndroidBuildInfo androidBuildInfo;
    private boolean backButtonOverridden;
    private final BridgeSelector bridgeSelector;
    private final Configuration configuration;
    private ConnectionInfo connectionInfo;
    private final Context context;
    private final DebugProperties debugProperties;
    private ViewGroup defaultParent;
    private boolean disableHardwareAccelerationRequest;
    private boolean forceDisableHardwareAcceleration;
    private final AtomicBoolean hasFinishedLoading;
    private final MobileAdsInfoStore infoStore;
    private boolean isModallyExpanded;
    private boolean isPrepared;
    private final AtomicBoolean isRendering;
    private final MobileAdsLogger logger;
    private MetricsCollector metricsCollector;
    private boolean orientationFailureMetricRecorded;
    private final PermissionChecker permissionChecker;
    private double scalingMultiplier;
    private final ArrayList<SDKEventListener> sdkEventListeners;
    private String slotID;
    private int timeout;
    private final ViewUtils viewUtils;
    private final ViewabilityObserver viewabilityObserver;
    protected final WebUtils2 webUtils;
    private boolean windowDimensionsSet;

    public AdController(Context context, AdSize adSize) {
        this(context, adSize, new WebUtils2(), new MetricsCollector(), new MobileAdsLoggerFactory(), new AdUtils2(), new AdContainer.AdContainerFactory(), MobileAdsInfoStore.getInstance(), new PermissionChecker(), new AndroidBuildInfo(), BridgeSelector.getInstance(), new AdSDKBridgeList(), ThreadUtils.getThreadRunner(), new WebRequest.WebRequestFactory(), null, null, null, new AdTimer(), DebugProperties.getInstance(), new ViewabilityObserverFactory(), new ViewUtils(), Configuration.getInstance());
    }

    AdController(Context context, AdSize adSize, ViewabilityObserverFactory viewabilityObserverFactory) {
        this(context, adSize, new WebUtils2(), new MetricsCollector(), new MobileAdsLoggerFactory(), new AdUtils2(), new AdContainer.AdContainerFactory(), MobileAdsInfoStore.getInstance(), new PermissionChecker(), new AndroidBuildInfo(), BridgeSelector.getInstance(), new AdSDKBridgeList(), ThreadUtils.getThreadRunner(), new WebRequest.WebRequestFactory(), null, null, null, new AdTimer(), DebugProperties.getInstance(), viewabilityObserverFactory, new ViewUtils(), Configuration.getInstance());
    }

    AdController(Context context, AdSize adSize, WebUtils2 webUtils2, MetricsCollector metricsCollector, MobileAdsLoggerFactory mobileAdsLoggerFactory, AdUtils2 adUtils2, AdContainer.AdContainerFactory adContainerFactory, MobileAdsInfoStore mobileAdsInfoStore, PermissionChecker permissionChecker, AndroidBuildInfo androidBuildInfo, BridgeSelector bridgeSelector, AdSDKBridgeList adSDKBridgeList, ThreadUtils.ThreadRunner threadRunner, WebRequest.WebRequestFactory webRequestFactory, AdHtmlPreprocessor adHtmlPreprocessor, AdUrlLoader adUrlLoader, AdCloser adCloser, AdTimer adTimer, DebugProperties debugProperties, ViewabilityObserverFactory viewabilityObserverFactory, ViewUtils viewUtils, Configuration configuration) {
        this(context, adSize, webUtils2, metricsCollector, mobileAdsLoggerFactory, adUtils2, adContainerFactory, mobileAdsInfoStore, permissionChecker, androidBuildInfo, bridgeSelector, adSDKBridgeList, threadRunner, new AdWebViewClientFactory(webUtils2, mobileAdsLoggerFactory, androidBuildInfo), webRequestFactory, adHtmlPreprocessor, adUrlLoader, adCloser, adTimer, debugProperties, viewabilityObserverFactory, viewUtils, configuration);
    }

    AdController(Context context, AdSize adSize, WebUtils2 webUtils2, MetricsCollector metricsCollector, MobileAdsLoggerFactory mobileAdsLoggerFactory, AdUtils2 adUtils2, AdContainer.AdContainerFactory adContainerFactory, MobileAdsInfoStore mobileAdsInfoStore, PermissionChecker permissionChecker, AndroidBuildInfo androidBuildInfo, BridgeSelector bridgeSelector, AdSDKBridgeList adSDKBridgeList, ThreadUtils.ThreadRunner threadRunner, AdWebViewClientFactory adWebViewClientFactory, WebRequest.WebRequestFactory webRequestFactory, AdHtmlPreprocessor adHtmlPreprocessor, AdUrlLoader adUrlLoader, AdCloser adCloser, AdTimer adTimer, DebugProperties debugProperties, ViewabilityObserverFactory viewabilityObserverFactory, ViewUtils viewUtils, Configuration configuration) {
        this.timeout = 20000;
        this.sdkEventListeners = new ArrayList<>();
        this.adWindowHeight = 0;
        this.adWindowWidth = 0;
        this.windowDimensionsSet = false;
        this.adState = AdState.READY_TO_LOAD;
        this.scalingMultiplier = 1.0d;
        this.isPrepared = false;
        this.defaultParent = null;
        this.isRendering = new AtomicBoolean(false);
        this.hasFinishedLoading = new AtomicBoolean(false);
        this.disableHardwareAccelerationRequest = false;
        this.forceDisableHardwareAcceleration = false;
        this.backButtonOverridden = false;
        this.isModallyExpanded = false;
        this.orientationFailureMetricRecorded = false;
        this.context = context;
        this.adSize = adSize;
        this.webUtils = webUtils2;
        this.metricsCollector = metricsCollector;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.adUtils = adUtils2;
        this.adContainerFactory = adContainerFactory;
        this.infoStore = mobileAdsInfoStore;
        this.permissionChecker = permissionChecker;
        this.androidBuildInfo = androidBuildInfo;
        this.bridgeSelector = bridgeSelector;
        this.adTimer = adTimer;
        this.debugProperties = debugProperties;
        this.adSdkBridgeList = adSDKBridgeList;
        this.viewUtils = viewUtils;
        if (adHtmlPreprocessor != null) {
            this.adHtmlPreprocessor = adHtmlPreprocessor;
        } else {
            this.adHtmlPreprocessor = new AdHtmlPreprocessor(bridgeSelector, this.adSdkBridgeList, getAdControlAccessor(), mobileAdsLoggerFactory, adUtils2);
        }
        if (adUrlLoader != null) {
            this.adUrlLoader = adUrlLoader;
        } else {
            this.adUrlLoader = new AdUrlLoader(threadRunner, adWebViewClientFactory.createAdWebViewClient(context, this.adSdkBridgeList, getAdControlAccessor()), webRequestFactory, getAdControlAccessor(), webUtils2, mobileAdsLoggerFactory, mobileAdsInfoStore.getDeviceInfo());
        }
        this.adUrlLoader.setAdWebViewClientListener(new AdControllerAdWebViewClientListener());
        if (adCloser != null) {
            this.adCloser = adCloser;
        } else {
            this.adCloser = new AdCloser(this);
        }
        this.viewabilityObserver = viewabilityObserverFactory.buildViewabilityObserver(this);
        this.configuration = configuration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdContainer getAdContainer() {
        if (this.adContainer == null) {
            this.adContainer = createAdContainer();
            this.adContainer.disableHardwareAcceleration(shouldDisableHardwareAcceleration());
            this.adContainer.setAdWebViewClient(this.adUrlLoader.getAdWebViewClient());
        }
        return this.adContainer;
    }

    AdContainer createAdContainer() {
        return this.adContainerFactory.createAdContainer(this.context, this.adCloser);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdControlCallback getAdControlCallback() {
        if (this.adControlCallback == null) {
            this.adControlCallback = new DefaultAdControlCallback();
        }
        return this.adControlCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdActivity(Activity activity) {
        this.adActivity = activity;
    }

    public void requestDisableHardwareAcceleration(boolean z) {
        this.disableHardwareAccelerationRequest = z;
        if (this.adContainer != null) {
            this.adContainer.disableHardwareAcceleration(shouldDisableHardwareAcceleration());
        }
    }

    private boolean shouldDisableHardwareAcceleration() {
        return this.forceDisableHardwareAcceleration || this.disableHardwareAccelerationRequest;
    }

    public AdControlAccessor getAdControlAccessor() {
        if (this.adControlAccessor == null) {
            this.adControlAccessor = new AdControlAccessor(this);
        }
        return this.adControlAccessor;
    }

    @Override // com.amazon.device.ads.Metrics.MetricsSubmitter
    public MetricsCollector getMetricsCollector() {
        return this.metricsCollector;
    }

    @Override // com.amazon.device.ads.Metrics.MetricsSubmitter
    public void resetMetricsCollector() {
        this.metricsCollector = new MetricsCollector();
    }

    @Override // com.amazon.device.ads.Metrics.MetricsSubmitter
    public String getInstrumentationPixelUrl() {
        if (this.adData != null) {
            return this.adData.getInstrumentationPixelUrl();
        }
        return null;
    }

    public void setAdState(AdState adState) {
        this.logger.d("Changing AdState from %s to %s", this.adState, adState);
        this.adState = adState;
    }

    public AdState getAdState() {
        return this.adState;
    }

    public boolean isVisible() {
        return AdState.SHOWING.equals(getAdState()) || AdState.EXPANDED.equals(getAdState());
    }

    public boolean isModal() {
        return getAdSize().isModal() || (AdState.EXPANDED.equals(getAdState()) && this.isModallyExpanded);
    }

    public void orientationChangeAttemptedWhenNotAllowed() {
        if (!this.orientationFailureMetricRecorded) {
            this.orientationFailureMetricRecorded = true;
            getMetricsCollector().incrementMetric(Metrics.MetricType.SET_ORIENTATION_FAILURE);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context getContext() {
        return this.adActivity == null ? this.context : this.adActivity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Activity getAdActivity() {
        return this.adActivity;
    }

    public boolean getAndResetIsPrepared() {
        boolean z = this.isPrepared;
        this.isPrepared = false;
        return z;
    }

    public boolean isValid() {
        return !getAdState().equals(AdState.INVALID);
    }

    public AdData getAdData() {
        return this.adData;
    }

    public void setAdData(AdData adData) {
        this.adData = adData;
    }

    public int getTimeout() {
        return this.timeout;
    }

    public void setTimeout(int i) {
        this.timeout = i;
    }

    public AdSize getAdSize() {
        return this.adSize;
    }

    public int getWindowHeight() {
        return this.adWindowHeight;
    }

    public int getWindowWidth() {
        return this.adWindowWidth;
    }

    public void setWindowDimensions(int i, int i2) {
        this.adWindowWidth = i;
        this.adWindowHeight = i2;
        this.windowDimensionsSet = true;
    }

    void setViewDimensionsToAdDimensions() {
        if (this.adData != null) {
            int height = (int) (this.adData.getHeight() * getScalingMultiplier() * this.adUtils.getScalingFactorAsFloat());
            if (height <= 0) {
                height = -1;
            }
            if (getAdSize().canUpscale()) {
                getAdContainer().setViewHeight(height);
                return;
            }
            getAdContainer().setViewLayoutParams((int) (this.adData.getWidth() * getScalingMultiplier() * this.adUtils.getScalingFactorAsFloat()), height, getAdSize().getGravity());
        }
    }

    public void setViewDimensionsToMatchParent() {
        getAdContainer().setViewLayoutParams(-1, -1, 17);
    }

    public boolean areWindowDimensionsSet() {
        return this.windowDimensionsSet;
    }

    public double getScalingMultiplier() {
        return this.scalingMultiplier;
    }

    public ConnectionInfo getConnectionInfo() {
        return this.connectionInfo;
    }

    public void setConnectionInfo(ConnectionInfo connectionInfo) {
        this.connectionInfo = connectionInfo;
    }

    public View getView() {
        return getAdContainer();
    }

    public Destroyable getDestroyable() {
        return getAdContainer();
    }

    public void stashView() {
        getAdContainer().stashView();
    }

    public boolean popView() {
        return getAdContainer().popView();
    }

    public int getViewWidth() {
        return getAdContainer().getViewWidth();
    }

    public int getViewHeight() {
        return getAdContainer().getViewHeight();
    }

    public String getMaxSize() {
        if (!getAdSize().isAuto()) {
            return null;
        }
        return AdSize.getAsSizeString(getWindowWidth(), getWindowHeight());
    }

    public String getScalingMultiplierDescription() {
        if (getScalingMultiplier() > 1.0d) {
            return "u";
        }
        if (getScalingMultiplier() < 1.0d && getScalingMultiplier() > 0.0d) {
            return PhoenixConstants.DEBUG_PARAM;
        }
        return "n";
    }

    public void setCallback(AdControlCallback adControlCallback) {
        this.adControlCallback = adControlCallback;
    }

    public void addSDKEventListener(SDKEventListener sDKEventListener) {
        this.logger.d("Add SDKEventListener %s", sDKEventListener);
        this.sdkEventListeners.add(sDKEventListener);
    }

    public void clearSDKEventListeners() {
        this.sdkEventListeners.clear();
    }

    public void resetToReady() {
        if (canBeUsed()) {
            this.adActivity = null;
            this.isPrepared = false;
            this.adTimer.cancelTimer();
            resetMetricsCollector();
            this.orientationFailureMetricRecorded = false;
            getAdContainer().destroy();
            this.adSdkBridgeList.clear();
            this.adData = null;
            setAdState(AdState.READY_TO_LOAD);
        }
    }

    private void reset() {
        if (canBeUsed()) {
            this.isPrepared = false;
            this.adTimer.cancelTimer();
            resetMetricsCollector();
            this.orientationFailureMetricRecorded = false;
            if (this.adContainer != null) {
                this.adContainer.destroy();
                this.adSdkBridgeList.clear();
                this.adContainer = null;
            }
            this.adData = null;
        }
    }

    public boolean canShowViews() {
        return getAdContainer().canShowViews();
    }

    public boolean prepareForAdLoad(long j, boolean z) {
        boolean z2;
        if (!canBeUsed()) {
            onRequestError("An ad could not be loaded because the view has been destroyed or was not created properly.");
            return false;
        } else if (!checkDefinedActivities()) {
            onRequestError("Ads cannot load unless \"com.amazon.device.ads.AdActivity\" is correctly declared as an activity in AndroidManifest.xml. Consult the online documentation for more info.");
            return false;
        } else if (!passesInternetPermissionCheck(this.context)) {
            onRequestError("Ads cannot load because the INTERNET permission is missing from the app's manifest.");
            return false;
        } else if (!isValidAppKey()) {
            onRequestError("Can't load an ad because Application Key has not been set. Did you forget to call AdRegistration.setAppKey( ... )?");
            return false;
        } else if (!getAdContainer().canShowViews()) {
            Metrics.getInstance().getMetricsCollector().incrementMetric(Metrics.MetricType.AD_FAILED_UNKNOWN_WEBVIEW_ISSUE);
            onRequestError("We will be unable to create a WebView for rendering an ad due to an unknown issue with the WebView.");
            return false;
        } else {
            if (!isReadyToLoad(z)) {
                if (getAdState().equals(AdState.RENDERED)) {
                    if (isExpired()) {
                        z2 = false;
                    } else {
                        this.logger.e(MSG_PREPARE_AD_READY_TO_SHOW);
                        z2 = true;
                    }
                } else if (getAdState().equals(AdState.EXPANDED)) {
                    this.logger.e("An ad could not be loaded because another ad is currently expanded.");
                    z2 = true;
                } else {
                    this.logger.e(MSG_PREPARE_AD_LOADING);
                    z2 = true;
                }
                if (z2) {
                    return false;
                }
            }
            reset();
            getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL, j);
            getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL_FAILURE, j);
            getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL_SUCCESS, j);
            getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START, j);
            setAdState(AdState.LOADING);
            this.isRendering.set(false);
            setHasFinishedLoading(false);
            this.adTimer.restartTimer();
            this.adTimer.scheduleTask(new TimerTask() { // from class: com.amazon.device.ads.AdController.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    AdController.this.onAdTimedOut();
                }
            }, getTimeout());
            this.infoStore.getDeviceInfo().populateUserAgentString(this.context);
            this.isPrepared = true;
            return true;
        }
    }

    public void initialize(String str) {
        if (canBeUsed()) {
            determineShouldForceDisableHardwareAcceleration();
            if (initializeAdContainer()) {
                calculateScalingMultiplier();
                Iterator<AAXCreative> it = this.adData.iterator();
                while (it.hasNext()) {
                    Set<AdSDKBridgeFactory> bridgeFactories = this.bridgeSelector.getBridgeFactories(it.next());
                    if (bridgeFactories != null) {
                        for (AdSDKBridgeFactory adSDKBridgeFactory : bridgeFactories) {
                            addAdSDKBridge(adSDKBridgeFactory.createAdSDKBridge(getAdControlAccessor()));
                        }
                    }
                }
                this.slotID = str;
                adLoaded();
            }
        }
    }

    private void addAdSDKBridge(AdSDKBridge adSDKBridge) {
        this.adSdkBridgeList.addBridge(adSDKBridge);
    }

    private void calculateScalingMultiplier() {
        if (!isInterstitial()) {
            float scalingFactorAsFloat = this.infoStore.getDeviceInfo().getScalingFactorAsFloat();
            this.scalingMultiplier = this.adUtils.calculateScalingMultiplier((int) (this.adData.getWidth() * scalingFactorAsFloat), (int) (scalingFactorAsFloat * this.adData.getHeight()), getWindowWidth(), getWindowHeight());
            int maxWidth = getAdSize().getMaxWidth();
            if (maxWidth > 0 && this.adData.getWidth() * this.scalingMultiplier > maxWidth) {
                this.scalingMultiplier = maxWidth / this.adData.getWidth();
            }
            if (!getAdSize().canUpscale() && this.scalingMultiplier > 1.0d) {
                this.scalingMultiplier = 1.0d;
            }
            setViewDimensionsToAdDimensions();
            return;
        }
        this.scalingMultiplier = -1.0d;
    }

    private void determineShouldForceDisableHardwareAcceleration() {
        if ((AndroidTargetUtils.isAndroidAPI(this.androidBuildInfo, 14) || AndroidTargetUtils.isAndroidAPI(this.androidBuildInfo, 15)) && this.adData.getCreativeTypes().contains(AAXCreative.REQUIRES_TRANSPARENCY)) {
            this.forceDisableHardwareAcceleration = true;
        } else {
            this.forceDisableHardwareAcceleration = false;
        }
    }

    boolean initializeAdContainer() {
        try {
            getAdContainer().initialize();
            return true;
        } catch (IllegalStateException e) {
            adFailed(new AdError(AdError.ErrorCode.INTERNAL_ERROR, "An unknown error occurred when attempting to create the web view."));
            setAdState(AdState.INVALID);
            this.logger.e("An unknown error occurred when attempting to create the web view.");
            return false;
        }
    }

    public void render() {
        if (canBeUsed()) {
            setAdState(AdState.RENDERING);
            long nanoTime = System.nanoTime();
            getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START, nanoTime);
            getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_RENDER, nanoTime);
            this.isRendering.set(true);
            loadHtml(this.configuration.getStringWithDefault(Configuration.ConfigOption.BASE_URL, "http://mads.amazon-adsystem.com/"), this.adData.getCreative());
        }
    }

    public void preloadHtml(String str, String str2, PreloadCallback preloadCallback) {
        loadHtml(str, str2, true, preloadCallback);
    }

    public void loadHtml(String str, String str2) {
        loadHtml(str, str2, false, null);
    }

    public void loadHtml(String str, String str2, boolean z, PreloadCallback preloadCallback) {
        getAdContainer().removePreviousInterfaces();
        clearSDKEventListeners();
        getAdContainer().loadHtml(str, this.adHtmlPreprocessor.preprocessHtml(str2, z), z, preloadCallback);
    }

    public void preloadUrl(String str, PreloadCallback preloadCallback) {
        this.adUrlLoader.loadUrl(str, true, preloadCallback);
    }

    public void loadUrl(String str) {
        this.adUrlLoader.loadUrl(str, false, null);
    }

    public void openUrl(String str) {
        this.adUrlLoader.openUrl(str);
    }

    public void setExpanded(boolean z) {
        if (z) {
            setAdState(AdState.EXPANDED);
        } else {
            setAdState(AdState.SHOWING);
        }
    }

    public void injectJavascript(final String str, final boolean z) {
        ThreadUtils.executeOnMainThread(new Runnable() { // from class: com.amazon.device.ads.AdController.2
            @Override // java.lang.Runnable
            public void run() {
                AdController.this.getAdContainer().injectJavascript(str, z);
            }
        });
    }

    public void destroy() {
        if (!canBeUsed()) {
            this.logger.e("The ad cannot be destroyed because it has already been destroyed.");
            return;
        }
        closeAd();
        this.adState = AdState.DESTROYED;
        if (this.adContainer != null) {
            getAdContainer().destroy();
            this.adSdkBridgeList.clear();
            this.adContainer = null;
        }
        this.isPrepared = false;
        this.metricsCollector = null;
        this.adData = null;
    }

    protected boolean passesInternetPermissionCheck(Context context) {
        return this.permissionChecker.hasInternetPermission(context);
    }

    public void onRequestError(String str) {
        this.logger.e(str);
        adFailed(new AdError(AdError.ErrorCode.REQUEST_ERROR, str));
    }

    public boolean isExpired() {
        return this.adData != null && this.adData.isExpired();
    }

    public boolean canBeUsed() {
        return !AdState.DESTROYED.equals(getAdState()) && !AdState.INVALID.equals(getAdState());
    }

    private boolean isReadyToLoad(boolean z) {
        return getAdControlCallback().isAdReady(z);
    }

    public boolean startAdDrawing() {
        this.adTimer.cancelTimer();
        return AdState.RENDERED.equals(getAdState()) && canExpireOrDraw(AdState.DRAWING);
    }

    private synchronized boolean canExpireOrDraw(AdState adState) {
        boolean z;
        if (AdState.RENDERED.compareTo(getAdState()) >= 0) {
            setAdState(adState);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public void adShown() {
        if (canBeUsed()) {
            getMetricsCollector().stopMetric(Metrics.MetricType.AD_SHOW_LATENCY);
            this.adTimer.cancelTimer();
            if (canFireImpressionPixel()) {
                this.webUtils.executeWebRequestInThread(getAdData().getImpressionPixelUrl(), false);
            }
            setAdState(AdState.SHOWING);
            if (!areWindowDimensionsSet()) {
                setWindowDimensions(getView().getWidth(), getView().getHeight());
            }
            fireSDKEvent(new SDKEvent(SDKEvent.SDKEventType.VISIBLE));
            this.viewabilityObserver.fireViewableEvent(false);
        }
    }

    private boolean canFireImpressionPixel() {
        return !getAdState().equals(AdState.HIDDEN);
    }

    public void adHidden() {
        setAdState(AdState.HIDDEN);
        fireSDKEvent(new SDKEvent(SDKEvent.SDKEventType.HIDDEN));
    }

    void onAdTimedOut() {
        if (this.debugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_CAN_TIMEOUT, true).booleanValue() && !getAndSetHasFinishedLoading(true)) {
            adFailedAfterTimerCheck(new AdError(AdError.ErrorCode.NETWORK_TIMEOUT, "Ad Load Timed Out"));
            setAdState(AdState.INVALID);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdExpired() {
        if (AdState.RENDERED.compareTo(getAdState()) >= 0 && canExpireOrDraw(AdState.INVALID)) {
            this.logger.d("Ad Has Expired");
            callOnAdExpired();
        }
    }

    private void callOnAdExpired() {
        ThreadUtils.scheduleOnMainThread(new Runnable() { // from class: com.amazon.device.ads.AdController.3
            @Override // java.lang.Runnable
            public void run() {
                AdController.this.getAdControlCallback().onAdExpired();
                AdController.this.submitAndResetMetricsIfNecessary(true);
            }
        });
    }

    public void adFailed(AdError adError) {
        if (canBeUsed() && !getAndSetHasFinishedLoading(true)) {
            this.adTimer.cancelTimer();
            adFailedAfterTimerCheck(adError);
            setAdState(AdState.READY_TO_LOAD);
        }
    }

    private void adFailedAfterTimerCheck(AdError adError) {
        if (getMetricsCollector() == null || getMetricsCollector().isMetricsCollectorEmpty()) {
            adFailedBeforeAdMetricsStart(adError);
        } else {
            adFailedAfterAdMetricsStart(adError);
        }
    }

    private void adLoaded() {
        if (canBeUsed()) {
            setAdState(AdState.LOADED);
            callOnAdLoaded(this.adData.getProperties());
        }
    }

    void adFailedBeforeAdMetricsStart(AdError adError) {
        callOnAdFailedToLoad(adError, false);
    }

    void adFailedAfterAdMetricsStart(AdError adError) {
        accumulateAdFailureMetrics(adError);
        callOnAdFailedToLoad(adError, true);
    }

    void accumulateAdFailureMetrics(AdError adError) {
        long nanoTime = System.nanoTime();
        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL, nanoTime);
        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE, nanoTime);
        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL_FAILURE, nanoTime);
        if (adError != null) {
            getMetricsCollector().incrementMetric(Metrics.MetricType.AD_LOAD_FAILED);
            switch (adError.getCode()) {
                case NO_FILL:
                    getMetricsCollector().incrementMetric(Metrics.MetricType.AD_LOAD_FAILED_NO_FILL);
                    break;
                case NETWORK_TIMEOUT:
                    getMetricsCollector().incrementMetric(Metrics.MetricType.AD_LOAD_FAILED_NETWORK_TIMEOUT);
                    if (this.isRendering.get()) {
                        getMetricsCollector().incrementMetric(Metrics.MetricType.AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT);
                        break;
                    } else {
                        getMetricsCollector().incrementMetric(Metrics.MetricType.AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT);
                        break;
                    }
                case INTERNAL_ERROR:
                    getMetricsCollector().incrementMetric(Metrics.MetricType.AD_LOAD_FAILED_INTERNAL_ERROR);
                    break;
            }
        }
        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_RENDER_FAILED, nanoTime);
        if (getAdState().equals(AdState.RENDERING)) {
            getMetricsCollector().incrementMetric(Metrics.MetricType.AD_COUNTER_RENDERING_FATAL);
        }
        setAdditionalMetrics();
    }

    public void adRendered(String str) {
        if (canBeUsed()) {
            this.logger.d("Ad Rendered");
            if (getAdState().equals(AdState.RENDERING)) {
                if (!getAndSetHasFinishedLoading(true)) {
                    this.isRendering.set(false);
                    this.adTimer.cancelTimer();
                    startExpirationTimer();
                    setAdState(AdState.RENDERED);
                    callOnAdRendered();
                    long nanoTime = System.nanoTime();
                    if (getMetricsCollector() != null) {
                        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_RENDER, nanoTime);
                        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL, nanoTime);
                        getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LATENCY_TOTAL_SUCCESS, nanoTime);
                        setAdditionalMetrics();
                        submitAndResetMetricsIfNecessary(true);
                    }
                    callPostAdRendered();
                }
            } else {
                this.logger.d("Ad State was not Rendering. It was " + getAdState());
            }
            fireSDKEvent(new SDKEvent(SDKEvent.SDKEventType.RENDERED).setParameter("url", str));
        }
    }

    private void startExpirationTimer() {
        long timeToExpire = getAdData().getTimeToExpire();
        if (timeToExpire > 0) {
            this.adTimer.restartTimer();
            this.adTimer.scheduleTask(new TimerTask() { // from class: com.amazon.device.ads.AdController.4
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    AdController.this.onAdExpired();
                }
            }, timeToExpire);
        }
    }

    void callOnAdFailedToLoad(final AdError adError, final boolean z) {
        ThreadUtils.scheduleOnMainThread(new Runnable() { // from class: com.amazon.device.ads.AdController.5
            @Override // java.lang.Runnable
            public void run() {
                AdController.this.getAdControlCallback().onAdFailed(adError);
                AdController.this.submitAndResetMetricsIfNecessary(z);
            }
        });
    }

    void callOnAdLoaded(final AdProperties adProperties) {
        ThreadUtils.scheduleOnMainThread(new Runnable() { // from class: com.amazon.device.ads.AdController.6
            @Override // java.lang.Runnable
            public void run() {
                if (AdController.this.canBeUsed()) {
                    AdController.this.getAdControlCallback().onAdLoaded(adProperties);
                }
            }
        });
    }

    void callOnAdRendered() {
        ThreadUtils.scheduleOnMainThread(new Runnable() { // from class: com.amazon.device.ads.AdController.7
            @Override // java.lang.Runnable
            public void run() {
                if (AdController.this.canBeUsed()) {
                    AdController.this.getAdControlCallback().onAdRendered();
                }
            }
        });
    }

    void callPostAdRendered() {
        ThreadUtils.scheduleOnMainThread(new Runnable() { // from class: com.amazon.device.ads.AdController.8
            @Override // java.lang.Runnable
            public void run() {
                if (AdController.this.canBeUsed()) {
                    AdController.this.getAdControlCallback().postAdRendered();
                }
            }
        });
    }

    void callOnAdEvent(final AdEvent adEvent) {
        ThreadUtils.scheduleOnMainThread(new Runnable() { // from class: com.amazon.device.ads.AdController.9
            @Override // java.lang.Runnable
            public void run() {
                if (AdController.this.canBeUsed()) {
                    AdController.this.getAdControlCallback().onAdEvent(adEvent);
                }
            }
        });
    }

    void setHasFinishedLoading(boolean z) {
        this.hasFinishedLoading.set(z);
    }

    boolean getAndSetHasFinishedLoading(boolean z) {
        return this.hasFinishedLoading.getAndSet(z);
    }

    public void fireAdEvent(AdEvent adEvent) {
        this.logger.d("Firing AdEvent of type %s", adEvent.getAdEventType());
        callOnAdEvent(adEvent);
    }

    public void fireSDKEvent(SDKEvent sDKEvent) {
        this.logger.d("Firing SDK Event of type %s", sDKEvent.getEventType());
        Iterator<SDKEventListener> it = this.sdkEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onSDKEvent(sDKEvent, getAdControlAccessor());
        }
    }

    public void fireViewableEvent() {
        this.viewabilityObserver.fireViewableEvent(false);
    }

    public boolean closeAd() {
        return this.adCloser.closeAd();
    }

    public void enableNativeCloseButton(boolean z, RelativePosition relativePosition) {
        getAdContainer().enableNativeCloseButton(z, relativePosition);
    }

    public void removeNativeCloseButton() {
        getAdContainer().removeNativeCloseButton();
    }

    public void showNativeCloseButtonImage(boolean z) {
        getAdContainer().showNativeCloseButtonImage(z);
    }

    protected void setAdditionalMetrics() {
        this.adUtils.setConnectionMetrics(getConnectionInfo(), getMetricsCollector());
        if (getWindowHeight() == 0) {
            getMetricsCollector().incrementMetric(Metrics.MetricType.ADLAYOUT_HEIGHT_ZERO);
        }
        getMetricsCollector().setMetricString(Metrics.MetricType.VIEWPORT_SCALE, getScalingMultiplierDescription());
    }

    public void submitAndResetMetrics() {
        Metrics.getInstance().submitAndResetMetrics(this);
    }

    public void submitAndResetMetricsIfNecessary(boolean z) {
        if (z) {
            submitAndResetMetrics();
        }
    }

    public void moveViewToViewGroup(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, boolean z) {
        ViewGroup viewParent = getViewParent();
        if (this.defaultParent == null) {
            this.defaultParent = viewParent;
        }
        if (viewParent != null) {
            viewParent.removeView(getView());
        }
        setViewDimensionsToMatchParent();
        viewGroup.addView(getView(), layoutParams);
        this.isModallyExpanded = z;
        setExpanded(true);
        if (this.isModallyExpanded) {
            captureBackButton();
        }
    }

    public void captureBackButton() {
        getAdContainer().listenForKey(new View.OnKeyListener() { // from class: com.amazon.device.ads.AdController.10
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (i == 4 && keyEvent.getRepeatCount() == 0) {
                    AdController.this.onBackButtonPress();
                    return true;
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onBackButtonPress() {
        if (this.backButtonOverridden) {
            fireSDKEvent(new SDKEvent(SDKEvent.SDKEventType.BACK_BUTTON_PRESSED));
            return true;
        }
        closeAd();
        return false;
    }

    ViewGroup getViewParent() {
        return (ViewGroup) getView().getParent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewGroup getViewParentIfExpanded() {
        if (this.defaultParent == null || this.defaultParent == getView().getParent()) {
            return null;
        }
        return getViewParent();
    }

    public void moveViewBackToParent(ViewGroup.LayoutParams layoutParams) {
        ViewGroup viewGroup = (ViewGroup) getView().getParent();
        if (viewGroup != null) {
            viewGroup.removeView(getView());
        }
        setViewDimensionsToAdDimensions();
        if (this.defaultParent != null) {
            this.defaultParent.addView(getView(), layoutParams);
        }
        getAdContainer().listenForKey(null);
        setExpanded(false);
    }

    boolean checkDefinedActivities() {
        return this.adUtils.checkDefinedActivities(getContext().getApplicationContext());
    }

    boolean isValidAppKey() {
        return this.infoStore.getRegistrationInfo().getAppKey() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Position getAdPosition() {
        int viewWidth = getViewWidth();
        int viewHeight = getViewHeight();
        if (viewWidth == 0 && viewHeight == 0) {
            viewWidth = getWindowWidth();
            viewHeight = getWindowHeight();
        }
        int pixelToDeviceIndependentPixel = this.adUtils.pixelToDeviceIndependentPixel(viewWidth);
        int pixelToDeviceIndependentPixel2 = this.adUtils.pixelToDeviceIndependentPixel(viewHeight);
        int[] iArr = new int[2];
        getAdContainer().getViewLocationOnScreen(iArr);
        View rootView = getRootView();
        if (rootView == null) {
            this.logger.w("Could not find the activity's root view while determining ad position.");
            return null;
        }
        int[] iArr2 = new int[2];
        rootView.getLocationOnScreen(iArr2);
        return new Position(new Size(pixelToDeviceIndependentPixel, pixelToDeviceIndependentPixel2), this.adUtils.pixelToDeviceIndependentPixel(iArr[0]), this.adUtils.pixelToDeviceIndependentPixel(iArr[1] - iArr2[1]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInterstitial() {
        return AdSize.SizeType.INTERSTITIAL.equals(this.adSize.getSizeType());
    }

    public Size getMaxExpandableSize() {
        View rootView = getRootView();
        if (rootView == null) {
            this.logger.w("Could not find the activity's root view while determining max expandable size.");
            return null;
        }
        return new Size(this.adUtils.pixelToDeviceIndependentPixel(rootView.getWidth()), this.adUtils.pixelToDeviceIndependentPixel(rootView.getHeight()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Size getScreenSize() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getMetrics(displayMetrics);
        return new Size(this.adUtils.pixelToDeviceIndependentPixel(displayMetrics.widthPixels), this.adUtils.pixelToDeviceIndependentPixel(displayMetrics.heightPixels));
    }

    void getMetrics(DisplayMetrics displayMetrics) {
        ((WindowManager) this.context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addJavascriptInterface(Object obj, boolean z, String str) {
        getAdContainer().addJavascriptInterface(obj, z, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reload() {
        getAdContainer().reload();
    }

    void putUrlExecutorInAdWebViewClient(String str, AdWebViewClient.UrlExecutor urlExecutor) {
        this.adUrlLoader.putUrlExecutorInAdWebViewClient(str, urlExecutor);
    }

    public void overrideBackButton(boolean z) {
        this.backButtonOverridden = z;
    }

    public void setAllowClicks(boolean z) {
        getAdContainer().setAllowClicks(z);
    }

    public void registerViewabilityInterest() {
        this.viewabilityObserver.registerViewabilityInterest();
    }

    public void deregisterViewabilityInterest() {
        this.viewabilityObserver.deregisterViewabilityInterest();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class DefaultAdControlCallback implements AdControlCallback {
        DefaultAdControlCallback() {
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public boolean isAdReady(boolean z) {
            AdController.this.logger.d("DefaultAdControlCallback isAdReady called");
            return AdController.this.getAdState().equals(AdState.READY_TO_LOAD) || AdController.this.getAdState().equals(AdState.SHOWING);
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdLoaded(AdProperties adProperties) {
            AdController.this.logger.d("DefaultAdControlCallback onAdLoaded called");
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdRendered() {
            AdController.this.logger.d("DefaultAdControlCallback onAdRendered called");
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void postAdRendered() {
            AdController.this.logger.d("DefaultAdControlCallback postAdRendered called");
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdFailed(AdError adError) {
            AdController.this.logger.d("DefaultAdControlCallback onAdFailed called");
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdEvent(AdEvent adEvent) {
            AdController.this.logger.d("DefaultAdControlCallback onAdEvent called");
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public int adClosing() {
            AdController.this.logger.d("DefaultAdControlCallback adClosing called");
            return 1;
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdExpired() {
            AdController.this.logger.d("DefaultAdControlCallback onAdExpired called");
        }
    }

    /* loaded from: classes.dex */
    private class AdControllerAdWebViewClientListener implements AdWebViewClient.AdWebViewClientListener {
        private AdControllerAdWebViewClientListener() {
        }

        @Override // com.amazon.device.ads.AdWebViewClient.AdWebViewClientListener
        public void onPageFinished(WebView webView, String str) {
            if (AdController.this.getAdContainer().isCurrentView(webView)) {
                AdController.this.adRendered(str);
            }
        }

        @Override // com.amazon.device.ads.AdWebViewClient.AdWebViewClientListener
        public void onPageStarted(WebView webView, String str) {
        }

        @Override // com.amazon.device.ads.AdWebViewClient.AdWebViewClientListener
        public void onLoadResource(WebView webView, String str) {
        }

        @Override // com.amazon.device.ads.AdWebViewClient.AdWebViewClientListener
        public void onReceivedError(WebView webView, int i, String str, String str2) {
        }
    }

    public boolean isViewable() {
        return this.viewabilityObserver.isViewable();
    }

    public void addOnGlobalLayoutListener(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.adContainer.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public void removeOnGlobalLayoutListener(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (this.adContainer != null) {
            this.viewUtils.removeOnGlobalLayoutListener(this.adContainer.getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    public View getRootView() {
        return getAdContainer().getRootView().findViewById(16908290);
    }

    public String getSlotID() {
        return this.slotID;
    }
}
