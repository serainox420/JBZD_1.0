package com.amazon.device.ads;
/* loaded from: classes.dex */
public interface Ad {
    int getTimeout();

    boolean isLoading();

    boolean loadAd();

    boolean loadAd(AdTargetingOptions adTargetingOptions);

    void setListener(AdListener adListener);

    void setTimeout(int i);
}
