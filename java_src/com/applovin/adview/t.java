package com.applovin.adview;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1531a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1531a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1531a.t();
    }
}
