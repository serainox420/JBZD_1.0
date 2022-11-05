package com.amazon.device.ads;

import android.content.Context;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdProperties;
import com.amazon.device.ads.Metrics;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class InterstitialAd implements Ad {
    protected static final String ACTION_INTERSTITIAL_DISMISSED = "dismissed";
    protected static final String ACTION_INTERSTITIAL_FINISHED_LOADING = "finished";
    protected static final String BROADCAST_ACTION = "action";
    protected static final String BROADCAST_CREATIVE = "creative";
    protected static final String BROADCAST_INTENT = "amazon.mobile.ads.interstitial";
    protected static final String BROADCAST_UNIQUE_IDENTIFIER_KEY = "uniqueIdentifier";
    protected static final String MSG_PREPARE_AD_DESTROYED = "This interstitial ad has been destroyed and can no longer be used. Create a new InterstitialAd object to load a new ad.";
    protected static final String MSG_PREPARE_AD_LOADING = "An interstitial ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad.";
    protected static final String MSG_PREPARE_AD_READY_TO_SHOW = "An interstitial ad is ready to show. Please call showAd() to show the ad before loading another ad.";
    protected static final String MSG_PREPARE_AD_SHOWING = "An interstitial ad is currently showing. Please wait for the user to dismiss the ad before loading an ad.";
    protected static final String MSG_SHOW_AD_ANOTHER_SHOWING = "Another interstitial ad is currently showing. Please wait for the InterstitialAdListener.onAdDismissed callback of the other ad.";
    protected static final String MSG_SHOW_AD_DESTROYED = "The interstitial ad cannot be shown because it has been destroyed. Create a new InterstitialAd object to load a new ad.";
    protected static final String MSG_SHOW_AD_DISMISSED = "The interstitial ad cannot be shown because it has already been displayed to the user. Please call loadAd(AdTargetingOptions) to load a new ad.";
    protected static final String MSG_SHOW_AD_EXPIRED = "This interstitial ad has expired. Please load another ad.";
    protected static final String MSG_SHOW_AD_LOADING = "The interstitial ad cannot be shown because it is still loading. Please wait for the AdListener.onAdLoaded() callback before showing the ad.";
    protected static final String MSG_SHOW_AD_READY_TO_LOAD = "The interstitial ad cannot be shown because it has not loaded successfully. Please call loadAd(AdTargetingOptions) to load an ad first.";
    protected static final String MSG_SHOW_AD_SHOWING = "The interstitial ad cannot be shown because it is already displayed on the screen. Please wait for the InterstitialAdListener.onAdDismissed() callback and then load a new ad.";
    private AdController adController;
    private final AdControllerFactory adControllerFactory;
    private AdListenerExecutor adListenerExecutor;
    private final AdListenerExecutorFactory adListenerExecutorFactory;
    private final AdLoadStarter adLoadStarter;
    private final AdRegistrationExecutor adRegistration;
    private final Context context;
    private final IntentBuilderFactory intentBuilderFactory;
    private boolean isInitialized;
    private boolean isThisAdShowing;
    private final MobileAdsLogger logger;
    private final MobileAdsLoggerFactory loggerFactory;
    private final AtomicBoolean previousAdExpired;
    private int timeout;
    private static final String LOGTAG = InterstitialAd.class.getSimpleName();
    private static final AtomicBoolean isAdShowing = new AtomicBoolean(false);

    public InterstitialAd(Context context) {
        this(context, new MobileAdsLoggerFactory(), new AdControllerFactory(), new IntentBuilderFactory(), AdRegistration.getAmazonAdRegistrationExecutor(), new AdLoadStarter());
    }

    InterstitialAd(Context context, MobileAdsLoggerFactory mobileAdsLoggerFactory, AdControllerFactory adControllerFactory, IntentBuilderFactory intentBuilderFactory, AdRegistrationExecutor adRegistrationExecutor, AdLoadStarter adLoadStarter) {
        this(context, mobileAdsLoggerFactory, new AdListenerExecutorFactory(mobileAdsLoggerFactory), adControllerFactory, intentBuilderFactory, adRegistrationExecutor, adLoadStarter);
    }

    InterstitialAd(Context context, MobileAdsLoggerFactory mobileAdsLoggerFactory, AdListenerExecutorFactory adListenerExecutorFactory, AdControllerFactory adControllerFactory, IntentBuilderFactory intentBuilderFactory, AdRegistrationExecutor adRegistrationExecutor, AdLoadStarter adLoadStarter) {
        this.isThisAdShowing = false;
        this.timeout = 20000;
        this.isInitialized = false;
        this.previousAdExpired = new AtomicBoolean(false);
        if (context == null) {
            throw new IllegalArgumentException("InterstitialAd requires a non-null Context");
        }
        this.context = context;
        this.loggerFactory = mobileAdsLoggerFactory;
        this.logger = this.loggerFactory.createMobileAdsLogger(LOGTAG);
        this.adListenerExecutorFactory = adListenerExecutorFactory;
        this.adControllerFactory = adControllerFactory;
        this.intentBuilderFactory = intentBuilderFactory;
        this.adRegistration = adRegistrationExecutor;
        this.adLoadStarter = adLoadStarter;
    }

    private void initializeIfNecessary() {
        if (!isInitialized()) {
            this.isInitialized = true;
            this.adRegistration.initializeAds(this.context.getApplicationContext());
            if (this.adListenerExecutor == null) {
                setListener(null);
            }
            initializeAdController();
            setAdditionalMetrics();
        }
    }

    private void initializeAdController() {
        setAdController(createAdController(this.context));
    }

    private boolean isInitialized() {
        return this.isInitialized;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdController getAdController() {
        initializeIfNecessary();
        if (this.adController == null) {
            initializeAdController();
        }
        return this.adController;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void resetIsAdShowing() {
        isAdShowing.set(false);
    }

    @Override // com.amazon.device.ads.Ad
    public void setListener(AdListener adListener) {
        if (adListener == null) {
            adListener = new DefaultAdListener(LOGTAG);
        }
        this.adListenerExecutor = this.adListenerExecutorFactory.createAdListenerExecutor(adListener);
    }

    @Override // com.amazon.device.ads.Ad
    public boolean loadAd() {
        return loadAd(null);
    }

    @Override // com.amazon.device.ads.Ad
    public boolean loadAd(AdTargetingOptions adTargetingOptions) {
        didAdActivityFail();
        if (!isReadyToLoad()) {
            switch (getAdController().getAdState()) {
                case RENDERED:
                    this.logger.w(MSG_PREPARE_AD_READY_TO_SHOW);
                    return false;
                case SHOWING:
                    this.logger.w(MSG_PREPARE_AD_SHOWING);
                    return false;
                case INVALID:
                    if (getAdController().isExpired()) {
                        getAdController().resetToReady();
                        return loadAd(adTargetingOptions);
                    }
                    this.logger.e("An interstitial ad could not be loaded because of an unknown issue with the web views.");
                    return false;
                case DESTROYED:
                    this.logger.e("An interstitial ad could not be loaded because the view has been destroyed.");
                    return false;
                default:
                    this.logger.w(MSG_PREPARE_AD_LOADING);
                    return false;
            }
        }
        this.previousAdExpired.set(false);
        this.adLoadStarter.loadAds(getTimeout(), adTargetingOptions, new AdSlot(getAdController(), adTargetingOptions));
        return getAdController().getAndResetIsPrepared();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MetricsCollector getMetricsCollector() {
        return getAdController().getMetricsCollector();
    }

    public static boolean isAdShowing() {
        return isAdShowing.get();
    }

    @Override // com.amazon.device.ads.Ad
    public boolean isLoading() {
        return getAdController().getAdState().equals(AdState.LOADING) || getAdController().getAdState().equals(AdState.LOADED) || getAdController().getAdState().equals(AdState.RENDERING);
    }

    public boolean isShowing() {
        return getAdController().getAdState().equals(AdState.SHOWING);
    }

    boolean isReadyToLoad() {
        return getAdController().getAdState().equals(AdState.READY_TO_LOAD);
    }

    boolean isReadyToShow() {
        return getAdController().getAdState().equals(AdState.RENDERED);
    }

    public boolean isReady() {
        return isReadyToShow() && !getAdController().isExpired();
    }

    boolean didAdActivityFail() {
        boolean z = this.isThisAdShowing && !isAdShowing.get();
        if (z) {
            getMetricsCollector().incrementMetric(Metrics.MetricType.INTERSTITIAL_AD_ACTIVITY_FAILED);
            getAdController().closeAd();
        }
        return z;
    }

    public boolean showAd() {
        if (didAdActivityFail()) {
            this.logger.e("The ad could not be shown because it previously failed to show. Please load a new ad.");
            return false;
        } else if (this.previousAdExpired.get()) {
            this.logger.w(MSG_SHOW_AD_EXPIRED);
            return false;
        } else {
            long nanoTime = System.nanoTime();
            if (isReadyToShow()) {
                if (getAdController().isExpired()) {
                    this.logger.w(MSG_SHOW_AD_EXPIRED);
                    return false;
                } else if (isAdShowing.getAndSet(true)) {
                    this.logger.w(MSG_SHOW_AD_ANOTHER_SHOWING);
                    return false;
                } else if (getAdController().startAdDrawing()) {
                    this.isThisAdShowing = true;
                    getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LOADED_TO_AD_SHOW_TIME, nanoTime);
                    getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_SHOW_DURATION, nanoTime);
                    AdControllerFactory.cacheAdController(getAdController());
                    getMetricsCollector().startMetric(Metrics.MetricType.AD_SHOW_LATENCY);
                    boolean showAdInActivity = showAdInActivity();
                    if (!showAdInActivity) {
                        clearCachedAdController();
                        getAdController().resetToReady();
                        isAdShowing.set(false);
                        this.isThisAdShowing = false;
                        getMetricsCollector().stopMetric(Metrics.MetricType.AD_LATENCY_RENDER_FAILED);
                    }
                    return showAdInActivity;
                } else {
                    this.logger.w("Interstitial ad could not be shown.");
                    return false;
                }
            } else if (isReadyToLoad()) {
                this.logger.w(MSG_SHOW_AD_READY_TO_LOAD);
                return false;
            } else if (isLoading()) {
                this.logger.w(MSG_SHOW_AD_LOADING);
                return false;
            } else if (isShowing()) {
                this.logger.w(MSG_SHOW_AD_SHOWING);
                return false;
            } else {
                this.logger.w("An interstitial ad is not ready to show.");
                return false;
            }
        }
    }

    private void clearCachedAdController() {
        AdControllerFactory.removeCachedAdController();
    }

    boolean showAdInActivity() {
        boolean fireIntent = this.intentBuilderFactory.createIntentBuilder().withClass(AdActivity.class).withContext(this.context.getApplicationContext()).withExtra("adapter", InterstitialAdActivityAdapter.class.getName()).fireIntent();
        if (!fireIntent) {
            this.logger.e("Failed to show the interstitial ad because AdActivity could not be found.");
        }
        return fireIntent;
    }

    AdController createAdController(Context context) {
        return this.adControllerFactory.buildAdController(context, AdSize.SIZE_INTERSTITIAL);
    }

    private void setAdController(AdController adController) {
        this.adController = adController;
        adController.setCallback(constructAdControlCallback());
    }

    AdControlCallback constructAdControlCallback() {
        return new InterstitialAdControlCallback();
    }

    void handleDismissed() {
        getMetricsCollector().stopMetric(Metrics.MetricType.AD_SHOW_DURATION);
        AdControllerFactory.removeCachedAdController();
        isAdShowing.set(false);
        this.isThisAdShowing = false;
        callOnAdDismissedOnMainThread();
    }

    @Override // com.amazon.device.ads.Ad
    public int getTimeout() {
        return this.timeout;
    }

    @Override // com.amazon.device.ads.Ad
    public void setTimeout(int i) {
        this.timeout = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callOnAdLoaded(AdProperties adProperties) {
        this.adListenerExecutor.onAdLoaded(this, adProperties);
    }

    void callOnAdLoadedOnMainThread(final AdProperties adProperties) {
        ThreadUtils.executeOnMainThread(new Runnable() { // from class: com.amazon.device.ads.InterstitialAd.1
            @Override // java.lang.Runnable
            public void run() {
                InterstitialAd.this.callOnAdLoaded(adProperties);
            }
        });
    }

    void callOnAdFailedToLoad(AdError adError) {
        this.adListenerExecutor.onAdFailedToLoad(this, adError);
    }

    void callOnAdFailedOnMainThread(final AdError adError) {
        ThreadUtils.executeOnMainThread(new Runnable() { // from class: com.amazon.device.ads.InterstitialAd.2
            @Override // java.lang.Runnable
            public void run() {
                InterstitialAd.this.callOnAdFailedToLoad(adError);
            }
        });
    }

    void callOnAdDismissed() {
        this.adListenerExecutor.onAdDismissed(this);
    }

    void callOnAdDismissedOnMainThread() {
        ThreadUtils.executeOnMainThread(new Runnable() { // from class: com.amazon.device.ads.InterstitialAd.3
            @Override // java.lang.Runnable
            public void run() {
                InterstitialAd.this.callOnAdDismissed();
                InterstitialAd.this.submitAndResetMetrics();
            }
        });
    }

    void callOnAdExpiredOnMainThread() {
        ThreadUtils.executeOnMainThread(new Runnable() { // from class: com.amazon.device.ads.InterstitialAd.4
            @Override // java.lang.Runnable
            public void run() {
                InterstitialAd.this.callOnAdExpired();
            }
        });
    }

    void callOnAdExpired() {
        this.adListenerExecutor.onAdExpired(this);
    }

    void submitAndResetMetrics() {
        if (getMetricsCollector() != null && !getMetricsCollector().isMetricsCollectorEmpty()) {
            setAdditionalMetrics();
            getAdController().submitAndResetMetricsIfNecessary(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdditionalMetrics() {
        getMetricsCollector().setAdTypeMetricTag(AdProperties.AdType.INTERSTITIAL.getAdTypeMetricTag());
        getMetricsCollector().incrementMetric(Metrics.MetricType.AD_IS_INTERSTITIAL);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class InterstitialAdControlCallback implements AdControlCallback {
        private AdProperties adProperties;

        InterstitialAdControlCallback() {
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdLoaded(AdProperties adProperties) {
            this.adProperties = adProperties;
            InterstitialAd.this.setAdditionalMetrics();
            InterstitialAd.this.getAdController().enableNativeCloseButton(true, RelativePosition.TOP_RIGHT);
            InterstitialAd.this.getAdController().render();
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdRendered() {
            InterstitialAd.this.callOnAdLoadedOnMainThread(this.adProperties);
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdFailed(AdError adError) {
            if (AdError.ErrorCode.NETWORK_TIMEOUT.equals(adError.getCode())) {
                InterstitialAd.this.adController = null;
            }
            InterstitialAd.this.callOnAdFailedOnMainThread(adError);
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdEvent(AdEvent adEvent) {
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public boolean isAdReady(boolean z) {
            return InterstitialAd.this.isReadyToLoad();
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public int adClosing() {
            InterstitialAd.this.handleDismissed();
            return 1;
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void postAdRendered() {
            InterstitialAd.this.getMetricsCollector().startMetric(Metrics.MetricType.AD_LOADED_TO_AD_SHOW_TIME);
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdExpired() {
            InterstitialAd.this.getMetricsCollector().incrementMetric(Metrics.MetricType.AD_EXPIRED_BEFORE_SHOWING);
            InterstitialAd.this.previousAdExpired.set(true);
            InterstitialAd.this.adController = null;
            InterstitialAd.this.callOnAdExpiredOnMainThread();
        }
    }
}
