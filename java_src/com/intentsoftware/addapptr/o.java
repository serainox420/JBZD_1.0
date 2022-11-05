package com.intentsoftware.addapptr;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FullscreenPlacement.java */
/* loaded from: classes2.dex */
public class o extends s {
    private static final int MIN_TIME_BETWEEN_UNFILLED_ADSPACES = 10000;
    private static final int ONE_DAY = 86400000;
    private static final int ONE_HOUR = 3600000;
    private static final int RELOAD_DELAY_EXTRA_MARGIN = 500;
    private static final int RELOAD_INTERVAL_ON_LOAD_FAIL = 4000;
    private static final String SHARED_PREFERENCES_PREFIX = "aatkit_placement_";
    private boolean autoreloaderActive;
    private final List<Long> displays;
    private boolean exceededImpressionCap;
    private final Handler handler;
    private int impressionsDuringSession;
    private String lastShownAdName;
    private long lastUnfilledAdspaceTime;
    private long reloadAfterCapDelay;
    private final Runnable reloadRunnable;
    private boolean shouldClearAd;
    private boolean shouldCountNextAdspace;
    private Date timeWhenPaused;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(String str, PlacementSize placementSize, Context context) {
        super(str, placementSize, context);
        this.displays = new ArrayList();
        this.shouldCountNextAdspace = true;
        this.handler = new Handler();
        this.reloadRunnable = new Runnable() { // from class: com.intentsoftware.addapptr.o.1
            @Override // java.lang.Runnable
            public void run() {
                if (o.this.getLoadedAd() == null && !o.this.loader.isLoading()) {
                    o.this.reloadInternal();
                }
            }
        };
        initDisplaysList();
    }

    @Override // com.intentsoftware.addapptr.s
    public AdType getAdType() {
        return AdType.FULLSCREEN;
    }

    @Override // com.intentsoftware.addapptr.s
    public void startPlacementAutoReload() {
        if (!this.autoreloaderActive) {
            this.autoreloaderActive = true;
            if (getLoadedAd() == null) {
                reloadInternal();
            }
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Can't start autoreloading - it is already started.");
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public void stopPlacementAutoReload() {
        if (this.autoreloaderActive) {
            this.autoreloaderActive = false;
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Can't stop autoreloading - it is already stopped.");
        }
        this.handler.removeCallbacks(this.reloadRunnable);
    }

    @Override // com.intentsoftware.addapptr.s
    public boolean isAutoreloaderActive() {
        return this.autoreloaderActive;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        if (getLoadedAd() != null) goto L23;
     */
    @Override // com.intentsoftware.addapptr.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean show() {
        boolean z = false;
        if (getConfigs().isEmpty() && getLoadedAd() == null) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Show called on placement without valid config!");
            }
        } else {
            Date date = new Date();
            if (this.exceededImpressionCap && getLoadedAd() == null) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                    com.intentsoftware.addapptr.c.c.d(this, "Show called on placement that exceeded impression cap!");
                }
            } else {
                if (this.shouldCountNextAdspace || date.getTime() - this.lastUnfilledAdspaceTime >= NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) {
                    reportAdSpace();
                }
                if (getLoadedAd() != null) {
                    handleImpression(getLoadedAd().getConfig());
                    this.shouldCountNextAdspace = true;
                    z = ((FullscreenAd) getLoadedAd()).show();
                    this.shouldClearAd = true;
                    if (z) {
                        this.displays.add(Long.valueOf(date.getTime()));
                    } else {
                        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                            com.intentsoftware.addapptr.c.c.d(this, "Failed to show ad: " + getLoadedAd().toString());
                        }
                        clearLoadedAd();
                        if (this.autoreloaderActive) {
                            reloadInternal();
                        }
                    }
                } else {
                    this.shouldCountNextAdspace = false;
                    this.lastUnfilledAdspaceTime = date.getTime();
                    if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                        com.intentsoftware.addapptr.c.c.d(this, "Show called on placement without ad loaded!");
                    }
                }
            }
        }
        return z;
    }

    @Override // com.intentsoftware.addapptr.s
    public String getLastShownAdName() {
        return this.lastShownAdName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.intentsoftware.addapptr.s
    public void clearLoadedAd() {
        super.clearLoadedAd();
        this.shouldClearAd = false;
    }

    @Override // com.intentsoftware.addapptr.s
    public void onResume(Activity activity) {
        if (this.shouldClearAd) {
            if (getLoadedAd() != null) {
                getLoadedAd().resume(activity);
            }
            clearLoadedAd();
        }
        super.onResume(activity);
        Date date = new Date();
        if (this.timeWhenPaused != null && date.getTime() - this.timeWhenPaused.getTime() > 3600000) {
            this.impressionsDuringSession = 0;
        }
        if (this.autoreloaderActive && getLoadedAd() == null && !this.loader.isLoading()) {
            reloadInternal();
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public void onPause() {
        super.onPause();
        this.timeWhenPaused = new Date();
        this.handler.removeCallbacks(this.reloadRunnable);
        com.intentsoftware.addapptr.c.j.write(SHARED_PREFERENCES_PREFIX + getName(), new JSONArray((Collection) this.displays).toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.intentsoftware.addapptr.s
    public void handleAdShown(com.intentsoftware.addapptr.ad.a aVar) {
        super.handleAdShown(aVar);
        this.impressionsDuringSession++;
        this.lastShownAdName = aVar.getConfig().getNetwork().toString();
        handlePauseForAd();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.intentsoftware.addapptr.s
    public void handleAdLoad(com.intentsoftware.addapptr.ad.a aVar) {
        this.handler.removeCallbacks(this.reloadRunnable);
        if (getLoadedAd() != null) {
            getLoadedAd().unload();
        }
        super.handleAdLoad(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.intentsoftware.addapptr.s
    public void handleAdLoadFail() {
        if (this.autoreloaderActive) {
            this.handler.postDelayed(this.reloadRunnable, 4000L);
        }
        super.handleAdLoadFail();
    }

    @Override // com.intentsoftware.addapptr.s
    public void configsFinishedDownloading() {
        super.configsFinishedDownloading();
        if (this.autoreloaderActive && getLoadedAd() == null && !this.loader.isLoading()) {
            reloadInternal();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.intentsoftware.addapptr.s
    public boolean reloadInternal() {
        if (this.maxImpressionsPerSession != 0 && this.impressionsDuringSession >= this.maxImpressionsPerSession) {
            if (c.isOptionEnabled("LOGNTS")) {
                com.intentsoftware.addapptr.c.h.log("NTS: nothingToShow " + getName() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "Session Cap Reached");
            }
            exceededImpressionCap("Reached session cap", false);
            return false;
        } else if (this.maxImpressionsPerHour != 0 && countImpressions(ONE_HOUR) >= this.maxImpressionsPerHour) {
            if (c.isOptionEnabled("LOGNTS")) {
                com.intentsoftware.addapptr.c.h.log("NTS: nothingToShow " + getName() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "Hourly Cap Reached");
            }
            exceededImpressionCap("Reached hourly cap", this.autoreloaderActive);
            return this.autoreloaderActive;
        } else if (this.maxImpressionsPerDay != 0 && countImpressions(ONE_DAY) >= this.maxImpressionsPerDay) {
            if (c.isOptionEnabled("LOGNTS")) {
                com.intentsoftware.addapptr.c.h.log("NTS: nothingToShow " + getName() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "Daily Cap Reached");
            }
            exceededImpressionCap("Reached daily cap", this.autoreloaderActive);
            return this.autoreloaderActive;
        } else if (this.minTimeBetweenImpressions != 0 && countImpressions(this.minTimeBetweenImpressions * 1000) > 0) {
            if (c.isOptionEnabled("LOGNTS")) {
                com.intentsoftware.addapptr.c.h.log("NTS: nothingToShow " + getName() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "Minimum Seconds");
            }
            exceededImpressionCap("Minimum time between impressions not reached", this.autoreloaderActive);
            return this.autoreloaderActive;
        } else {
            this.exceededImpressionCap = false;
            return super.reloadInternal();
        }
    }

    private void exceededImpressionCap(String str, boolean z) {
        this.exceededImpressionCap = true;
        clearLoadedAd();
        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            com.intentsoftware.addapptr.c.c.d(this, "Cannot load ad. " + str);
        }
        if (z) {
            reloadAfterExceedingImpressionCap();
        }
    }

    private void reloadAfterExceedingImpressionCap() {
        if (this.reloadAfterCapDelay > 0) {
            this.handler.postDelayed(this.reloadRunnable, this.reloadAfterCapDelay);
        }
    }

    private int countImpressions(int i) {
        int i2 = 0;
        this.reloadAfterCapDelay = 0L;
        long time = new Date().getTime() - i;
        Iterator<Long> it = this.displays.iterator();
        while (true) {
            int i3 = i2;
            if (it.hasNext()) {
                long longValue = it.next().longValue();
                if (longValue >= time) {
                    i2 = i3 + 1;
                    if (this.reloadAfterCapDelay == 0) {
                        this.reloadAfterCapDelay = (longValue - time) + 500;
                    }
                } else {
                    i2 = i3;
                }
            } else {
                return i3;
            }
        }
    }

    private void initDisplaysList() {
        JSONArray jSONArray = null;
        String read = com.intentsoftware.addapptr.c.j.read(SHARED_PREFERENCES_PREFIX + getName(), null);
        if (read != null) {
            try {
                jSONArray = new JSONArray(read);
            } catch (JSONException e) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                    com.intentsoftware.addapptr.c.c.e(this, "Error reading JSON array: " + e.getMessage());
                }
            }
        }
        if (jSONArray != null) {
            long time = new Date().getTime() - 86400000;
            for (int i = 0; i < jSONArray.length(); i++) {
                if (!jSONArray.isNull(i)) {
                    long optLong = jSONArray.optLong(i);
                    if (optLong > time) {
                        this.displays.add(Long.valueOf(optLong));
                    }
                }
            }
        }
    }
}
