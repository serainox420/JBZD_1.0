package com.intentsoftware.addapptr;

import android.app.Activity;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdLoader.java */
/* loaded from: classes2.dex */
public class d implements com.intentsoftware.addapptr.ad.c {
    private static final long TIMEOUT_BANNER_FAST_CONNECTION = 6000;
    private static final long TIMEOUT_BANNER_SLOW_CONNECTION = 8000;
    private static final long TIMEOUT_INTERSTITIAL_FAST_CONNECTION = 17000;
    private static final long TIMEOUT_INTERSTITIAL_SLOW_CONNECTION = 30000;
    private static final long TIMEOUT_NATIVE_FAST_CONNECTION = 9000;
    private static final long TIMEOUT_NATIVE_SLOW_CONNECTION = 12000;
    private Activity activity;
    private final a builder = new a();
    private b config;
    private e listener;
    private com.intentsoftware.addapptr.ad.a loadingAd;
    private com.intentsoftware.addapptr.c.k placementTargetingInformation;
    private final PlacementSize size;
    private com.intentsoftware.addapptr.c.l timer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(PlacementSize placementSize) {
        long j;
        this.size = placementSize;
        if (com.intentsoftware.addapptr.c.e.isUsingFastConnection()) {
            if (placementSize == PlacementSize.Fullscreen) {
                j = TIMEOUT_INTERSTITIAL_FAST_CONNECTION;
            } else if (placementSize == PlacementSize.Native) {
                j = TIMEOUT_NATIVE_FAST_CONNECTION;
            } else {
                j = 6000;
            }
        } else if (placementSize == PlacementSize.Fullscreen) {
            j = 30000;
        } else if (placementSize == PlacementSize.Native) {
            j = TIMEOUT_NATIVE_SLOW_CONNECTION;
        } else {
            j = TIMEOUT_BANNER_SLOW_CONNECTION;
        }
        this.timer = new com.intentsoftware.addapptr.c.l(j, createTimeoutCallback(), false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void requestAdLoad(b bVar, com.intentsoftware.addapptr.c.k kVar) {
        if (bVar == null) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                com.intentsoftware.addapptr.c.c.w(this, "Ad load request failed - config is missing.");
            }
        } else if (!isAdLoadRequested()) {
            this.config = bVar;
            this.placementTargetingInformation = kVar;
            if (this.activity != null) {
                startLoadingAd(this.activity);
            } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                com.intentsoftware.addapptr.c.c.w(this, "Ad loading request failed. Activity is null!");
            }
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Ad loading request ignored. Ad is already loading.");
        }
    }

    private boolean isAdLoadRequested() {
        return this.config != null;
    }

    private void onAdRequestFinished() {
        this.config = null;
    }

    public void onResume(Activity activity) {
        this.activity = activity;
        if (isAdLoadRequested() && !isLoadingAd()) {
            if (activity != null) {
                startLoadingAd(activity);
            } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                com.intentsoftware.addapptr.c.c.w(this, "Ad loading request after activity resume failed. Activity is null!");
            }
        }
    }

    public void onPause() {
        this.activity = null;
        if (isLoadingAd()) {
            stopLoadingAd();
        }
    }

    private boolean isLoadingAd() {
        return this.loadingAd != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void startLoadingAd(Activity activity) {
        com.intentsoftware.addapptr.c.k globalTargetingInfo;
        try {
            this.loadingAd = this.builder.build(this.config);
            this.loadingAd.setConfig(this.config);
            if (c.getNetworkWhitelistForTargeting().isEmpty() || c.getNetworkWhitelistForTargeting().contains(this.config.getNetwork())) {
                if (this.placementTargetingInformation.hasInformation()) {
                    globalTargetingInfo = this.placementTargetingInformation;
                } else if (c.getGlobalTargetingInfo().hasInformation()) {
                    globalTargetingInfo = c.getGlobalTargetingInfo();
                }
                if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                    com.intentsoftware.addapptr.c.c.d(this, "Loading " + this.loadingAd.getClass().getSimpleName());
                }
                if (activity == null && !activity.isFinishing()) {
                    this.timer.start();
                    this.loadingAd.setLoadListener(this);
                    if (this.listener != null) {
                        this.listener.onAdRequested(this.config);
                    }
                    try {
                        BannerSize bannerSize = this.config.getBannerSize();
                        if (bannerSize == null) {
                            bannerSize = this.size.getBannerSize();
                        }
                        this.loadingAd.load(activity, this.config.getAdId(), bannerSize, globalTargetingInfo);
                        return;
                    } catch (Exception e) {
                        if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                            com.intentsoftware.addapptr.c.c.e(this, "Exception when loading " + this.loadingAd.toString() + " : " + e.getMessage());
                        }
                        this.loadingAd.setLoadListener(null);
                        onFailedToLoadAd(this.loadingAd, "Exception thrown: " + e.getMessage());
                        return;
                    }
                } else if (!com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                    com.intentsoftware.addapptr.c.c.w(this, "Ad loading failed, activity has disappeared or is finishing!");
                    return;
                } else {
                    return;
                }
            }
            globalTargetingInfo = null;
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            }
            if (activity == null) {
            }
            if (!com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            }
        } catch (Exception e2) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                com.intentsoftware.addapptr.c.c.e(this, "Exception when instantiating ad for " + this.config.getNetwork() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.config.getSize() + " : " + e2.getMessage());
            }
            onFailedToLoadAd(null, "Exception thrown: " + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopLoadingAd() {
        this.timer.reset();
        this.loadingAd.setLoadListener(null);
        this.loadingAd = null;
    }

    @Override // com.intentsoftware.addapptr.ad.c
    public void onAdLoaded(com.intentsoftware.addapptr.ad.a aVar) {
        this.loadingAd = null;
        this.timer.reset();
        if (this.listener != null) {
            this.listener.onAdLoaded(aVar);
        }
        onAdRequestFinished();
    }

    @Override // com.intentsoftware.addapptr.ad.c
    public void onFailedToLoadAd(com.intentsoftware.addapptr.ad.a aVar, String str) {
        this.loadingAd = null;
        if (aVar != null) {
            try {
                aVar.unload();
            } catch (Exception e) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                    com.intentsoftware.addapptr.c.c.e(this, "Exception when unloading " + aVar.toString() + " : " + e.getMessage());
                }
            }
        }
        this.timer.reset();
        onAdRequestFinished();
        if (this.listener != null) {
            this.listener.onFailedToLoadAd(str);
        }
    }

    private Runnable createTimeoutCallback() {
        return new Runnable() { // from class: com.intentsoftware.addapptr.d.1
            @Override // java.lang.Runnable
            public void run() {
                com.intentsoftware.addapptr.ad.a aVar = d.this.loadingAd;
                d.this.stopLoadingAd();
                d.this.onFailedToLoadAd(aVar, "timeout reached");
            }
        };
    }

    public void setListener(e eVar) {
        this.listener = eVar;
    }

    public void destroy() {
        if (this.loadingAd != null) {
            this.loadingAd.setLoadListener(null);
            this.loadingAd.unload();
            this.loadingAd = null;
        }
        this.timer.reset();
        this.timer = null;
        this.listener = null;
    }
}
