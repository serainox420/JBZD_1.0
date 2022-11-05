package com.revmob.ads.link;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Build;
import com.revmob.RevMobAdsListener;
import com.revmob.ads.link.a.b;
import com.revmob.internal.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ RevMobLink f4782a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(RevMobLink revMobLink) {
        this.f4782a = revMobLink;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        b bVar;
        RevMobAdsListener revMobAdsListener;
        activity = this.f4782a.f4781a;
        bVar = this.f4782a.b;
        revMobAdsListener = this.f4782a.f;
        d dVar = new d(activity, bVar, revMobAdsListener);
        if (Build.VERSION.SDK_INT >= 11) {
            dVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            dVar.execute(new Void[0]);
        }
    }
}
