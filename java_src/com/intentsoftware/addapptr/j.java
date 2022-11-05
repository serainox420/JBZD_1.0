package com.intentsoftware.addapptr;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.intentsoftware.addapptr.ad.BannerAd;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BannerPlacement.java */
/* loaded from: classes2.dex */
public class j extends s {
    private static final int LEGITIMATE_RELOAD_INTERVAL = 10000;
    private static final int MIN_ESTIMATED_AD_LOAD_TIME = 5000;
    private boolean adspaceAwaitingAd;
    private final com.intentsoftware.addapptr.c.l adspaceTimer;
    private boolean adspaceTimerWasActive;
    private final l bannerReloader;
    int gravity;
    private boolean lastAdLoadFailed;
    private long lastAdReloadTime;
    private long lastAdspaceReportTime;
    private long lastImpressionTime;
    private long lastLoadStartTime;
    com.intentsoftware.addapptr.ad.a newAd;
    k placementView;
    private boolean shouldForceShowBanner;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(String str, PlacementSize placementSize, Context context) {
        super(str, placementSize, context);
        this.gravity = 17;
        this.placementView = new k(placementSize.getBannerSize().getWidth(), placementSize.getBannerSize().getHeight(), this.gravity, context, false);
        this.bannerReloader = new l(new Runnable() { // from class: com.intentsoftware.addapptr.j.1
            @Override // java.lang.Runnable
            public void run() {
                j.this.reloadInternal();
            }
        });
        this.adspaceTimer = new com.intentsoftware.addapptr.c.l(this.bannerReloader.getBannerRefreshInterval(), new Runnable() { // from class: com.intentsoftware.addapptr.j.2
            @Override // java.lang.Runnable
            public void run() {
                j.this.handleNewAdspace();
            }
        }, false, true);
        addListener(this.bannerReloader);
    }

    @Override // com.intentsoftware.addapptr.s
    public AdType getAdType() {
        return AdType.BANNER;
    }

    @Override // com.intentsoftware.addapptr.s
    public void startPlacementAutoReload() {
        if (!this.bannerReloader.isAutoreloadingActive()) {
            this.adspaceTimer.reset(false);
            setTimers();
            this.bannerReloader.startAutoreload();
            this.adspaceTimer.start();
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Can't start autoreloading - it is already started.");
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public void setPlacementAutoreloadInterval(int i) {
        this.bannerReloader.setUserAutoreloadInterval(i * 1000);
        this.adspaceTimer.setRefreshTime(this.bannerReloader.getBannerRefreshInterval());
    }

    @Override // com.intentsoftware.addapptr.s
    public void stopPlacementAutoReload() {
        if (this.bannerReloader.isAutoreloadingActive()) {
            this.bannerReloader.stopAutoreload();
            this.adspaceTimer.stop();
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Can't stop autoreloading - it is already stopped.");
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public boolean isAutoreloaderActive() {
        return this.bannerReloader.isAutoreloadingActive();
    }

    @Override // com.intentsoftware.addapptr.s
    public void setDefaultImage(Bitmap bitmap) {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(bitmap);
        if (this.placementView.getChildCount() == 0) {
            this.placementView.addView(imageView);
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public void setDefaultImageResource(int i) {
        setDefaultImage(BitmapFactory.decodeResource(getContext().getResources(), i));
    }

    @Override // com.intentsoftware.addapptr.s
    public void onResume(Activity activity) {
        super.onResume(activity);
        this.bannerReloader.onResume();
        if (this.adspaceTimerWasActive) {
            this.adspaceTimer.start();
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public void onPause() {
        super.onPause();
        this.adspaceTimerWasActive = this.adspaceTimer.isRunning();
        this.bannerReloader.onPause();
        this.adspaceTimer.stop();
    }

    @Override // com.intentsoftware.addapptr.s
    public void onConfigDownloaded(t tVar) {
        super.onConfigDownloaded(tVar);
        if (tVar != null) {
            this.bannerReloader.onServerReloadIntervalChanged(tVar.getRefreshTime());
            this.adspaceTimer.setRefreshTime(this.bannerReloader.getBannerRefreshInterval());
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public void configsFinishedDownloading() {
        super.configsFinishedDownloading();
        if (getLoadedAd() == null && this.newAd == null && isAutoreloaderActive() && !this.loader.isLoading() && !this.bannerReloader.isRunning()) {
            reloadInternal();
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public boolean reload(boolean z) {
        if (!isAutoreloaderActive()) {
            if (z) {
                if (!this.loader.isLoading()) {
                    this.adspaceTimer.reset(false);
                    reportAdSpace();
                    this.shouldForceShowBanner = true;
                    return reloadInternal();
                } else if (System.currentTimeMillis() - this.lastAdspaceReportTime > NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) {
                    reportAdSpace();
                    return false;
                } else if (!com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                    return false;
                } else {
                    com.intentsoftware.addapptr.c.c.w(this, "Ad space not counted, placement is still loading for last call of reloadPlacement. Please avoid calling reloadPlacement more often than once per 10 seconds");
                    return false;
                }
            } else if ((!this.adspaceTimer.isRunning() || this.lastAdLoadFailed) && !this.bannerReloader.isRunning()) {
                if (!this.adspaceTimer.isRunning()) {
                    this.adspaceTimer.reset(false);
                }
                setTimers();
                this.bannerReloader.postOneReload();
                if (!this.adspaceTimer.isRunning()) {
                    this.adspaceTimer.start();
                }
                return true;
            } else if (!com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                return false;
            } else {
                com.intentsoftware.addapptr.c.c.w(this, "Placement is already reloading, reload request ignored.");
                return false;
            }
        } else if (!com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            return false;
        } else {
            com.intentsoftware.addapptr.c.c.w(this, "Can't reload placement while autoreloading is enabled.");
            return false;
        }
    }

    private void setTimers() {
        long max = Math.max(this.bannerReloader.getBannerRefreshInterval() - ((System.currentTimeMillis() - this.lastImpressionTime) + getEstimatedTimeForAdLoad()), 0L);
        this.adspaceTimer.setRefreshTime(Math.max(this.bannerReloader.getBannerRefreshInterval() - (System.currentTimeMillis() - Math.max(this.lastAdspaceReportTime, this.lastImpressionTime)), 0L));
        this.bannerReloader.setNextReloadDelay(max);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.intentsoftware.addapptr.s
    public boolean reloadInternal() {
        if (!getConfigs().isEmpty()) {
            this.lastLoadStartTime = System.currentTimeMillis();
        }
        return super.reloadInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.intentsoftware.addapptr.s
    public void reportAdSpace() {
        this.lastAdspaceReportTime = System.currentTimeMillis();
        super.reportAdSpace();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.intentsoftware.addapptr.s
    public void handleAdLoad(com.intentsoftware.addapptr.ad.a aVar) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Loaded banner for placement " + getName());
        }
        this.lastAdLoadFailed = false;
        this.newAd = aVar;
        this.lastAdReloadTime = System.currentTimeMillis() - this.lastLoadStartTime;
        if (this.adspaceAwaitingAd || this.shouldForceShowBanner) {
            this.adspaceTimer.setRefreshTime(this.bannerReloader.getBannerRefreshInterval());
            presentNewAd();
            this.adspaceTimer.reset(false);
            if (isAutoreloaderActive()) {
                this.adspaceTimer.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNewAdspace() {
        reportAdSpace();
        if (this.newAd != null) {
            presentNewAd();
        } else {
            this.adspaceAwaitingAd = true;
        }
        this.adspaceTimer.setRefreshTime(this.bannerReloader.getBannerRefreshInterval());
        this.adspaceTimer.reset(false);
        if (isAutoreloaderActive()) {
            this.adspaceTimer.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void presentNewAd() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Presenting new banner on placement " + getName());
        }
        this.shouldForceShowBanner = false;
        this.adspaceAwaitingAd = false;
        this.bannerReloader.setEstimatedTimeForNextAdLoad(getEstimatedTimeForAdLoad());
        this.placementView.destroy();
        super.handleAdLoad(this.newAd);
        this.placementView.presentAd((BannerAd) this.newAd);
        handleImpression(this.newAd.getConfig());
        this.lastImpressionTime = System.currentTimeMillis();
        this.newAd = null;
    }

    private long getEstimatedTimeForAdLoad() {
        if (this.lastAdReloadTime <= 5000) {
            return 5000L;
        }
        if (this.lastAdReloadTime >= this.bannerReloader.getBannerRefreshInterval()) {
            return this.bannerReloader.getBannerRefreshInterval();
        }
        return this.lastAdReloadTime;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.intentsoftware.addapptr.s
    public void handleAdLoadFail() {
        this.lastAdLoadFailed = true;
        super.handleAdLoadFail();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.intentsoftware.addapptr.s
    public void handleAdClick(com.intentsoftware.addapptr.ad.a aVar) {
        super.handleAdClick(aVar);
        handlePauseForAd();
        getStats().afterBannerClick(aVar.getConfig());
    }

    @Override // com.intentsoftware.addapptr.s
    public View getPlacementView() {
        return this.placementView;
    }

    @Override // com.intentsoftware.addapptr.s
    public void setGravity(int i) {
        this.gravity = i;
        if (this.placementView != null) {
            this.placementView.setGravity(i);
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public void destroy() {
        super.destroy();
        this.bannerReloader.destroy();
    }
}
