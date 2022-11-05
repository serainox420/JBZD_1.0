package com.applovin.adview;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.applovin.impl.sdk.cb;
import com.applovin.sdk.AppLovinLogger;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1517a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1517a = appLovinInterstitialActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        boolean z;
        com.applovin.impl.adview.u uVar;
        com.applovin.impl.adview.u uVar2;
        cb cbVar;
        com.applovin.impl.adview.u uVar3;
        boolean j;
        View view;
        View view2;
        View view3;
        try {
            z = this.f1517a.o;
            if (z) {
                return;
            }
            uVar = this.f1517a.z;
            if (uVar == null) {
                return;
            }
            this.f1517a.o = true;
            uVar2 = this.f1517a.z;
            uVar2.setVisibility(0);
            AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            cbVar = this.f1517a.e;
            alphaAnimation.setDuration(cbVar.e());
            alphaAnimation.setRepeatCount(0);
            uVar3 = this.f1517a.z;
            uVar3.startAnimation(alphaAnimation);
            j = this.f1517a.j();
            if (!j) {
                return;
            }
            view = this.f1517a.A;
            if (view == null) {
                return;
            }
            view2 = this.f1517a.A;
            view2.setVisibility(0);
            view3 = this.f1517a.A;
            view3.bringToFront();
        } catch (Throwable th) {
            appLovinLogger = this.f1517a.d;
            appLovinLogger.w("AppLovinInterstitialActivity", "Unable to show skip button: " + th);
        }
    }
}
