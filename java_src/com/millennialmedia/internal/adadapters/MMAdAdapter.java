package com.millennialmedia.internal.adadapters;
/* loaded from: classes3.dex */
public interface MMAdAdapter {
    public static final int DEFAULT_MIN_IMPRESSION_VIEWABILITY_PERCENTAGE = 50;
    public static final int MIN_IMPRESSION_DELAY = 1000;
    public static final int NO_IMPRESSION_DELAY = 0;
    public static final int NO_MIN_IMPRESSION_VIEWABILITY_PERCENTAGE = 0;

    long getImpressionDelay();

    int getMinImpressionViewabilityPercentage();
}
