package com.applovin.impl.adview;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f1554a;

    private f(AdViewControllerImpl adViewControllerImpl) {
        this.f1554a = adViewControllerImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ f(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        o oVar;
        oVar = this.f1554a.i;
        oVar.setVisibility(8);
    }
}
