package com.applovin.impl.adview;
/* loaded from: classes.dex */
class am implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ah f1549a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(ah ahVar) {
        this.f1549a = ahVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        w wVar;
        wVar = this.f1549a.m;
        wVar.dismiss();
    }
}
