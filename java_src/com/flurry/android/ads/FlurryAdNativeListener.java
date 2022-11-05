package com.flurry.android.ads;
/* loaded from: classes2.dex */
public interface FlurryAdNativeListener {
    void onAppExit(FlurryAdNative flurryAdNative);

    void onClicked(FlurryAdNative flurryAdNative);

    void onCloseFullscreen(FlurryAdNative flurryAdNative);

    void onCollapsed(FlurryAdNative flurryAdNative);

    void onError(FlurryAdNative flurryAdNative, FlurryAdErrorType flurryAdErrorType, int i);

    void onExpanded(FlurryAdNative flurryAdNative);

    void onFetched(FlurryAdNative flurryAdNative);

    void onImpressionLogged(FlurryAdNative flurryAdNative);

    void onShowFullscreen(FlurryAdNative flurryAdNative);
}
