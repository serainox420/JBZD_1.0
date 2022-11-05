package com.applovin.adview;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.impl.sdk.cb;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1525a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1525a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AppLovinSdkImpl appLovinSdkImpl;
        cb cbVar;
        com.applovin.impl.adview.s sVar;
        com.applovin.impl.adview.s sVar2;
        com.applovin.impl.adview.s sVar3;
        com.applovin.impl.adview.s sVar4;
        float f = 1.0f;
        appLovinSdkImpl = this.f1525a.f;
        appLovinSdkImpl.getLogger().d("AppLovinInterstitialActivity", "Video view tapped!");
        cbVar = this.f1525a.e;
        if (cbVar.z()) {
            sVar = this.f1525a.B;
            if (sVar == null) {
                return;
            }
            sVar2 = this.f1525a.B;
            if (sVar2.getVisibility() == 8) {
                return;
            }
            sVar3 = this.f1525a.B;
            boolean z = sVar3.getVisibility() == 4;
            float f2 = z ? 0.0f : 1.0f;
            if (!z) {
                f = 0.0f;
            }
            AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f);
            alphaAnimation.setDuration(750L);
            alphaAnimation.setAnimationListener(new o(this, z));
            sVar4 = this.f1525a.B;
            sVar4.startAnimation(alphaAnimation);
        }
    }
}
