package com.mopub.mobileads;

import android.content.Context;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
/* loaded from: classes3.dex */
class RewardedVastVideoInterstitial extends VastVideoInterstitial {
    private RewardedVideoBroadcastReceiver d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface a extends CustomEventInterstitial.CustomEventInterstitialListener {
        void onVideoComplete();
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> map, Map<String, String> map2) {
        super.loadInterstitial(context, customEventInterstitialListener, map, map2);
        if (customEventInterstitialListener instanceof a) {
            this.d = new RewardedVideoBroadcastReceiver((a) customEventInterstitialListener, this.c);
            this.d.register(this.d, context);
        }
    }

    @Override // com.mopub.mobileads.VastVideoInterstitial, com.mopub.mobileads.VastManager.VastManagerListener
    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        if (vastVideoConfig != null) {
            vastVideoConfig.setIsRewardedVideo(true);
        }
        super.onVastVideoConfigurationPrepared(vastVideoConfig);
    }

    @Override // com.mopub.mobileads.VastVideoInterstitial, com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        super.onInvalidate();
        if (this.d != null) {
            this.d.unregister(this.d);
        }
    }
}
