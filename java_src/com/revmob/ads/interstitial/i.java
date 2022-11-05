package com.revmob.ads.interstitial;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4773a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(a aVar) {
        this.f4773a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f4773a);
    }
}
