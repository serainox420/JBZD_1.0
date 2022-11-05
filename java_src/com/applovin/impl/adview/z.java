package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z implements AppLovinAdClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ah f1571a;
    final /* synthetic */ x b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(x xVar, ah ahVar) {
        this.b = xVar;
        this.f1571a = ahVar;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        AppLovinAdClickListener e = this.f1571a.e();
        if (e != null) {
            e.adClicked(appLovinAd);
        }
    }
}
