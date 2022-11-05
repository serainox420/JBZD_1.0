package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.List;
/* loaded from: classes.dex */
public class ci extends ch {
    public ci(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super("TaskCacheNativeAdVideos", appLovinSdkImpl, list, appLovinNativeAdLoadListener);
    }

    public ci(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        super("TaskCacheNativeAdVideos", appLovinSdkImpl, list, appLovinNativeAdPrecacheListener);
    }

    private boolean b(NativeAdImpl nativeAdImpl) {
        this.g.w("TaskCacheNativeAdVideos", "Unable to cache video resource " + nativeAdImpl.getSourceVideoUrl());
        a(nativeAdImpl, AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
        return false;
    }

    @Override // com.applovin.impl.sdk.ch
    protected void a(NativeAdImpl nativeAdImpl) {
        if (this.b != null) {
            this.b.onNativeAdVideoPreceached(nativeAdImpl);
        }
    }

    protected void a(NativeAdImpl nativeAdImpl, int i) {
        if (this.b != null) {
            this.b.onNativeAdVideoPrecachingFailed(nativeAdImpl, i);
        }
    }

    @Override // com.applovin.impl.sdk.ch
    protected boolean a(NativeAdImpl nativeAdImpl, z zVar) {
        if (!AppLovinSdkUtils.isValidString(nativeAdImpl.getSourceVideoUrl())) {
            this.f.getLogger().d("TaskCacheNativeAdVideos", "No video attached to ad, nothing to cache...");
            return true;
        }
        this.f.getLogger().d("TaskCacheNativeAdVideos", "Beginning slot video caching for ad " + nativeAdImpl.getAdId());
        if (((Boolean) this.f.a(bx.B)).booleanValue()) {
            String a2 = a(nativeAdImpl.getSourceVideoUrl(), zVar);
            if (a2 == null) {
                return b(nativeAdImpl);
            }
            nativeAdImpl.setVideoUrl(a2);
        } else {
            this.f.getLogger().d("TaskCacheNativeAdVideos", "Resource caching is disabled, skipping...");
        }
        return true;
    }

    @Override // com.applovin.impl.sdk.ch, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
