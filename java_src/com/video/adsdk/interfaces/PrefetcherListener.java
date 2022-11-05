package com.video.adsdk.interfaces;

import com.video.adsdk.internal.ADVideoFile;
/* loaded from: classes3.dex */
public interface PrefetcherListener {
    void onPrefetchedFile(ADVideoFile aDVideoFile);

    void onPrefetchingDidComplete();

    void onPrefetchingFailed();

    void onPrefetchingStarted();

    void onProgress(double d);
}
