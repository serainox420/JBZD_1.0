package com.applovin.impl.sdk;
/* loaded from: classes.dex */
class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e f1658a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(e eVar) {
        this.f1658a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1658a.f1656a.removeClickTrackingOverlay();
    }
}
