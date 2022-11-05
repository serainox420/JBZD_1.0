package com.applovin.adview;

import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f1519a;
    final /* synthetic */ UUID b;
    final /* synthetic */ AppLovinInterstitialActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(AppLovinInterstitialActivity appLovinInterstitialActivity, int i, UUID uuid) {
        this.c = appLovinInterstitialActivity;
        this.f1519a = i;
        this.b = uuid;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.a(this.f1519a, this.b);
    }
}
