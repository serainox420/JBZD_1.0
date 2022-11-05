package com.amazon.device.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdSlot {
    private final AdController adController;
    private AdError adError;
    private final AdTargetingOptions adOptions;
    private final String slotID;
    private int slotNumber;
    private boolean deferredLoad = false;
    private final String KEY_SLOT_ID = "slotId";

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdSlot(AdController adController, AdTargetingOptions adTargetingOptions) {
        this.adController = adController;
        if (adTargetingOptions == null) {
            this.adOptions = new AdTargetingOptions();
            this.slotID = null;
            return;
        }
        this.adOptions = adTargetingOptions;
        this.slotID = this.adOptions.getAdvancedOption("slotId");
    }

    public AdSlot setDeferredLoad(boolean z) {
        this.deferredLoad = z;
        return this;
    }

    public AdTargetingOptions getAdTargetingOptions() {
        return this.adOptions;
    }

    public AdSize getRequestedAdSize() {
        return this.adController.getAdSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSlotNumber(int i) {
        this.slotNumber = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSlotNumber() {
        return this.slotNumber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdError(AdError adError) {
        this.adError = adError;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdError getAdError() {
        return this.adError;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getMaxSize() {
        return this.adController.getMaxSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MetricsCollector getMetricsCollector() {
        return this.adController.getMetricsCollector();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdData(AdData adData) {
        this.adController.setAdData(adData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFetched() {
        return this.adController.getAdData() != null && this.adController.getAdData().getIsFetched();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void adFailed(AdError adError) {
        this.adController.adFailed(adError);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initializeAd() {
        this.adController.initialize(this.slotID);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean prepareForAdLoad(long j) {
        return this.adController.prepareForAdLoad(j, this.deferredLoad);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isValid() {
        return this.adController.isValid();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setConnectionInfo(ConnectionInfo connectionInfo) {
        this.adController.setConnectionInfo(connectionInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean canBeUsed() {
        return this.adController.canBeUsed();
    }
}
