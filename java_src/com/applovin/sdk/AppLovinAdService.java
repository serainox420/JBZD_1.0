package com.applovin.sdk;
/* loaded from: classes.dex */
public interface AppLovinAdService {
    @Deprecated
    public static final String URI_AD_SERVICE = "/adservice";
    @Deprecated
    public static final String URI_API_SERVICE = "/api";
    @Deprecated
    public static final String URI_CLOSE_AD = "/adservice/close_ad";
    @Deprecated
    public static final String URI_LAUNCH_APP = "/launch";
    @Deprecated
    public static final String URI_NEXT_AD = "/adservice/next_ad";

    @Deprecated
    void addAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener);

    void addAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener, AppLovinAdSize appLovinAdSize);

    boolean hasPreloadedAd(AppLovinAdSize appLovinAdSize);

    void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener);

    void preloadAd(AppLovinAdSize appLovinAdSize);

    void removeAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener, AppLovinAdSize appLovinAdSize);
}
