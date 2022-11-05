package com.openx.view.nativeAd;

import com.openx.errors.AdError;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public interface NativeAdEventsListener {
    void onNativeAdLoadError(AdError adError);

    void onNativeAdsLoaded(ArrayList<AdNative> arrayList);
}
