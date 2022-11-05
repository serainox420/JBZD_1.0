package com.applovin.adview;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.applovin.impl.sdk.cb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1516a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1516a = appLovinInterstitialActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        boolean j;
        com.applovin.impl.adview.u uVar;
        com.applovin.impl.adview.u uVar2;
        cb cbVar;
        com.applovin.impl.adview.u uVar3;
        View view;
        View view2;
        View view3;
        com.applovin.impl.adview.u uVar4;
        try {
            z = this.f1516a.n;
            if (z) {
                uVar4 = this.f1516a.x;
                uVar4.setVisibility(0);
                return;
            }
            this.f1516a.n = true;
            j = this.f1516a.j();
            if (j) {
                view = this.f1516a.y;
                if (view != null) {
                    view2 = this.f1516a.y;
                    view2.setVisibility(0);
                    view3 = this.f1516a.y;
                    view3.bringToFront();
                }
            }
            uVar = this.f1516a.x;
            uVar.setVisibility(0);
            uVar2 = this.f1516a.x;
            uVar2.bringToFront();
            AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            cbVar = this.f1516a.e;
            alphaAnimation.setDuration(cbVar.e());
            alphaAnimation.setRepeatCount(0);
            uVar3 = this.f1516a.x;
            uVar3.startAnimation(alphaAnimation);
        } catch (Throwable th) {
            this.f1516a.dismiss();
        }
    }
}
