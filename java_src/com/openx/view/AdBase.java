package com.openx.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.monetization.internal.Constants;
import com.openx.common.deviceData.listeners.SDKInitListener;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.OXAdRequest;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.AdError;
import com.openx.model.AdCreative;
import com.openx.model.AdGroup;
import com.openx.model.AdModel;
import com.openx.model.AdType;
import com.openx.model.OXMAdModelFactory;
import com.openx.model.network.AdModelLoadedListener;
import com.openx.view.tp.chain.parser.ChainItem;
import com.openx.view.video.PreloadManager;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
/* loaded from: classes3.dex */
public class AdBase extends FrameLayout implements SDKInitListener, AdModelLoadedListener, PreloadManager.PreloadedListener {
    private static final String TAG = "AdBase";
    public static long fade = 1000;
    private final int DEFAULT_INTERVAL;
    private final int MAX_INTERVAL;
    private final int MIN_INTERVAL;
    WebViewBanner ad1;
    WebViewBanner ad2;
    protected AdEventsListener adEventsListener;
    protected AdModel adModel;
    protected int adModelRequests;
    protected int adModelResponses;
    protected int adPreloads;
    protected OXAdRequest adRequest;
    protected AdType adType;
    protected String auid;
    protected boolean autoStartLoading;
    private String availableTpSDK;
    protected ChainItem chainItem;
    protected Context context;
    private TimerTask currentTimerTask;
    private int currentTimerTaskHash;
    protected UUID currentUUID;
    protected String domain;
    protected Animation fadeInAnimation;
    protected Animation fadeOutAnimation;
    protected Handler handler;
    private boolean hasStartedLoading;
    protected int interval;
    protected boolean isPaused;
    private long lastLoaded;
    protected RelativeLayout.LayoutParams layoutParams;
    public boolean loadCalled;
    protected int numRequests;
    protected boolean screenOn;
    protected String ssmHeight;
    protected String ssmWidth;
    protected Timer timer;
    protected String type;

    public AdBase(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.autoStartLoading = true;
        this.MAX_INTERVAL = 120000;
        this.DEFAULT_INTERVAL = 60000;
        this.MIN_INTERVAL = Constants.HTTP_TIMEOUT;
        this.interval = 60000;
        this.numRequests = 0;
        this.lastLoaded = -1L;
        this.adPreloads = 0;
        this.screenOn = true;
        this.currentTimerTaskHash = 0;
        this.currentTimerTask = null;
        this.hasStartedLoading = false;
        this.loadCalled = false;
        this.fadeInAnimation = AnimationUtils.loadAnimation(getContext(), 17432576);
        this.fadeOutAnimation = AnimationUtils.loadAnimation(getContext(), 17432577);
        this.context = context;
        reflectAttrs(attributeSet);
        init();
    }

    public AdBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.autoStartLoading = true;
        this.MAX_INTERVAL = 120000;
        this.DEFAULT_INTERVAL = 60000;
        this.MIN_INTERVAL = Constants.HTTP_TIMEOUT;
        this.interval = 60000;
        this.numRequests = 0;
        this.lastLoaded = -1L;
        this.adPreloads = 0;
        this.screenOn = true;
        this.currentTimerTaskHash = 0;
        this.currentTimerTask = null;
        this.hasStartedLoading = false;
        this.loadCalled = false;
        this.fadeInAnimation = AnimationUtils.loadAnimation(getContext(), 17432576);
        this.fadeOutAnimation = AnimationUtils.loadAnimation(getContext(), 17432577);
        this.context = context;
        reflectAttrs(attributeSet);
        init();
    }

    public AdBase(Context context, String str, String str2) {
        super(context);
        this.autoStartLoading = true;
        this.MAX_INTERVAL = 120000;
        this.DEFAULT_INTERVAL = 60000;
        this.MIN_INTERVAL = Constants.HTTP_TIMEOUT;
        this.interval = 60000;
        this.numRequests = 0;
        this.lastLoaded = -1L;
        this.adPreloads = 0;
        this.screenOn = true;
        this.currentTimerTaskHash = 0;
        this.currentTimerTask = null;
        this.hasStartedLoading = false;
        this.loadCalled = false;
        this.fadeInAnimation = AnimationUtils.loadAnimation(getContext(), 17432576);
        this.fadeOutAnimation = AnimationUtils.loadAnimation(getContext(), 17432577);
        this.context = context;
        this.domain = str;
        this.auid = str2;
        this.type = str2;
        init();
    }

    protected void initAvaialbleTPJars(String str) {
        this.availableTpSDK = str;
    }

    public AdBase(Context context, String str, String str2, ChainItem chainItem) {
        super(context);
        this.autoStartLoading = true;
        this.MAX_INTERVAL = 120000;
        this.DEFAULT_INTERVAL = 60000;
        this.MIN_INTERVAL = Constants.HTTP_TIMEOUT;
        this.interval = 60000;
        this.numRequests = 0;
        this.lastLoaded = -1L;
        this.adPreloads = 0;
        this.screenOn = true;
        this.currentTimerTaskHash = 0;
        this.currentTimerTask = null;
        this.hasStartedLoading = false;
        this.loadCalled = false;
        this.fadeInAnimation = AnimationUtils.loadAnimation(getContext(), 17432576);
        this.fadeOutAnimation = AnimationUtils.loadAnimation(getContext(), 17432577);
        this.context = context;
        this.domain = str;
        this.auid = str2;
        this.type = str2;
        this.chainItem = chainItem;
        init();
    }

    public AdBase(Context context) {
        super(context);
        this.autoStartLoading = true;
        this.MAX_INTERVAL = 120000;
        this.DEFAULT_INTERVAL = 60000;
        this.MIN_INTERVAL = Constants.HTTP_TIMEOUT;
        this.interval = 60000;
        this.numRequests = 0;
        this.lastLoaded = -1L;
        this.adPreloads = 0;
        this.screenOn = true;
        this.currentTimerTaskHash = 0;
        this.currentTimerTask = null;
        this.hasStartedLoading = false;
        this.loadCalled = false;
        this.fadeInAnimation = AnimationUtils.loadAnimation(getContext(), 17432576);
        this.fadeOutAnimation = AnimationUtils.loadAnimation(getContext(), 17432577);
        this.context = context;
        initBase();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getAttributeValue(AttributeSet attributeSet, int i, String str) {
        if (attributeSet.getAttributeName(i).equalsIgnoreCase(str)) {
            return attributeSet.getAttributeValue(i);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reflectAttrs(AttributeSet attributeSet) {
        String str = null;
        if (attributeSet != null) {
            int attributeCount = attributeSet.getAttributeCount();
            for (int i = 0; i < attributeCount; i++) {
                if (this.domain == null) {
                    this.domain = getAttributeValue(attributeSet, i, "domain");
                }
                if (this.auid == null) {
                    this.auid = getAttributeValue(attributeSet, i, "adUnitID");
                }
                if (str == null) {
                    str = getAttributeValue(attributeSet, i, "autoRefreshInterval");
                }
                if (attributeSet.getAttributeName(i).equalsIgnoreCase("autoStartLoading")) {
                    this.autoStartLoading = attributeSet.getAttributeBooleanValue(i, true);
                }
            }
        }
        if (str != null) {
            try {
                setAutoRefreshInterval(Integer.parseInt(str));
            } catch (Exception e) {
                OXLog.verbose(TAG, "WARNING: Please pass in a right value for 'autoRefreshInterval', SDK needs it for parsing as Integer");
            }
        }
    }

    public void setAdUnitID(String str) {
        this.auid = str;
    }

    protected String getAdUnitID() {
        return this.auid;
    }

    public void incrementNumRequests() {
        this.numRequests++;
    }

    public String getAuid() {
        return this.auid;
    }

    public void setAuid(String str) {
        this.adModel = null;
        this.auid = str;
    }

    public void setDomain(String str) {
        this.adModel = null;
        this.domain = str;
    }

    public void setAdModelNull() {
        this.adModel = null;
    }

    public void setAutoRefreshInterval(int i) {
        if (i != this.interval) {
            if (i == 0) {
                this.interval = Integer.MAX_VALUE;
            } else if (i <= 120000 && i >= 15000) {
                this.interval = i;
            } else {
                this.interval = 60000;
            }
            OXLog.debug(TAG, "setAdChangeInterval scheduleTimer 1");
            OXLog.debug(TAG, "(load&scheduleTimer logs) schedule Timer from setAutoRefreshInterval(int...)");
            scheduleTimer(this.interval);
        }
    }

    public AdModel getAdModel() {
        return this.adModel;
    }

    public static void trackImpressionEvent(WebViewBase webViewBase) {
        AdModel adModel;
        if (webViewBase.getAd() != null) {
            AdCreative creative = webViewBase.getAd().getCreative();
            String impressionURL = (creative == null || creative.getTracking() == null) ? null : creative.getTracking().getImpressionURL();
            if (impressionURL != null && (adModel = webViewBase.getAdModel()) != null) {
                adModel.trackAdModelEvents("impression", impressionURL);
            }
        }
    }

    private void initBase() {
        if (!OXSettings.isSDKInit) {
            OXSettings.initSDK(this.context, this);
        }
        OXMManagersResolver.getInstance().prepare(this.context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void init() {
        setWillNotDraw(false);
        initBase();
        this.handler = new Handler();
        this.timer = new Timer();
        this.fadeInAnimation.setDuration(fade);
        this.fadeOutAnimation.setDuration(fade);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isPaused = true;
        if (this.timer != null) {
            this.timer.cancel();
            this.timer = null;
        }
        cleanup();
    }

    private void cleanup() {
        this.context = null;
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        return super.onSaveInstanceState();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z) {
            OXLog.debug(TAG, "onWindowFocused NOT");
            this.screenOn = false;
            if (this.timer != null) {
                this.timer.cancel();
                this.timer = null;
            }
            this.isPaused = true;
        } else if ((this instanceof AdBanner) || (this instanceof MediatedAdView)) {
            OXLog.debug(TAG, "onWindowFocused YES");
            this.screenOn = true;
            this.isPaused = false;
            OXLog.debug(TAG, "(load&scheduleTimer logs) scheduleTimer from onWindowFocusedChaged Adbase:hasStartedLoading: " + this.hasStartedLoading + ": autoStartLoading: " + this.autoStartLoading + "");
            if (!this.hasStartedLoading && this.autoStartLoading && this.interval != Integer.MAX_VALUE) {
                OXLog.debug(TAG, "(load&scheduleTimer logs) scheduleTimer from onWindowFocusedChaged Adbase");
                scheduleTimer(0);
            }
        }
    }

    public void initStartLoading(WebViewBase webViewBase) {
        this.screenOn = true;
        this.isPaused = false;
        if (this.timer == null) {
            if (webViewBase != null) {
                webViewBase.detachFromParent();
                removeAllViews();
                addView(webViewBase);
                postDelayed(new Runnable() { // from class: com.openx.view.AdBase.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdBase.this.load(AdBase.this.adRequest);
                    }
                }, this.interval / 2);
                return;
            }
            load(this.adRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        if (i == 4 || i == 8) {
            if (this.timer != null) {
                this.timer.cancel();
                this.timer = null;
            }
            this.isPaused = true;
            this.lastLoaded = -1L;
        } else {
            this.screenOn = true;
            this.isPaused = false;
        }
        super.onVisibilityChanged(view, i);
    }

    @Override // com.openx.view.video.PreloadManager.PreloadedListener
    public void stoppedLoading() {
        this.isPaused = true;
        if (this.timer != null) {
            this.timer.cancel();
            this.timer = null;
        }
    }

    public void setFadeDuration(int i) {
        if (i >= 0) {
            fade = i;
        }
    }

    public void load() {
        load(null);
    }

    public void load(OXAdRequest oXAdRequest) {
        this.adRequest = oXAdRequest;
        OXLog.debug(TAG, "(load&scheduleTimer logs) load(OX:): autostartLoading: " + this.autoStartLoading);
        this.loadCalled = true;
        this.autoStartLoading = true;
        if (!OXSettings.isSDKInit) {
            OXLog.debug(TAG, "(load&scheduleTimer logs) returning early from load(OX...)");
            this.hasStartedLoading = true;
            return;
        }
        OXLog.debug(TAG, "(load&scheduleTimer logs)loading from load(OX...)");
        if (System.currentTimeMillis() - this.lastLoaded < 15000) {
            OXLog.verbose(TAG, "WARNING: Ad may not be refreshed more than once in 15 seconds .");
        } else if (!this.screenOn) {
        } else {
            if (this.interval == Integer.MAX_VALUE || isShown() || (this instanceof AdInterstitial)) {
                this.lastLoaded = System.currentTimeMillis();
                OXLog.debug(TAG, "startLoading scheduleTimer ");
                OXLog.debug(TAG, "(load&scheduleTimer logs) schedule Timer from load(OX...)");
                scheduleTimer(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void scheduleTimer(int i) {
        OXLog.debug(TAG, "scheduleTimer -1 ");
        if (this.timer != null) {
            if (this.currentTimerTask != null) {
                this.currentTimerTask.cancel();
                this.currentTimerTask = null;
            }
            this.timer.cancel();
            this.timer.purge();
            this.timer = null;
        }
        this.timer = new Timer();
        OXLog.debug(TAG, "TimerTask: currentTimerTask");
        createCurrentTimerTask();
        this.currentTimerTaskHash = this.currentTimerTask.hashCode();
        this.timer.scheduleAtFixedRate(this.currentTimerTask, i, this.interval);
    }

    private void createCurrentTimerTask() {
        this.currentTimerTask = new TimerTask() { // from class: com.openx.view.AdBase.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                OXLog.debug(AdBase.TAG, "Attempting...timertask loadview....0");
                if (AdBase.this.currentTimerTaskHash != hashCode()) {
                    cancel();
                } else {
                    AdBase.this.queueUIThreadTask(new Runnable() { // from class: com.openx.view.AdBase.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            OXLog.debug(AdBase.TAG, "Attempting...timertask loadview....1");
                            if (AdBase.this.screenOn) {
                                OXLog.debug(AdBase.TAG, "TimerTask: loadView: " + AdBase.this.interval + " 2");
                                AdBase.this.loadView();
                            }
                        }
                    });
                }
            }
        };
    }

    protected void loadView() {
        if (this.interval != Integer.MAX_VALUE) {
            if (this.isPaused) {
                return;
            }
            if (!isShown() && !(this instanceof AdInterstitial)) {
                return;
            }
        }
        OXLog.debug(TAG, "AdBase loadView loading AdModel ln 720");
        loadAdModel();
    }

    public void queueUIThreadTask(Runnable runnable) {
        if (runnable == null || this.handler == null) {
            return;
        }
        this.handler.post(runnable);
    }

    protected void loadAdModel() {
        if (this.screenOn) {
            if (this.interval == Integer.MAX_VALUE || isShown() || (this instanceof AdInterstitial)) {
                this.adModelRequests++;
                if (this.adModel == null) {
                    Utils.log(this, "Building AdModel");
                    this.adModel = OXMAdModelFactory.getInstance().createNewModel();
                    this.adModel.setAdDomain(this.domain);
                    this.adModel.setAdUnitID(this.auid);
                    this.adModel.setAdModelCallbackListener(this);
                    if (this.chainItem != null) {
                        this.adModel.setChainItem(this.chainItem);
                        this.adModel.setSSMAdWidth(this.chainItem.width);
                        this.adModel.setSSMAdHeight(this.chainItem.height);
                    }
                }
                if (this.adRequest != null && this.adRequest.adCallParams != null) {
                    OXLog.debug(TAG, "sendng call params");
                    this.adModel.setAdCallParams(this.adRequest.adCallParams);
                } else {
                    OXLog.debug(TAG, "No params set by user");
                    this.adModel.setAdCallParams(null);
                }
                Utils.log(this, "Loading AdModel");
                this.adModel.processData();
            }
        }
    }

    private void renderPlacement(WebViewBase webViewBase, int i, int i2) {
        float f;
        int width = ((Activity) getContext()).getWindowManager().getDefaultDisplay().getWidth();
        int height = ((Activity) getContext()).getWindowManager().getDefaultDisplay().getHeight();
        int i3 = width < height ? width : height;
        if (width > height) {
            height = width;
        }
        if (OXMManagersResolver.getInstance().getDeviceManager().getDeviceOrientation() == 2) {
            if (webViewBase.isPortrait() && i < height) {
                f = (i3 * 1.0f) / i;
            } else if (webViewBase.isPortrait() && i > height) {
                f = (height * 1.0f) / i;
            } else if (i < height) {
                f = (height * 1.0f) / i;
            } else {
                f = (height * 1.0f) / i;
            }
        } else if (!webViewBase.isPortrait()) {
            f = 1.0f;
        } else if (i < i3) {
            f = (i3 * 1.0f) / i;
        } else {
            f = (i3 * 1.0f) / i;
        }
        if (f > webViewBase.densityScalingFactor()) {
            f = (float) (1.0d * webViewBase.densityScalingFactor());
            Utils.log(this, "factor > densityScalingFactor");
        }
        webViewBase.setAdWidth(Math.round(i * f));
        webViewBase.setAdHeight(Math.round(f * i2));
        Utils.log(this, "Creative Width: 0 Height: 0");
    }

    public void displayAdViewPlacement(WebViewBase webViewBase) {
        if (webViewBase.getAd() != null && webViewBase.getAd().getCreatives() != null && webViewBase.getAd().getCreatives().size() > 0) {
            AdCreative creative = webViewBase.getAd().getCreative();
            OXLog.debug(TAG, "AdBase: displayAdViewPlacement: (regular creative) width: " + creative.getWidth() + " height: " + creative.getHeight());
            renderPlacement(webViewBase, creative.getWidth(), creative.getHeight());
        } else if (this.chainItem != null) {
            OXLog.debug(TAG, "AdBase: displayAdViewPlacement: chain width: " + this.chainItem.width + "chain height: " + this.chainItem.height);
            renderPlacement(webViewBase, this.chainItem.width, this.chainItem.height);
        }
    }

    public void adModelLoadAdSuccess(AdGroup adGroup) {
        Utils.log(this, "Loaded AdModel Successfully");
        this.adModelResponses++;
    }

    @Override // com.openx.model.network.AdModelLoadedListener
    public void adModelLoadAdFail(AdError adError) {
        if (this.adEventsListener != null) {
            this.adEventsListener.onAdFailedToLoad(adError);
        }
    }

    @Override // com.openx.model.network.AdModelLoadedListener
    public void adModelNonCriticalError(AdError adError) {
        if (this.adEventsListener != null) {
            OXLog.info("OX_NonCriticalError", "NonCriticalError: " + adError);
        }
    }

    public void preloaded(WebViewBase webViewBase) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void swapWebViews() {
        Utils.log(this, "Swapping Web Views");
        WebViewBase webViewBase = (WebViewBase) getChildAt(0);
        WebViewBase webViewBase2 = (WebViewBase) getChildAt(1);
        webViewBase.startAnimation(this.fadeOutAnimation);
        webViewBase.setVisibility(8);
        if (webViewBase2 != null) {
            renderAdView(webViewBase2);
            webViewBase2.bringToFront();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void renderAdView(WebViewBase webViewBase) {
        Utils.log(this, "Rendering Ad Banner");
        if (webViewBase.isMRAID()) {
            webViewBase.getMRAID().onViewableChange(true);
        }
        webViewBase.startAnimation(this.fadeInAnimation);
        webViewBase.setVisibility(0);
        displayAdViewPlacement(webViewBase);
        Utils.log(this, "Tracking Impression");
        if (getVisibility() == 0) {
            trackImpressionEvent(webViewBase);
        }
    }

    public static void renderAd(WebViewBase webViewBase, boolean z) {
        Animation loadAnimation = AnimationUtils.loadAnimation(webViewBase.getContext(), 17432576);
        loadAnimation.setDuration(fade);
        webViewBase.startAnimation(loadAnimation);
        webViewBase.setVisibility(0);
        if (z) {
            trackImpressionEvent(webViewBase);
        }
    }

    @Override // com.openx.view.video.PreloadManager.PreloadedListener
    public void timedOut(WebViewBase webViewBase) {
        this.numRequests--;
    }

    public void setAdEventsListener(AdEventsListener adEventsListener) {
        this.adEventsListener = adEventsListener;
    }

    public AdEventsListener getAdEventsListener() {
        return this.adEventsListener;
    }

    @Override // com.openx.common.deviceData.listeners.SDKInitListener
    public void onSDKInit() {
        if (this.hasStartedLoading && this.autoStartLoading) {
            OXLog.debug(TAG, "(load&scheduleTimer logs) loading from onSDKInit");
            load(this.adRequest);
            this.hasStartedLoading = false;
        }
    }
}
