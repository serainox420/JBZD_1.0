package com.applovin.impl.adview;

import android.view.animation.AlphaAnimation;
import com.applovin.impl.sdk.cb;
import com.applovin.sdk.AppLovinSdk;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ x f1542a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(x xVar) {
        this.f1542a = xVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        u uVar;
        u uVar2;
        AppLovinSdk appLovinSdk;
        u uVar3;
        try {
            uVar = this.f1542a.g;
            uVar.setVisibility(0);
            uVar2 = this.f1542a.g;
            uVar2.bringToFront();
            appLovinSdk = this.f1542a.b;
            cb cbVar = new cb(appLovinSdk);
            AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            alphaAnimation.setDuration(cbVar.e());
            alphaAnimation.setRepeatCount(0);
            uVar3 = this.f1542a.g;
            uVar3.startAnimation(alphaAnimation);
        } catch (Throwable th) {
            this.f1542a.dismiss();
        }
    }
}
