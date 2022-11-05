package com.flurry.android.ads;
/* loaded from: classes2.dex */
public interface FlurryAdBannerListener {
    void onAppExit(FlurryAdBanner flurryAdBanner);

    void onClicked(FlurryAdBanner flurryAdBanner);

    void onCloseFullscreen(FlurryAdBanner flurryAdBanner);

    void onError(FlurryAdBanner flurryAdBanner, FlurryAdErrorType flurryAdErrorType, int i);

    void onFetched(FlurryAdBanner flurryAdBanner);

    void onRendered(FlurryAdBanner flurryAdBanner);

    void onShowFullscreen(FlurryAdBanner flurryAdBanner);

    void onVideoCompleted(FlurryAdBanner flurryAdBanner);
}
