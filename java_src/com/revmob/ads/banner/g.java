package com.revmob.ads.banner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ RevMobBanner f4752a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(RevMobBanner revMobBanner) {
        this.f4752a = revMobBanner;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4752a.addAdView();
    }
}
