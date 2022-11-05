package com.applovin.adview;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1529a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1529a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.applovin.impl.adview.u uVar;
        uVar = this.f1529a.x;
        uVar.performClick();
    }
}
