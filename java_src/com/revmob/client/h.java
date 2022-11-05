package com.revmob.client;

import android.app.Activity;
import com.revmob.RevMobAdsListener;
import com.revmob.internal.m;
/* loaded from: classes3.dex */
final class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ g f4792a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar) {
        this.f4792a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        RevMobAdsListener revMobAdsListener;
        m mVar;
        g gVar = this.f4792a;
        activity = this.f4792a.f4791a;
        revMobAdsListener = this.f4792a.d;
        gVar.e = new m(activity, revMobAdsListener);
        mVar = this.f4792a.e;
        mVar.b();
    }
}
