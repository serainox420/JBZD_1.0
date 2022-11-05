package com.intentsoftware.addapptr;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Placement.java */
/* loaded from: classes2.dex */
public abstract class s {
    static final long EMPTY_CONFIG_TIMEOUT = 10000;
    boolean acceptsGeneralRules;
    private final ArrayList<b> configs;
    private final Context context;
    private com.intentsoftware.addapptr.c.l emptyConfigAdFailReportTimer;
    final List<u> listeners;
    private com.intentsoftware.addapptr.ad.a loadedAd;
    h loader;
    int maxImpressionsPerDay;
    int maxImpressionsPerHour;
    int maxImpressionsPerSession;
    int minTimeBetweenImpressions;
    private final String name;
    private final ArrayList<b> newDownloadedConfigs;
    private final PlacementSize size;
    private final v stats;
    protected final com.intentsoftware.addapptr.c.k targetingInformation;

    public abstract AdType getAdType();

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(String str, PlacementSize placementSize, Context context) {
        this(str, placementSize, context, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(String str, PlacementSize placementSize, Context context, boolean z) {
        this.targetingInformation = new com.intentsoftware.addapptr.c.k();
        this.acceptsGeneralRules = true;
        this.name = str;
        this.size = placementSize;
        this.stats = new v();
        this.configs = new ArrayList<>();
        this.newDownloadedConfigs = new ArrayList<>();
        if (z) {
            this.loader = new h(placementSize, this.stats, str);
            this.loader.setListener(createAdLoaderListener());
        }
        this.context = context;
        this.listeners = new ArrayList();
        this.emptyConfigAdFailReportTimer = new com.intentsoftware.addapptr.c.l(10000L, new Runnable() { // from class: com.intentsoftware.addapptr.s.1
            @Override // java.lang.Runnable
            public void run() {
                s.this.onNoConfigTimeoutAction();
            }
        }, false, false);
    }

    public boolean show() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "show() method is not supported for placement of size: " + this.size.name() + ".");
            return false;
        }
        return false;
    }

    public String getLastShownAdName() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "getLastShownAdName() method is not supported for placement of size: " + this.size.name() + ".");
            return null;
        }
        return null;
    }

    public boolean reload(boolean z) {
        if (!isAutoreloaderActive()) {
            return reloadInternal();
        }
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Can't reload placement while autoreloading is enabled.");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reportAdSpace() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(2)) {
            com.intentsoftware.addapptr.c.c.v(this, "Reporting adspace for placement " + this.name);
        }
        getStats().reportAdspace();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean reloadInternal() {
        if (!this.configs.isEmpty()) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Loading ad for placement " + this.name);
            }
            if (c.isOptionEnabled("LOGLOAD")) {
                com.intentsoftware.addapptr.c.h.log("LoadAd called for placement:" + this.name + ", size:" + this.size);
            }
            this.loader.load(this.configs, this.targetingInformation);
            return true;
        }
        if (c.isOptionEnabled("LOGLOAD")) {
            com.intentsoftware.addapptr.c.h.log("LoadAd called for placement without rules available:" + this.name + ", size:" + this.size);
        }
        this.emptyConfigAdFailReportTimer.start();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onNoConfigTimeoutAction() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            com.intentsoftware.addapptr.c.c.d(this, "Cannot load ad, config for placement " + this.name + " is empty!");
        }
        if (c.isOptionEnabled("LOGNTS")) {
            com.intentsoftware.addapptr.c.h.log("NTS: nothingToShow " + this.name + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "Rules Not Valid");
        }
        if (c.isOptionEnabled("TRIGNOTHINGTOSHOW")) {
            com.intentsoftware.addapptr.c.h.writeLog("nothingToShow");
        }
        handleAdLoadFail();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addConfig(b bVar) {
        if (this.size == PlacementSize.Native && bVar.getSize().equals(AdType.NATIVE)) {
            this.newDownloadedConfigs.add(bVar);
        } else if (this.size == PlacementSize.Fullscreen && (bVar.getSize().equals(AdType.FULLSCREEN) || bVar.getSize().equals(AdType.NATIVE_INTERSTITIAL))) {
            this.newDownloadedConfigs.add(bVar);
        } else if (!this.size.isBanner()) {
        } else {
            if (bVar.getSize().equals(AdType.BANNER) || bVar.getSize().equals(AdType.NATIVE_BANNER)) {
                this.newDownloadedConfigs.add(bVar);
            }
        }
    }

    public String getName() {
        return this.name;
    }

    public PlacementSize getSize() {
        return this.size;
    }

    public com.intentsoftware.addapptr.ad.a getLoadedAd() {
        return this.loadedAd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getLoadedAdNames() {
        return (getLoadedAd() == null || getLoadedAd().getConfig() == null) ? "None" : this.loadedAd.getConfig().getNetwork().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearLoadedAd() {
        if (this.loadedAd != null) {
            this.loadedAd.unload();
        }
        this.loadedAd = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleAdLoad(com.intentsoftware.addapptr.ad.a aVar) {
        this.loadedAd = aVar;
        this.loadedAd.setInteractionListener(createAdInteractionListener());
        this.loadedAd.setFallbackDismissListener(createFallbackDismissListener());
        for (u uVar : this.listeners) {
            uVar.onPlacementAdLoad(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleAdLoadFail() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Failed to load Ad for placement " + this.name);
        }
        for (u uVar : this.listeners) {
            uVar.onPlacementAdLoadFail(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleImpression(b bVar) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            com.intentsoftware.addapptr.c.c.d(this, "Reporting impression for placement " + this.name);
        }
        getStats().reportImpression(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleAdClick(com.intentsoftware.addapptr.ad.a aVar) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            com.intentsoftware.addapptr.c.c.d(this, "Reporting click for placement " + this.name);
        }
        getStats().reportClick(aVar.getConfig());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleAdShown(com.intentsoftware.addapptr.ad.a aVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handlePauseForAd() {
        for (u uVar : this.listeners) {
            uVar.onPauseForAd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEmptyAdShow() {
        for (u uVar : this.listeners) {
            uVar.onEmptyAdShown(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fallbackHandleDismiss() {
        for (u uVar : this.listeners) {
            uVar.fallbackOnResumeFromAd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleIncentiveEarned() {
        for (u uVar : this.listeners) {
            uVar.onUserEarnedIncentive(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v getStats() {
        return this.stats;
    }

    private e createAdLoaderListener() {
        return new e() { // from class: com.intentsoftware.addapptr.s.2
            @Override // com.intentsoftware.addapptr.e
            public void onAdRequested(b bVar) {
                s.this.getStats().reportRequest(bVar);
            }

            @Override // com.intentsoftware.addapptr.e
            public void onFailedToLoadAd(String str) {
                if (c.isOptionEnabled("LOGNTS")) {
                    com.intentsoftware.addapptr.c.h.log("NTS: nothingToShow " + s.this.name + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "No Content");
                }
                if (c.isOptionEnabled("TRIGNOTHINGTOSHOW")) {
                    com.intentsoftware.addapptr.c.h.writeLog("nothingToShow");
                }
                s.this.handleAdLoadFail();
            }

            @Override // com.intentsoftware.addapptr.e
            public void onAdLoaded(com.intentsoftware.addapptr.ad.a aVar) {
                s.this.getStats().reportResponse(aVar.getConfig());
                s.this.handleAdLoad(aVar);
            }
        };
    }

    private com.intentsoftware.addapptr.ad.b createAdInteractionListener() {
        return new com.intentsoftware.addapptr.ad.b() { // from class: com.intentsoftware.addapptr.s.3
            @Override // com.intentsoftware.addapptr.ad.b
            public void onAdShown(com.intentsoftware.addapptr.ad.a aVar) {
                s.this.handleAdShown(aVar);
            }

            @Override // com.intentsoftware.addapptr.ad.b
            public void onEmptyAdShown() {
                s.this.handleEmptyAdShow();
            }

            @Override // com.intentsoftware.addapptr.ad.b
            public void onAdClicked(com.intentsoftware.addapptr.ad.a aVar) {
                s.this.handleAdClick(aVar);
            }

            @Override // com.intentsoftware.addapptr.ad.b
            public void onIncentiveEarned() {
                s.this.handleIncentiveEarned();
            }
        };
    }

    private n createFallbackDismissListener() {
        return new n() { // from class: com.intentsoftware.addapptr.s.4
            @Override // com.intentsoftware.addapptr.n
            public void onAdDismissed() {
                s.this.fallbackHandleDismiss();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<b> getConfigs() {
        return this.configs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context getContext() {
        return this.context;
    }

    public void setDefaultImage(Bitmap bitmap) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Default image is not supported for placement of size: " + this.size.name() + ".");
        }
    }

    public void setDefaultImageResource(int i) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Default image is not supported for placement of size: " + this.size.name() + ".");
        }
    }

    public void startPlacementAutoReload() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Autoreloading is not supported for placement of size: " + this.size.name() + ".");
        }
    }

    public void setPlacementAutoreloadInterval(int i) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "setPlacementAutoreloadInterval() method is not supported for placement of size: " + this.size.name() + ".");
        }
    }

    public void stopPlacementAutoReload() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Autoreloading is not supported for placement of size: " + this.size.name() + ".");
        }
    }

    public boolean isAutoreloaderActive() {
        return false;
    }

    public void onConfigDownloaded(t tVar) {
        if (tVar != null) {
            this.maxImpressionsPerSession = tVar.getMaxImpressionsPerSession();
            this.maxImpressionsPerDay = tVar.getMaxImpressionsPerDay();
            this.maxImpressionsPerHour = tVar.getMaxImpressionsPerHour();
            this.minTimeBetweenImpressions = tVar.getMinTimeBetweenImpressions();
            this.acceptsGeneralRules = tVar.acceptsGeneralRules();
        }
    }

    public void configsFinishedDownloading() {
        this.configs.retainAll(this.newDownloadedConfigs);
        this.newDownloadedConfigs.removeAll(this.configs);
        this.configs.addAll(this.newDownloadedConfigs);
        this.newDownloadedConfigs.clear();
        if (!this.configs.isEmpty()) {
            Collections.shuffle(this.configs);
            if (this.emptyConfigAdFailReportTimer.isRunning() && !isAutoreloaderActive()) {
                reloadInternal();
            }
            this.emptyConfigAdFailReportTimer.reset();
        }
    }

    public void onResume(Activity activity) {
        if (this.loadedAd != null) {
            this.loadedAd.resume(activity);
        }
        this.loader.onResume(activity);
    }

    public void onPause() {
        if (this.loadedAd != null) {
            this.loadedAd.pause();
        }
        this.loader.onPause();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addListener(u uVar) {
        this.listeners.add(uVar);
    }

    public View getPlacementView() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "getPlacementView() method is not supported for placement of size: " + this.size.name() + ".");
            return null;
        }
        return null;
    }

    public void setGravity(int i) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "setGravity() method can only be called for banner placements.");
        }
    }

    public com.intentsoftware.addapptr.ad.d getNativeAd() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "getNativeAd method can only be called for Native placement type!");
            return null;
        }
        return null;
    }

    public void destroy() {
        stopPlacementAutoReload();
        this.configs.clear();
        if (this.loader != null) {
            this.loader.destroy();
            this.loader = null;
        }
        if (this.loadedAd != null) {
            this.loadedAd.unload();
            this.loadedAd = null;
        }
        this.configs.clear();
        this.newDownloadedConfigs.clear();
        this.listeners.clear();
        this.newDownloadedConfigs.clear();
        this.emptyConfigAdFailReportTimer.stop();
        this.emptyConfigAdFailReportTimer = null;
    }

    public void setTargetingInfo(Map<String, List<String>> map) {
        this.targetingInformation.setMap(map);
    }
}
