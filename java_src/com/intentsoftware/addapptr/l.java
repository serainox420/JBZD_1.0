package com.intentsoftware.addapptr;

import com.google.android.gms.cast.framework.media.NotificationOptions;
/* compiled from: BannerReloader.java */
/* loaded from: classes2.dex */
class l implements u {
    static final long AUTORELOAD_INTERVAL_DEFAULT = 30000;
    static final long AUTORELOAD_INTERVAL_MAX = 600000;
    static final long AUTORELOAD_INTERVAL_MIN = 30000;
    private static final int AUTORELOAD_INTERVAL_ON_LOAD_FAILED = 1000;
    private boolean activityResumed;
    private boolean autoreloadingActive;
    private long estimatedTimeForNextAdLoad;
    private boolean reloadTimerWasRunning;
    private long serverAutoreloadInterval;
    private com.intentsoftware.addapptr.c.l timer;
    private long userAutoreloadInterval;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Runnable runnable) {
        this.timer = new com.intentsoftware.addapptr.c.l(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, runnable, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startAutoreload() {
        this.autoreloadingActive = true;
        this.timer.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopAutoreload() {
        this.timer.stop();
        this.autoreloadingActive = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAutoreloadingActive() {
        return this.autoreloadingActive;
    }

    public void onResume() {
        if (this.autoreloadingActive || this.reloadTimerWasRunning) {
            this.timer.start();
        }
        this.activityResumed = true;
    }

    public void onPause() {
        this.reloadTimerWasRunning = this.timer.isRunning();
        if (this.autoreloadingActive || this.reloadTimerWasRunning) {
            this.timer.stop();
        }
        this.activityResumed = false;
    }

    @Override // com.intentsoftware.addapptr.u
    public void onPlacementAdLoad(s sVar) {
        if (this.autoreloadingActive && this.activityResumed) {
            this.timer.reset(false);
            this.timer.setRefreshTime(getReloadDelay(), false);
            this.timer.start();
        }
    }

    @Override // com.intentsoftware.addapptr.u
    public void onPlacementAdLoadFail(s sVar) {
        if (this.autoreloadingActive && this.activityResumed) {
            this.timer.setRefreshTime(1000L);
            this.timer.start();
        }
    }

    @Override // com.intentsoftware.addapptr.u
    public void onPauseForAd(s sVar) {
    }

    @Override // com.intentsoftware.addapptr.u
    public void fallbackOnResumeFromAd(s sVar) {
    }

    @Override // com.intentsoftware.addapptr.u
    public void onEmptyAdShown(s sVar) {
    }

    @Override // com.intentsoftware.addapptr.u
    public void onUserEarnedIncentive(s sVar) {
    }

    @Override // com.intentsoftware.addapptr.u
    public void onPlacementHaveAdWithBannerView(s sVar, k kVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onServerReloadIntervalChanged(long j) {
        this.serverAutoreloadInterval = j;
        if (this.timer.getRefreshTime() != 1000) {
            this.timer.setRefreshTime(getReloadDelay());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUserAutoreloadInterval(long j) {
        this.userAutoreloadInterval = j;
        if (this.timer.getRefreshTime() != 1000) {
            this.timer.setRefreshTime(getReloadDelay());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEstimatedTimeForNextAdLoad(long j) {
        this.estimatedTimeForNextAdLoad = j;
    }

    private long getReloadDelay() {
        return Math.max(getBannerRefreshInterval() - this.estimatedTimeForNextAdLoad, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getBannerRefreshInterval() {
        long j;
        if (this.userAutoreloadInterval != 0) {
            j = this.userAutoreloadInterval;
        } else {
            j = this.serverAutoreloadInterval != 0 ? this.serverAutoreloadInterval : 30000L;
        }
        return j < NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS ? NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS : j > AUTORELOAD_INTERVAL_MAX ? AUTORELOAD_INTERVAL_MAX : j;
    }

    public void destroy() {
        this.timer.stop();
        this.timer = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNextReloadDelay(long j) {
        this.timer.setRefreshTime(j);
        this.timer.reset(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void postOneReload() {
        this.timer.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isRunning() {
        return this.timer.isRunning();
    }
}
