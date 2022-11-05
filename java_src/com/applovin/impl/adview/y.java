package com.applovin.impl.adview;

import android.app.Activity;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class y implements AppLovinAdDisplayListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ah f1570a;
    final /* synthetic */ x b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x xVar, ah ahVar) {
        this.b = xVar;
        this.f1570a = ahVar;
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        boolean z;
        super/*android.app.Dialog*/.show();
        z = this.b.j;
        if (!z) {
            AppLovinAdDisplayListener d = this.f1570a.d();
            if (d != null) {
                d.adDisplayed(appLovinAd);
            }
            this.b.j = true;
        }
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        Activity activity;
        Runnable runnable;
        boolean z;
        activity = this.b.f1569a;
        runnable = this.b.f;
        activity.runOnUiThread(runnable);
        AppLovinAdDisplayListener d = this.f1570a.d();
        z = this.b.k;
        if (!z && d != null) {
            d.adHidden(appLovinAd);
            this.b.k = true;
        }
        this.f1570a.a(false);
    }
}
