package com.intentsoftware.addapptr;
/* compiled from: PlacementConfig.java */
/* loaded from: classes2.dex */
public class t {
    private final boolean acceptsGeneralRules;
    private final int maxImpressionsPerDay;
    private final int maxImpressionsPerHour;
    private final int maxImpressionsPerSession;
    private final int minTimeBetweenImpressions;
    private final String placementName;
    private final long refreshTime;

    public t(String str, long j, int i, int i2, int i3, int i4, boolean z) {
        this.placementName = str;
        this.refreshTime = j;
        this.maxImpressionsPerSession = i;
        this.minTimeBetweenImpressions = i2;
        this.maxImpressionsPerHour = i3;
        this.maxImpressionsPerDay = i4;
        this.acceptsGeneralRules = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getPlacementName() {
        return this.placementName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getRefreshTime() {
        return this.refreshTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMaxImpressionsPerSession() {
        return this.maxImpressionsPerSession;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMinTimeBetweenImpressions() {
        return this.minTimeBetweenImpressions;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMaxImpressionsPerHour() {
        return this.maxImpressionsPerHour;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMaxImpressionsPerDay() {
        return this.maxImpressionsPerDay;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean acceptsGeneralRules() {
        return this.acceptsGeneralRules;
    }
}
