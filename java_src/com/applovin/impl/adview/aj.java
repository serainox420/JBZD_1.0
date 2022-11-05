package com.applovin.impl.adview;

import android.app.Activity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f1546a;
    final /* synthetic */ boolean b;
    final /* synthetic */ Activity c;
    final /* synthetic */ ah d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(ah ahVar, boolean z, boolean z2, Activity activity) {
        this.d = ahVar;
        this.f1546a = z;
        this.b = z2;
        this.c = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f1546a || !this.b) {
            this.d.a(this.c);
        } else {
            this.d.b(this.c);
        }
    }
}
