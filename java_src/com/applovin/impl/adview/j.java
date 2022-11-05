package com.applovin.impl.adview;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f1558a;

    private j(AdViewControllerImpl adViewControllerImpl) {
        this.f1558a = adViewControllerImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ j(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        o oVar;
        try {
            oVar = this.f1558a.i;
            oVar.loadDataWithBaseURL("/", "<html></html>", "text/html", null, "");
        } catch (Exception e) {
        }
    }
}
