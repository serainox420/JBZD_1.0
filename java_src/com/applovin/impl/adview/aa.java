package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aa implements AppLovinAdVideoPlaybackListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ah f1537a;
    final /* synthetic */ x b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(x xVar, ah ahVar) {
        this.b = xVar;
        this.f1537a = ahVar;
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        AppLovinAdVideoPlaybackListener c = this.f1537a.c();
        if (c != null) {
            c.videoPlaybackBegan(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        AppLovinAdVideoPlaybackListener c = this.f1537a.c();
        if (c != null) {
            c.videoPlaybackEnded(appLovinAd, d, z);
        }
    }
}
