package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.List;
/* loaded from: classes.dex */
public class cg extends ch {
    public cg(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super("TaskCacheNativeAdImages", appLovinSdkImpl, list, appLovinNativeAdLoadListener);
    }

    public cg(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        super("TaskCacheNativeAdImages", appLovinSdkImpl, list, appLovinNativeAdPrecacheListener);
    }

    private boolean b(NativeAdImpl nativeAdImpl) {
        a(nativeAdImpl, AppLovinErrorCodes.UNABLE_TO_PRECACHE_IMAGE_RESOURCES);
        return false;
    }

    @Override // com.applovin.impl.sdk.ch
    protected void a(NativeAdImpl nativeAdImpl) {
        if (this.b != null) {
            this.b.onNativeAdImagesPrecached(nativeAdImpl);
        }
    }

    protected void a(NativeAdImpl nativeAdImpl, int i) {
        if (this.b != null) {
            this.b.onNativeAdImagePrecachingFailed(nativeAdImpl, i);
        }
    }

    @Override // com.applovin.impl.sdk.ch
    protected boolean a(NativeAdImpl nativeAdImpl, z zVar) {
        this.f.getLogger().d("TaskCacheNativeAdImages", "Beginning slot image caching for ad " + nativeAdImpl.getAdId());
        if (((Boolean) this.f.a(bx.B)).booleanValue()) {
            String a2 = a(nativeAdImpl.getSourceIconUrl(), zVar);
            if (a2 == null) {
                return b(nativeAdImpl);
            }
            nativeAdImpl.setIconUrl(a2);
            String a3 = a(nativeAdImpl.getSourceImageUrl(), zVar);
            if (a3 == null) {
                return b(nativeAdImpl);
            }
            nativeAdImpl.setImageUrl(a3);
        } else {
            this.f.getLogger().d("TaskCacheNativeAdImages", "Resource caching is disabled, skipping...");
        }
        return true;
    }

    @Override // com.applovin.impl.sdk.ch, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
