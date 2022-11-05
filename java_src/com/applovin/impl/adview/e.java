package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
/* loaded from: classes.dex */
class e implements AppLovinAdVideoPlaybackListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f1553a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(AdViewControllerImpl adViewControllerImpl) {
        this.f1553a = adViewControllerImpl;
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener;
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener2;
        appLovinAdVideoPlaybackListener = this.f1553a.x;
        if (appLovinAdVideoPlaybackListener != null) {
            appLovinAdVideoPlaybackListener2 = this.f1553a.x;
            appLovinAdVideoPlaybackListener2.videoPlaybackBegan(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener;
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener2;
        appLovinAdVideoPlaybackListener = this.f1553a.x;
        if (appLovinAdVideoPlaybackListener != null) {
            appLovinAdVideoPlaybackListener2 = this.f1553a.x;
            appLovinAdVideoPlaybackListener2.videoPlaybackEnded(appLovinAd, d, z);
        }
    }
}
