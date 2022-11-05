package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.NativeAdMapper;
/* loaded from: classes2.dex */
public interface CustomEventNativeListener extends CustomEventListener {
    void onAdImpression();

    void onAdLoaded(NativeAdMapper nativeAdMapper);
}
