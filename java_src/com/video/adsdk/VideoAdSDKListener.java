package com.video.adsdk;
/* loaded from: classes3.dex */
public interface VideoAdSDKListener {
    void onAdvertisingClicked();

    void onAdvertisingDidHide();

    void onAdvertisingEventTracked(String str);

    void onAdvertisingFailedToLoad(Exception exc);

    void onAdvertisingIsReadyToPlay();

    void onAdvertisingNotAvailable();

    void onAdvertisingPrefetchingDidComplete();

    void onAdvertisingTimedOut();

    void onAdvertisingWillShow();

    void onPrefetcherProgress(double d);
}
