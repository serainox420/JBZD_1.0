package com.applovin.impl.sdk;
/* loaded from: classes.dex */
class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e f1657a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.f1657a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f1657a.f1656a.isForegroundClickInvalidated()) {
            this.f1657a.e.a(this.f1657a.b, this.f1657a.c, this.f1657a.d, this.f1657a.f1656a);
        }
    }
}
