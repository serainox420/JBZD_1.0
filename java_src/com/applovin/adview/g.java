package com.applovin.adview;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.applovin.impl.adview.u f1518a;
    final /* synthetic */ AppLovinInterstitialActivity b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(AppLovinInterstitialActivity appLovinInterstitialActivity, com.applovin.impl.adview.u uVar) {
        this.b = appLovinInterstitialActivity;
        this.f1518a = uVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.applovin.impl.adview.u uVar;
        com.applovin.impl.adview.u uVar2;
        com.applovin.impl.adview.u uVar3 = this.f1518a;
        uVar = this.b.x;
        if (uVar3.equals(uVar)) {
            this.b.i();
            return;
        }
        com.applovin.impl.adview.u uVar4 = this.f1518a;
        uVar2 = this.b.z;
        if (!uVar4.equals(uVar2)) {
            return;
        }
        this.b.k();
    }
}
