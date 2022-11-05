package com.intentsoftware.addapptr;

import android.os.SystemClock;
/* compiled from: PromoController.java */
/* loaded from: classes.dex */
public class w {
    public static final String PROMO_NAME = "promo";
    private static final long PROMO_RELOAD_TIME = 60000;
    private static final int PROMO_SHOW_INTERVAL = 3600000;
    private static final long PROMO_TICK_TIME = 1000;
    private c controller;
    private long lastPromoShownTime;
    private int promoPlacementId = -1;
    private com.intentsoftware.addapptr.c.l promoTimer = null;
    private boolean showPromo = true;
    private boolean adJustShown = false;
    private boolean hasConfig = false;
    private boolean needsReload = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(c cVar) {
        this.controller = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int preparePromo() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Preparing promo.");
        }
        if (!promoPlacementExists()) {
            this.promoPlacementId = this.controller.createPlacement(PROMO_NAME, PlacementSize.Fullscreen);
        }
        if (this.hasConfig) {
            loadPromo();
        } else {
            this.needsReload = true;
        }
        return this.promoPlacementId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public int enablePromo(final boolean z) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Promo enabled.");
        }
        if (!promoPlacementExists()) {
            preparePromo();
        }
        if (this.promoTimer == null) {
            this.promoTimer = new com.intentsoftware.addapptr.c.l(PROMO_TICK_TIME, new Runnable() { // from class: com.intentsoftware.addapptr.w.1
                @Override // java.lang.Runnable
                public void run() {
                    w.this.tickPromo(z);
                }
            }, true, true);
            this.promoTimer.start();
        }
        return this.promoPlacementId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public void disablePromo() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Promo disabled.");
        }
        if (this.promoTimer != null) {
            this.promoTimer.stop();
            this.promoTimer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tickPromo(boolean z) {
        if (!this.controller.hasAdForPlacement(this.promoPlacementId)) {
            this.promoTimer.setRefreshTime(PROMO_RELOAD_TIME);
            loadPromo();
            return;
        }
        if (!z) {
            updateShowPromo();
        }
        if (this.promoTimer != null && this.showPromo && promoPlacementExists()) {
            showPromoInternal();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean showPromo(boolean z) {
        updateShowPromo();
        if (this.showPromo || z) {
            return showPromoInternal();
        }
        return false;
    }

    private boolean showPromoInternal() {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Showing promo.");
        }
        if (this.controller.showPlacement(this.promoPlacementId)) {
            this.showPromo = false;
            this.adJustShown = true;
            this.lastPromoShownTime = SystemClock.elapsedRealtime();
            return true;
        }
        return false;
    }

    private void loadPromo() {
        if (promoPlacementExists() && !this.controller.hasAdForPlacement(this.promoPlacementId)) {
            try {
                this.controller.getPlacements().get(this.promoPlacementId).reload(false);
            } catch (IndexOutOfBoundsException e) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                    com.intentsoftware.addapptr.c.c.w(this, "Failed to load promo, promo placement ID not valid!");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityResume() {
        if (this.promoTimer != null) {
            this.promoTimer.start();
        }
        updateShowPromo();
        this.adJustShown = false;
    }

    private void updateShowPromo() {
        if (!this.adJustShown && SystemClock.elapsedRealtime() - this.lastPromoShownTime > 3600000) {
            this.showPromo = true;
        }
    }

    private boolean promoPlacementExists() {
        return this.promoPlacementId >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityPause() {
        if (this.promoTimer != null) {
            this.promoTimer.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        disablePromo();
        this.controller = null;
        this.adJustShown = false;
        this.promoPlacementId = -1;
        this.showPromo = true;
        this.lastPromoShownTime = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onConfigDownloaded() {
        this.hasConfig = true;
        if (this.promoTimer != null || this.needsReload) {
            loadPromo();
            this.needsReload = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAdShown() {
        this.adJustShown = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAdLoaded() {
        if (this.promoTimer != null) {
            this.promoTimer.setRefreshTime(PROMO_TICK_TIME);
            if (this.promoTimer.isRunning()) {
                this.promoTimer.reset();
                this.promoTimer.start();
            }
        }
    }
}
