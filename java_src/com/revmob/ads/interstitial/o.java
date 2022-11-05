package com.revmob.ads.interstitial;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4779a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(a aVar) {
        this.f4779a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4779a.b();
        this.f4779a.m();
    }
}
