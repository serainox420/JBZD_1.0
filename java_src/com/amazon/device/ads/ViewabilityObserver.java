package com.amazon.device.ads;

import android.annotation.TargetApi;
import android.view.ViewTreeObserver;
import com.amazon.device.ads.Configuration;
import com.amazon.device.ads.SDKEvent;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ViewabilityObserver {
    public static final String IS_VIEWABLE_KEY = "IS_VIEWABLE";
    private static final String LOGTAG = ViewabilityObserver.class.getSimpleName();
    private static long VIEWABLE_INTERVAL = 200;
    public static final String VIEWABLE_PARAMS_KEY = "VIEWABLE_PARAMS";
    private final AdController adController;
    private final Configuration configuration;
    private final DebugProperties debugProperties;
    private boolean firedOnlyOnce;
    private final AtomicBoolean isScrollListenerAdded;
    private long lastTimeViewableEventFired;
    private final MobileAdsLogger logger;
    private boolean observersAdded;
    private final ViewTreeObserver.OnGlobalFocusChangeListener onGlobalFocusChangeListener;
    private final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
    private final ViewTreeObserver.OnScrollChangedListener onScrollChangedListener;
    private ViewTreeObserver.OnWindowFocusChangeListener onWindowFocusChangeListener;
    private ViewTreeObserver viewTreeObserver;
    private final ViewUtils viewUtils;
    private final ViewabilityChecker viewabilityChecker;
    private final AtomicInteger viewabilityInterestCount;

    public ViewabilityObserver(AdController adController) {
        this(adController, new ViewabilityCheckerFactory(), new MobileAdsLoggerFactory(), new AmazonOnGlobalFocusChangeListenerFactory(), new AmazonOnGlobalLayoutListenerFactory(), new AmazonOnScrollChangedListenerFactory(), new AmazonOnWindowFocusChangeListenerFactory(), new AtomicInteger(0), new AtomicBoolean(false), new ViewUtils(), DebugProperties.getInstance(), Configuration.getInstance());
    }

    ViewabilityObserver(AdController adController, ViewabilityCheckerFactory viewabilityCheckerFactory, MobileAdsLoggerFactory mobileAdsLoggerFactory, AmazonOnGlobalFocusChangeListenerFactory amazonOnGlobalFocusChangeListenerFactory, AmazonOnGlobalLayoutListenerFactory amazonOnGlobalLayoutListenerFactory, AmazonOnScrollChangedListenerFactory amazonOnScrollChangedListenerFactory, AmazonOnWindowFocusChangeListenerFactory amazonOnWindowFocusChangeListenerFactory, AtomicInteger atomicInteger, AtomicBoolean atomicBoolean, ViewUtils viewUtils, DebugProperties debugProperties, Configuration configuration) {
        this.firedOnlyOnce = false;
        this.observersAdded = false;
        this.lastTimeViewableEventFired = 0L;
        this.adController = adController;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.viewabilityChecker = viewabilityCheckerFactory.buildViewabilityChecker(this.adController);
        this.onGlobalFocusChangeListener = amazonOnGlobalFocusChangeListenerFactory.buildAmazonOnGlobalFocusChangedListener(this);
        this.onGlobalLayoutListener = amazonOnGlobalLayoutListenerFactory.buildAmazonOnGlobalLayoutListener(this);
        this.onScrollChangedListener = amazonOnScrollChangedListenerFactory.buildAmazonOnScrollChangedListenerFactory(this);
        if (AndroidTargetUtils.isAtLeastAndroidAPI(18)) {
            this.onWindowFocusChangeListener = amazonOnWindowFocusChangeListenerFactory.buildOnWindowFocusChangeListener(this);
        }
        this.viewabilityInterestCount = atomicInteger;
        this.isScrollListenerAdded = atomicBoolean;
        this.viewUtils = viewUtils;
        this.debugProperties = debugProperties;
        this.configuration = configuration;
        VIEWABLE_INTERVAL = this.debugProperties.getDebugPropertyAsLong(DebugProperties.DEBUG_VIEWABLE_INTERVAL, Long.valueOf(this.configuration.getLongWithDefault(Configuration.ConfigOption.VIEWABLE_INTERVAL, 200L))).longValue();
        this.logger.d("Viewable Interval is: %d", Long.valueOf(VIEWABLE_INTERVAL));
    }

    public void registerViewabilityInterest() {
        this.logger.d("Viewability Interest Registered. Current number of objects interested in viewability: %d", Integer.valueOf(this.viewabilityInterestCount.incrementAndGet()));
        synchronized (this) {
            addObserversIfNeeded();
        }
    }

    @TargetApi(18)
    private void addObserversIfNeeded() {
        if (this.viewTreeObserver == null || !isViewTreeObserverAlive() || hasViewTreeObserverChanged()) {
            this.viewTreeObserver = this.adController.getAdContainer().getViewTreeObserver();
            this.observersAdded = false;
            this.isScrollListenerAdded.set(false);
            this.firedOnlyOnce = false;
            this.lastTimeViewableEventFired = 0L;
        }
        if (this.viewTreeObserver != null && isViewTreeObserverAlive() && !this.observersAdded) {
            this.viewTreeObserver.addOnGlobalLayoutListener(this.onGlobalLayoutListener);
            this.viewTreeObserver.addOnGlobalFocusChangeListener(this.onGlobalFocusChangeListener);
            if (AndroidTargetUtils.isAtLeastAndroidAPI(18)) {
                this.viewTreeObserver.addOnWindowFocusChangeListener(this.onWindowFocusChangeListener);
            }
            this.observersAdded = true;
            fireViewableEvent(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addOnScrollChangedListenerIfNeeded() {
        if (!this.isScrollListenerAdded.get()) {
            if (this.viewTreeObserver == null || !this.viewTreeObserver.isAlive() || hasViewTreeObserverChanged()) {
                this.viewTreeObserver = this.adController.getAdContainer().getViewTreeObserver();
            }
            this.viewTreeObserver.addOnScrollChangedListener(this.onScrollChangedListener);
            this.isScrollListenerAdded.set(true);
        }
    }

    public void deregisterViewabilityInterest() {
        synchronized (this) {
            int decrementAndGet = this.viewabilityInterestCount.decrementAndGet();
            if (decrementAndGet < 0) {
                this.logger.w("No Viewability Interest was previously registered. Ignoring request to deregister.");
                this.viewabilityInterestCount.incrementAndGet();
                return;
            }
            this.logger.d("Viewability Interest Deregistered. Current number of objects interested in viewability: %d", Integer.valueOf(decrementAndGet));
            if (decrementAndGet == 0) {
                removeObservers();
            }
        }
    }

    @TargetApi(18)
    private void removeObservers() {
        if (this.viewTreeObserver == null) {
            this.logger.w("Root view tree observer is null");
        } else if (!this.viewUtils.removeOnGlobalLayoutListener(this.viewTreeObserver, this.onGlobalLayoutListener)) {
            this.logger.w("Root view tree observer is not alive");
        } else {
            this.viewTreeObserver.removeOnScrollChangedListener(this.onScrollChangedListener);
            this.viewTreeObserver.removeOnGlobalFocusChangeListener(this.onGlobalFocusChangeListener);
            if (AndroidTargetUtils.isAtLeastAndroidAPI(18)) {
                this.viewTreeObserver.removeOnWindowFocusChangeListener(this.onWindowFocusChangeListener);
            }
            this.observersAdded = false;
            this.isScrollListenerAdded.set(false);
        }
    }

    public void fireViewableEvent(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        if (!z || currentTimeMillis - this.lastTimeViewableEventFired >= VIEWABLE_INTERVAL) {
            this.lastTimeViewableEventFired = currentTimeMillis;
            ViewabilityInfo viewabilityInfo = this.viewabilityChecker.getViewabilityInfo();
            if (viewabilityInfo == null) {
                this.logger.w("Viewable info is null");
                return;
            }
            JSONObject jsonObject = viewabilityInfo.getJsonObject();
            boolean isAdOnScreen = viewabilityInfo.isAdOnScreen();
            SDKEvent sDKEvent = new SDKEvent(SDKEvent.SDKEventType.VIEWABLE);
            sDKEvent.setParameter(VIEWABLE_PARAMS_KEY, jsonObject.toString());
            sDKEvent.setParameter(IS_VIEWABLE_KEY, isAdOnScreen ? "true" : " false");
            if (!isAdOnScreen) {
                if (!this.firedOnlyOnce) {
                    this.adController.fireSDKEvent(sDKEvent);
                    this.firedOnlyOnce = true;
                    return;
                }
                return;
            }
            this.adController.fireSDKEvent(sDKEvent);
            this.firedOnlyOnce = false;
        }
    }

    private boolean isViewTreeObserverAlive() {
        if (!this.viewTreeObserver.isAlive()) {
            this.logger.w("Root view tree observer is not alive");
            return false;
        }
        return true;
    }

    private boolean hasViewTreeObserverChanged() {
        return this.viewTreeObserver != this.adController.getAdContainer().getViewTreeObserver();
    }

    public boolean isViewable() {
        ViewabilityInfo viewabilityInfo = this.viewabilityChecker.getViewabilityInfo();
        if (viewabilityInfo == null) {
            this.logger.w("Viewable info is null");
            return false;
        }
        return viewabilityInfo.isAdOnScreen();
    }
}
