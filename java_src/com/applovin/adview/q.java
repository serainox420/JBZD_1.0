package com.applovin.adview;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1528a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1528a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1528a.q();
    }
}
