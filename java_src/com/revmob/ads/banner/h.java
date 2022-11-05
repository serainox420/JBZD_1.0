package com.revmob.ads.banner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ RevMobBanner f4753a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(RevMobBanner revMobBanner) {
        this.f4753a = revMobBanner;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4753a.configureAndAnimateView();
    }
}
