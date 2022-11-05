package com.amazon.device.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdProperties;
import com.amazon.device.ads.Metrics;
import com.amazon.device.ads.SDKEvent;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class ModelessInterstitialAd implements Ad {
    private static final String LOGTAG = ModelessInterstitialAd.class.getSimpleName();
    private static final int MIN_PIXELS = 380;
    private static final double MIN_SCREEN_COVERAGE_PERCENTAGE = 0.75d;
    private static final String PUBLISHER_KEYWORD = "modeless-interstitial";
    private AdController adController;
    private final AdControllerFactory adControllerFactory;
    private AdListenerExecutor adListenerExecutor;
    private final AdListenerExecutorFactory adListenerExecutorFactory;
    private final AdLoadStarter adLoadStarter;
    private AdProperties adProperties;
    private final AdRegistrationExecutor amazonAdRegistration;
    private final Context context;
    private final ViewGroup hostedViewGroup;
    private final MobileAdsLogger logger;
    private final MobileAdsLoggerFactory loggerFactory;
    private MetricsCollector metricsCollector;
    private final AtomicBoolean previousAdExpired;
    private int timeout;

    public ModelessInterstitialAd(ViewGroup viewGroup) {
        this(viewGroup, AdRegistration.getAmazonAdRegistrationExecutor(), new AdControllerFactory(), new MobileAdsLoggerFactory(), new AdLoadStarter());
    }

    ModelessInterstitialAd(ViewGroup viewGroup, AdRegistrationExecutor adRegistrationExecutor, AdControllerFactory adControllerFactory, MobileAdsLoggerFactory mobileAdsLoggerFactory, AdLoadStarter adLoadStarter) {
        this(viewGroup, adRegistrationExecutor, adControllerFactory, mobileAdsLoggerFactory, new AdListenerExecutorFactory(mobileAdsLoggerFactory), adLoadStarter);
    }

    ModelessInterstitialAd(ViewGroup viewGroup, AdRegistrationExecutor adRegistrationExecutor, AdControllerFactory adControllerFactory, MobileAdsLoggerFactory mobileAdsLoggerFactory, AdListenerExecutorFactory adListenerExecutorFactory, AdLoadStarter adLoadStarter) {
        this.previousAdExpired = new AtomicBoolean(false);
        if (viewGroup == null) {
            throw new IllegalArgumentException("The hostedViewGroup must not be null.");
        }
        this.hostedViewGroup = viewGroup;
        this.context = this.hostedViewGroup.getContext();
        this.amazonAdRegistration = adRegistrationExecutor;
        this.adControllerFactory = adControllerFactory;
        this.loggerFactory = mobileAdsLoggerFactory;
        this.logger = this.loggerFactory.createMobileAdsLogger(LOGTAG);
        this.adListenerExecutorFactory = adListenerExecutorFactory;
        this.adLoadStarter = adLoadStarter;
        initialize();
    }

    @Override // com.amazon.device.ads.Ad
    public void setListener(AdListener adListener) {
        if (adListener == null) {
            adListener = new DefaultAdListener(LOGTAG);
        }
        this.adListenerExecutor = this.adListenerExecutorFactory.createAdListenerExecutor(adListener);
    }

    @Override // com.amazon.device.ads.Ad
    public boolean loadAd(AdTargetingOptions adTargetingOptions) {
        if (!isReadyToLoad()) {
            switch (this.adController.getAdState()) {
                case LOADING:
                case LOADED:
                case RENDERING:
                    this.logger.w("The modeless interstitial ad is already loading. Please wait for the loading operation to complete.");
                    break;
                case RENDERED:
                    this.logger.w("The modeless interstitial ad has already been loaded. Please call adShown once the ad is shown.");
                    break;
                case INVALID:
                    if (this.adController.isExpired()) {
                        this.adController.resetToReady();
                        return loadAd(adTargetingOptions);
                    }
                    this.logger.e("The modeless interstitial ad could not be loaded because of an unknown issue with the web views.");
                    break;
                case DESTROYED:
                    this.logger.e("The modeless interstitial ad has been destroyed. Please create a new ModelessInterstitialAd.");
                    break;
            }
            this.metricsCollector.incrementMetric(Metrics.MetricType.AD_LOAD_FAILED);
            return false;
        }
        this.previousAdExpired.set(false);
        AdTargetingOptions adTargetingOptions2 = adTargetingOptions == null ? new AdTargetingOptions() : adTargetingOptions.copy();
        adTargetingOptions2.addInternalPublisherKeyword(PUBLISHER_KEYWORD);
        submitMetrics();
        this.adLoadStarter.loadAds(this.timeout, adTargetingOptions2, new AdSlot(this.adController, adTargetingOptions2));
        return this.adController.getAndResetIsPrepared();
    }

    @Override // com.amazon.device.ads.Ad
    public boolean loadAd() {
        return loadAd(null);
    }

    @Override // com.amazon.device.ads.Ad
    public boolean isLoading() {
        AdState adState = this.adController.getAdState();
        return adState.equals(AdState.LOADING) || adState.equals(AdState.LOADED) || adState.equals(AdState.RENDERING);
    }

    @Override // com.amazon.device.ads.Ad
    public int getTimeout() {
        return this.timeout;
    }

    @Override // com.amazon.device.ads.Ad
    public void setTimeout(int i) {
        this.timeout = i;
    }

    public boolean adShown() {
        AdState adState = this.adController.getAdState();
        if (this.previousAdExpired.get() || (!adState.equals(AdState.HIDDEN) && this.adController.isExpired())) {
            this.logger.e("The ad is unable to be shown because it has expired.");
            this.metricsCollector.stopMetric(Metrics.MetricType.AD_LOADED_TO_AD_SHOW_TIME);
            this.metricsCollector.incrementMetric(Metrics.MetricType.EXPIRED_AD_CALL);
        } else if (adState.equals(AdState.LOADING)) {
            this.logger.w("The adShown call failed because the ad cannot be shown until it has completed loading.");
        } else if (adState.equals(AdState.SHOWING)) {
            this.logger.w("The adShown call failed because adShown was previously called on this ad.");
        } else if (adState.equals(AdState.RENDERED) || adState.equals(AdState.HIDDEN)) {
            if (adState.equals(AdState.RENDERED)) {
                this.metricsCollector.stopMetric(Metrics.MetricType.AD_LOADED_TO_AD_SHOW_TIME);
            }
            Position adPosition = this.adController.getAdPosition();
            if (adPosition != null) {
                Size size = adPosition.getSize();
                Size screenSize = this.adController.getScreenSize();
                if (doesAdSizeHaveOneSideWithAtLeastMinPixels(size) && isAdOnScreen(adPosition, screenSize) && doesAdSizeMeetRequiredScreenPercentage(size, screenSize)) {
                    checkIfAdAspectRatioLessThanScreenAspectRatio(size, screenSize);
                    if (this.adController.getAdState().equals(AdState.HIDDEN)) {
                        this.metricsCollector.incrementMetric(Metrics.MetricType.AD_COUNTER_RESHOWN);
                    }
                    setRenderedViewClickable(true);
                    this.adController.adShown();
                    this.metricsCollector.startMetric(Metrics.MetricType.AD_SHOW_DURATION);
                    return true;
                }
                this.metricsCollector.incrementMetric(Metrics.MetricType.RENDER_REQUIREMENT_CHECK_FAILURE);
            }
        } else {
            this.logger.w("The adShown call failed because the ad is not in a state to be shown. The ad is currently in the %s state.", adState);
        }
        return false;
    }

    public void adHidden() {
        AdState adState = this.adController.getAdState();
        if (adState.equals(AdState.HIDDEN)) {
            this.logger.d("The ad is already hidden from view.");
        } else if (adState.equals(AdState.SHOWING)) {
            this.adController.getMetricsCollector().stopMetric(Metrics.MetricType.AD_SHOW_DURATION);
            setRenderedViewClickable(false);
            this.adController.adHidden();
        } else {
            this.logger.w("The ad must be shown before it can be hidden.");
        }
    }

    public void destroy() {
        this.logger.d("Destroying the Modeless Interstitial Ad");
        if (this.adController.getAdState().equals(AdState.SHOWING)) {
            adHidden();
        }
        submitMetrics();
        this.adController.destroy();
    }

    public boolean isReady() {
        return this.adController.getAdState().equals(AdState.RENDERED) && !this.adController.isExpired();
    }

    private void initialize() {
        this.amazonAdRegistration.initializeAds(this.context.getApplicationContext());
        setListener(null);
        buildAdController();
    }

    private void buildAdController() {
        this.adController = this.adControllerFactory.buildAdController(this.context, AdSize.SIZE_MODELESS_INTERSTITIAL);
        this.adController.setCallback(new ModelessInterstitialAdControlCallback());
        this.metricsCollector = this.adController.getMetricsCollector();
        this.metricsCollector.setAdTypeMetricTag(AdProperties.AdType.MODELESS_INTERSTITIAL.getAdTypeMetricTag());
        this.metricsCollector.incrementMetric(Metrics.MetricType.AD_IS_INTERSTITIAL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdFailedToLoadOrRender(AdError adError) {
        if (adError.getCode().equals(AdError.ErrorCode.NETWORK_TIMEOUT)) {
            submitMetrics();
            buildAdController();
        }
        this.adListenerExecutor.onAdFailedToLoad(this, adError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdFetched(AdProperties adProperties) {
        this.adProperties = adProperties;
        this.adController.render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdRendered() {
        this.hostedViewGroup.addView(this.adController.getView());
        setRenderedViewClickable(false);
        this.adListenerExecutor.onAdLoaded(this, this.adProperties);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isReadyToLoad() {
        AdState adState = this.adController.getAdState();
        return this.adController.isExpired() || adState.equals(AdState.READY_TO_LOAD) || adState.equals(AdState.HIDDEN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdRenderMetricsRecorded() {
        this.metricsCollector.startMetric(Metrics.MetricType.AD_LOADED_TO_AD_SHOW_TIME);
        this.adController.fireSDKEvent(new SDKEvent(SDKEvent.SDKEventType.PLACED));
    }

    private void setRenderedViewClickable(boolean z) {
        this.adController.setAllowClicks(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdExpired() {
        this.metricsCollector.incrementMetric(Metrics.MetricType.AD_EXPIRED_BEFORE_SHOWING);
        this.previousAdExpired.set(true);
        buildAdController();
        this.adListenerExecutor.onAdExpired(this);
    }

    private void submitMetrics() {
        if (!this.adController.getMetricsCollector().isMetricsCollectorEmpty()) {
            this.adController.submitAndResetMetrics();
        }
    }

    private boolean doesAdSizeHaveOneSideWithAtLeastMinPixels(Size size) {
        if (size.getHeight() >= MIN_PIXELS || size.getWidth() >= MIN_PIXELS) {
            return true;
        }
        this.logger.e("This ModelessInterstitialAd cannot fire impression pixels or receive clicks because the height %d and width %d does not meet the requirement of one side being at least %d device independent pixels.", Integer.valueOf(size.getHeight()), Integer.valueOf(size.getWidth()), Integer.valueOf((int) MIN_PIXELS));
        return false;
    }

    private boolean isAdOnScreen(Position position, Size size) {
        if (position.getX() >= 0 && position.getX() + position.getSize().getWidth() <= size.getWidth() && position.getY() >= 0 && position.getY() + position.getSize().getHeight() <= size.getHeight()) {
            return true;
        }
        this.logger.e("This ModelessInterstitialAd cannot fire impression pixels or receive clicks because it does not meet the requirement of being fully on screen.");
        return false;
    }

    private boolean doesAdSizeMeetRequiredScreenPercentage(Size size, Size size2) {
        double height = (size.getHeight() * size.getWidth()) / (size2.getHeight() * size2.getWidth());
        if (height >= MIN_SCREEN_COVERAGE_PERCENTAGE) {
            return true;
        }
        this.logger.e("This ModelessInterstitialAd cannot fire impression pixels or receive clicks because it has a screen coverage percentage of %f which does not meet the requirement of covering at least %d percent.", Double.valueOf(height * 100.0d), 75);
        return false;
    }

    private void checkIfAdAspectRatioLessThanScreenAspectRatio(Size size, Size size2) {
        boolean z = true;
        float width = size.getWidth();
        float height = size.getHeight();
        float width2 = size2.getWidth();
        float height2 = size2.getHeight();
        if (width <= height) {
            if (width / height >= width2 / height2) {
                z = false;
            }
        } else if (height / width >= height2 / width2) {
            z = false;
        }
        if (z) {
            this.metricsCollector.incrementMetric(Metrics.MetricType.AD_ASPECT_RATIO_LESS_THAN_SCREEN_ASPECT_RATIO);
            this.logger.w("For an optimal ad experience, the aspect ratio of the ModelessInterstitialAd should be greater than or equal to the aspect ratio of the screen.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ModelessInterstitialAdControlCallback implements AdControlCallback {
        private ModelessInterstitialAdControlCallback() {
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public boolean isAdReady(boolean z) {
            return ModelessInterstitialAd.this.isReadyToLoad();
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdLoaded(AdProperties adProperties) {
            ModelessInterstitialAd.this.onAdFetched(adProperties);
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdRendered() {
            ModelessInterstitialAd.this.onAdRendered();
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void postAdRendered() {
            ModelessInterstitialAd.this.onAdRenderMetricsRecorded();
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdFailed(AdError adError) {
            ModelessInterstitialAd.this.onAdFailedToLoadOrRender(adError);
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdEvent(AdEvent adEvent) {
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public int adClosing() {
            return 2;
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdExpired() {
            ModelessInterstitialAd.this.onAdExpired();
        }
    }
}
