package com.mopub.mobileads;

import com.mopub.common.CacheService;
import com.mopub.common.DataKeys;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.VastManager;
import com.mopub.mobileads.factories.VastManagerFactory;
import java.util.Map;
/* loaded from: classes3.dex */
class VastVideoInterstitial extends ResponseBodyInterstitial implements VastManager.VastManagerListener {
    private CustomEventInterstitial.CustomEventInterstitialListener d;
    private String e;
    private VastManager f;
    private VastVideoConfig g;

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void a(Map<String, String> map) {
        this.e = map.get(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        this.d = customEventInterstitialListener;
        if (!CacheService.initializeDiskCache(this.f4458a)) {
            this.d.onInterstitialFailed(MoPubErrorCode.VIDEO_CACHE_ERROR);
            return;
        }
        this.f = VastManagerFactory.create(this.f4458a);
        this.f.prepareVastVideoConfiguration(this.e, this, this.b.getDspCreativeId(), this.f4458a);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MraidVideoPlayerActivity.a(this.f4458a, this.g, this.c);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        if (this.f != null) {
            this.f.cancel();
        }
        super.onInvalidate();
    }

    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        if (vastVideoConfig == null) {
            this.d.onInterstitialFailed(MoPubErrorCode.VIDEO_DOWNLOAD_ERROR);
            return;
        }
        this.g = vastVideoConfig;
        this.d.onInterstitialLoaded();
    }
}
