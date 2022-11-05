package com.loopme;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.loopme.common.AdFetcherTimer;
import com.loopme.common.AdParams;
import com.loopme.common.EventManager;
import com.loopme.common.ExecutorHelper;
import com.loopme.common.ExpirationTimer;
import com.loopme.common.Logging;
import com.loopme.common.LoopMeError;
import com.loopme.common.StaticParams;
import com.loopme.common.Utils;
import com.loopme.debugging.ErrorLog;
import com.loopme.debugging.ErrorType;
import com.loopme.request.AdRequestParametersProvider;
import com.loopme.request.AdRequestUrlBuilder;
import com.loopme.request.AdTargeting;
import com.loopme.request.AdTargetingData;
import com.loopme.tasks.AdFetcher;
import com.loopme.tasks.AdvIdFetcher;
import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public abstract class BaseAd implements AdTargeting {
    private static final String LOG_TAG = BaseAd.class.getSimpleName();
    protected volatile AdController mAdController;
    protected volatile AdFetcher.Listener mAdFetcherListener;
    protected long mAdLoadingTimer;
    private AdParams mAdParams;
    private String mAppKey;
    private Context mContext;
    protected ExpirationTimer.Listener mExpirationListener;
    protected ExpirationTimer mExpirationTimer;
    protected AdFetcherTimer mFetcherTimer;
    protected AdFetcherTimer.Listener mFetcherTimerListener;
    protected Future mFuture;
    protected volatile boolean mIsReady;
    protected String mRequestUrl;
    protected int mShowWhenAdNotReadyCounter;
    protected volatile int mAdState = 200;
    private AdTargetingData mAdTargetingData = new AdTargetingData();
    protected Handler mHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int detectHeight();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int detectWidth();

    public abstract void dismiss();

    public abstract int getAdFormat();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onAdClicked();

    abstract void onAdExpired();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onAdLeaveApp();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onAdLoadFail(LoopMeError loopMeError);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onAdLoadSuccess();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onAdVideoDidReachEnd();

    public BaseAd(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Wrong parameters");
        }
        this.mContext = context;
        this.mAppKey = str;
        AdRequestParametersProvider.getInstance().setAppKey(this.mAppKey);
        AdRequestParametersProvider.getInstance().detectPackage(this.mContext);
    }

    public boolean isReady() {
        return this.mIsReady;
    }

    public boolean isShowing() {
        return this.mAdState == 202;
    }

    public boolean isLoading() {
        return this.mAdState == 201;
    }

    public void load() {
        Logging.out(LOG_TAG, "Start loading ad with app key " + this.mAppKey);
        if (this.mAdState == 201 || this.mAdState == 202) {
            Logging.out(LOG_TAG, "Ad already loading or showing");
            return;
        }
        if (this.mAdController == null) {
            this.mAdController = new AdController(this);
        }
        this.mAdState = 201;
        this.mAdLoadingTimer = System.currentTimeMillis();
        startFetcherTimer();
        if (isReady()) {
            Logging.out(LOG_TAG, "Ad already loaded");
            onAdLoadSuccess();
        } else if (Build.VERSION.SDK_INT < 19) {
            onAdLoadFail(new LoopMeError("Not supported Android version. Expected Android 4.4+"));
        } else if (Utils.isOnline(getContext())) {
            proceedLoad();
        } else {
            onAdLoadFail(new LoopMeError("No connection"));
        }
    }

    public void destroy() {
        Logging.out(LOG_TAG, "Ad will be destroyed");
        this.mAdFetcherListener = null;
        this.mIsReady = false;
        stopExpirationTimer();
        stopFetcherTimer();
        this.mAdState = 200;
        getAdTargetingData().clear();
        AdRequestParametersProvider.getInstance().reset();
        releaseViewController();
        if (getAdFormat() == 1001) {
            LoopMeAdHolder.removeInterstitial(this.mAppKey);
        } else {
            LoopMeAdHolder.removeBanner(this.mAppKey);
        }
        if (this.mFuture != null) {
            this.mFuture.cancel(true);
        }
        if (this.mHandler != null) {
            this.mHandler.removeCallbacksAndMessages(null);
        }
    }

    protected void cancelFetcher() {
        Logging.out(LOG_TAG, "Cancel ad fether");
        this.mAdFetcherListener = null;
        releaseViewController();
        if (this.mFuture != null) {
            this.mFuture.cancel(true);
        }
        if (this.mHandler != null) {
            this.mHandler.removeCallbacksAndMessages(null);
        }
    }

    public String getAppKey() {
        return this.mAppKey;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context getContext() {
        return this.mContext;
    }

    protected AdTargetingData getAdTargetingData() {
        return this.mAdTargetingData;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AdParams getAdParams() {
        return this.mAdParams;
    }

    protected void setAdParams(AdParams adParams) {
        this.mAdParams = adParams;
    }

    protected void fetchAdComplete(AdParams adParams) {
        setAdParams(adParams);
        preloadHtmlInWebview(adParams.getHtml());
    }

    private void preloadHtmlInWebview(String str) {
        if (TextUtils.isEmpty(str)) {
            onAdLoadFail(new LoopMeError("Broken response"));
            ErrorLog.post("Broken response (empty html)", ErrorType.SERVER);
        } else if (this.mAdController != null) {
            this.mAdController.initControllers();
            this.mAdController.preloadHtml(str);
        } else {
            onAdLoadFail(new LoopMeError("Html loading error"));
        }
    }

    protected AdFetcher.Listener initAdFetcherListener() {
        return new AdFetcher.Listener() { // from class: com.loopme.BaseAd.1
            @Override // com.loopme.tasks.AdFetcher.Listener
            public void onComplete(AdParams adParams, LoopMeError loopMeError) {
                if (adParams == null || adParams.getPackageIds().isEmpty()) {
                    BaseAd.this.completeRequest(adParams, loopMeError);
                } else if (!Utils.isPackageInstalled(adParams.getPackageIds())) {
                    BaseAd.this.completeRequest(adParams, loopMeError);
                } else {
                    BaseAd.this.mAdState = 200;
                    BaseAd.this.completeRequest(null, new LoopMeError("No valid ads found"));
                    new EventManager().trackSdkEvent(adParams.getToken());
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completeRequest(final AdParams adParams, final LoopMeError loopMeError) {
        this.mHandler.post(new Runnable() { // from class: com.loopme.BaseAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (adParams == null) {
                    if (loopMeError != null) {
                        BaseAd.this.onAdLoadFail(loopMeError);
                        return;
                    } else {
                        BaseAd.this.onAdLoadFail(new LoopMeError("Request timeout"));
                        return;
                    }
                }
                BaseAd.this.fetchAdComplete(adParams);
            }
        });
    }

    private void proceedLoad() {
        if (AdRequestParametersProvider.getInstance().getGoogleAdvertisingId() == null) {
            Logging.out(LOG_TAG, "Start initialization google adv id");
            detectGoogleAdvertisingId();
            return;
        }
        fetchAd();
    }

    private void detectGoogleAdvertisingId() {
        this.mFuture = ExecutorHelper.getExecutor().submit(new AdvIdFetcher(this.mContext, new AdvIdFetcher.Listener() { // from class: com.loopme.BaseAd.3
            @Override // com.loopme.tasks.AdvIdFetcher.Listener
            public void onComplete(String str, boolean z) {
                AdRequestParametersProvider.getInstance().setGoogleAdvertisingId(str, z);
                BaseAd.this.fetchAd();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void releaseViewController() {
        Logging.out(LOG_TAG, "Release ViewController");
        if (this.mAdController != null) {
            this.mAdController.destroy();
            this.mAdController = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startExpirationTimer() {
        if (this.mExpirationTimer == null && this.mAdParams != null && this.mAdController != null && this.mAdController.isVideoPresented()) {
            int expiredTime = this.mAdParams.getExpiredTime();
            this.mExpirationListener = new ExpirationTimer.Listener() { // from class: com.loopme.BaseAd.4
                @Override // com.loopme.common.ExpirationTimer.Listener
                public void onExpired() {
                    BaseAd.this.onAdExpired();
                }
            };
            this.mExpirationTimer = new ExpirationTimer(expiredTime, this.mExpirationListener);
            this.mExpirationTimer.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void stopExpirationTimer() {
        if (this.mExpirationTimer != null) {
            Logging.out(LOG_TAG, "Stop schedule expiration");
            this.mExpirationTimer.cancel();
            this.mExpirationTimer = null;
        }
        this.mExpirationListener = null;
    }

    protected void startFetcherTimer() {
        if (this.mFetcherTimer == null) {
            this.mFetcherTimerListener = new AdFetcherTimer.Listener() { // from class: com.loopme.BaseAd.5
                @Override // com.loopme.common.AdFetcherTimer.Listener
                public void onTimeout() {
                    BaseAd.this.cancelFetcher();
                    BaseAd.this.onAdLoadFail(new LoopMeError("Ad processing timeout"));
                }
            };
            this.mFetcherTimer = new AdFetcherTimer(StaticParams.FETCH_TIMEOUT, this.mFetcherTimerListener);
            Logging.out(LOG_TAG, "Fetch timeout: 3.0 minutes");
            this.mFetcherTimer.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void stopFetcherTimer() {
        Logging.out(LOG_TAG, "Stop fetcher timer");
        if (this.mFetcherTimer != null) {
            this.mFetcherTimer.cancel();
            this.mFetcherTimer = null;
        }
        this.mFetcherTimerListener = null;
    }

    protected void fetchAd() {
        LoopMeAdHolder.putAd(this);
        this.mRequestUrl = new AdRequestUrlBuilder(this.mContext).buildRequestUrl(this.mAppKey, this.mAdTargetingData);
        if (this.mRequestUrl == null) {
            onAdLoadFail(new LoopMeError("Error during building ad request url"));
            return;
        }
        this.mAdFetcherListener = initAdFetcherListener();
        this.mFuture = ExecutorHelper.getExecutor().submit(new AdFetcher(this.mRequestUrl, this.mAdFetcherListener, getAdFormat()));
    }

    public void setVideoCacheTimeInterval(long j) {
        if (j > 0) {
            StaticParams.CACHED_VIDEO_LIFE_TIME = j;
        }
    }

    public void useMobileNetworkForCaching(boolean z) {
    }

    public void setDebugMode(boolean z) {
        StaticParams.DEBUG_MODE = z;
    }

    @Override // com.loopme.request.AdTargeting
    public void setKeywords(String str) {
        this.mAdTargetingData.setKeywords(str);
    }

    @Override // com.loopme.request.AdTargeting
    public void setGender(String str) {
        this.mAdTargetingData.setGender(str);
    }

    @Override // com.loopme.request.AdTargeting
    public void setYearOfBirth(int i) {
        this.mAdTargetingData.setYob(i);
    }

    @Override // com.loopme.request.AdTargeting
    public void addCustomParameter(String str, String str2) {
        this.mAdTargetingData.setCustomParameters(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdController getAdController() {
        return this.mAdController;
    }
}
