package com.revmob.internal;

import android.app.Activity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f4801a;
    private /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, String str) {
        this.f4801a = dVar;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        activity = this.f4801a.b;
        new com.revmob.ads.interstitial.b.i(activity, new g(this)).postUrl(this.b, "".getBytes());
    }
}
