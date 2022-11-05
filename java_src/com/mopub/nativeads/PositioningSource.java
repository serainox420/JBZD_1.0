package com.mopub.nativeads;

import com.mopub.nativeads.MoPubNativeAdPositioning;
/* loaded from: classes3.dex */
interface PositioningSource {

    /* loaded from: classes3.dex */
    public interface PositioningListener {
        void onFailed();

        void onLoad(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning);
    }

    void loadPositions(String str, PositioningListener positioningListener);
}
