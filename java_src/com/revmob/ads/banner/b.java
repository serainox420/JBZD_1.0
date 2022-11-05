package com.revmob.ads.banner;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Build;
import android.view.View;
import com.revmob.RevMobAdsListener;
/* loaded from: classes3.dex */
final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4747a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f4747a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        View view;
        Activity activity;
        com.revmob.ads.banner.a.b bVar;
        RevMobAdsListener revMobAdsListener;
        boolean z2;
        String str;
        z = this.f4747a.f4746a.j;
        if (!z) {
            view = this.f4747a.f4746a.e;
            view.setOnClickListener(null);
            this.f4747a.f4746a.j = true;
            this.f4747a.f4746a.f = com.revmob.ads.a.c.g;
            activity = this.f4747a.f4746a.b;
            bVar = this.f4747a.f4746a.c;
            revMobAdsListener = this.f4747a.f4746a.d;
            com.revmob.internal.d dVar = new com.revmob.internal.d(activity, bVar, revMobAdsListener);
            if (Build.VERSION.SDK_INT >= 11) {
                dVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else {
                dVar.execute(new Void[0]);
            }
            this.f4747a.f4746a.release();
            z2 = this.f4747a.f4746a.k;
            if (!z2) {
                return;
            }
            this.f4747a.f4746a.m = true;
            RevMobBanner revMobBanner = this.f4747a.f4746a;
            str = this.f4747a.f4746a.g;
            revMobBanner.load(str);
        }
    }
}
