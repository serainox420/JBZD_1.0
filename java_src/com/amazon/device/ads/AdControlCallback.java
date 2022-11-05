package com.amazon.device.ads;
/* loaded from: classes.dex */
interface AdControlCallback {
    public static final int CLOSE_EVENT_ONLY = 0;
    public static final int CLOSE_FULL = 1;
    public static final int NO_CLOSE = 2;

    int adClosing();

    boolean isAdReady(boolean z);

    void onAdEvent(AdEvent adEvent);

    void onAdExpired();

    void onAdFailed(AdError adError);

    void onAdLoaded(AdProperties adProperties);

    void onAdRendered();

    void postAdRendered();
}
