package com.applovin.sdk;

import com.applovin.impl.sdk.NativeAdImpl;
/* loaded from: classes.dex */
public class AppLovinSdkSettings {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1676a = false;
    private long b = -1;
    private String c = AppLovinAdSize.BANNER.getLabel() + "," + AppLovinAdSize.INTERSTITIAL.getLabel();
    private String d = AppLovinAdType.INCENTIVIZED.getLabel() + "," + AppLovinAdType.REGULAR.getLabel() + "," + NativeAdImpl.TYPE_NATIVE.getLabel();

    public String getAutoPreloadSizes() {
        return this.c;
    }

    public String getAutoPreloadTypes() {
        return this.d;
    }

    public long getBannerAdRefreshSeconds() {
        return this.b;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.f1676a;
    }

    public void setAutoPreloadSizes(String str) {
        this.c = str;
    }

    public void setAutoPreloadTypes(String str) {
        this.d = str;
    }

    public void setBannerAdRefreshSeconds(long j) {
        this.b = j;
    }

    public void setVerboseLogging(boolean z) {
        this.f1676a = z;
    }
}
