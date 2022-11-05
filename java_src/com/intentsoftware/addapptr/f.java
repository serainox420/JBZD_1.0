package com.intentsoftware.addapptr;
/* compiled from: AdNetworkStatistics.java */
/* loaded from: classes2.dex */
class f {
    final b adConfig;
    int adPickerImpressions;
    int numClicks;
    int numImpressions;
    int numRequests;
    int numResponses;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(b bVar) {
        this.adConfig = bVar;
    }

    public void clear() {
        this.numImpressions = 0;
        this.adPickerImpressions = 0;
        this.numClicks = 0;
        this.numRequests = 0;
        this.numResponses = 0;
    }

    public boolean isEmpty() {
        return this.numImpressions == 0 && this.numClicks == 0 && this.numRequests == 0 && this.numResponses == 0;
    }
}
