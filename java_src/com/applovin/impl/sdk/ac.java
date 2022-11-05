package com.applovin.impl.sdk;

import android.os.Handler;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ac implements AppLovinAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ aa f1583a;
    private final AppLovinAdLoadListener b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(aa aaVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f1583a = aaVar;
        this.b = appLovinAdLoadListener;
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        Handler handler;
        this.f1583a.c = (AppLovinAdImpl) appLovinAd;
        if (this.b != null) {
            handler = this.f1583a.f;
            handler.post(new ad(this, appLovinAd));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        Handler handler;
        if (this.b != null) {
            handler = this.f1583a.f;
            handler.post(new ae(this, i));
        }
    }
}
