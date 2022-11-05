package com.mopub.mobileads;
/* loaded from: classes3.dex */
public class VideoViewabilityTracker extends VastTracker {
    private final int b;
    private final int c;

    public VideoViewabilityTracker(int i, int i2, String str) {
        super(str);
        this.b = i;
        this.c = i2;
    }

    public int getViewablePlaytimeMS() {
        return this.b;
    }

    public int getPercentViewable() {
        return this.c;
    }
}
