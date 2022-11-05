package com.applovin.impl.adview;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ae implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ x f1541a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(x xVar) {
        this.f1541a = xVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        u uVar;
        this.f1541a.a();
        uVar = this.f1541a.g;
        uVar.setClickable(true);
    }
}
