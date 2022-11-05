package com.applovin.adview;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1530a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1530a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.applovin.impl.adview.u uVar;
        uVar = this.f1530a.z;
        uVar.performClick();
    }
}
