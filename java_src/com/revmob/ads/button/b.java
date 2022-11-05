package com.revmob.ads.button;
/* loaded from: classes3.dex */
final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4758a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f4758a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4758a.f4757a.performLinkClick();
    }
}
