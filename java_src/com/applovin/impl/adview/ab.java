package com.applovin.impl.adview;

import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.impl.sdk.di;
import com.applovin.sdk.AppLovinAd;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAd f1538a;
    final /* synthetic */ String b;
    final /* synthetic */ x c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(x xVar, AppLovinAd appLovinAd, String str) {
        this.c = xVar;
        this.f1538a = appLovinAd;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdView appLovinAdView;
        u uVar;
        u uVar2;
        appLovinAdView = this.c.e;
        appLovinAdView.renderAd(this.f1538a, this.b);
        this.c.a(((AppLovinAdImpl) this.f1538a).getCloseStyle());
        float closeDelay = ((AppLovinAdImpl) this.f1538a).getCloseDelay();
        if (closeDelay > BitmapDescriptorFactory.HUE_RED) {
            this.c.a(di.c(closeDelay));
            return;
        }
        uVar = this.c.g;
        uVar.setVisibility(0);
        uVar2 = this.c.g;
        uVar2.setClickable(true);
    }
}
