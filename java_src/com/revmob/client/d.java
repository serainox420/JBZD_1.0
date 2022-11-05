package com.revmob.client;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Build;
import com.revmob.RevMobAdsListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f4789a;
    private /* synthetic */ RevMobAdsListener b;
    private /* synthetic */ RevMobClient c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(RevMobClient revMobClient, String str, RevMobAdsListener revMobAdsListener) {
        this.c = revMobClient;
        this.f4789a = str;
        this.b = revMobAdsListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        Activity activity;
        StringBuilder sb = new StringBuilder();
        str = this.c.i;
        com.revmob.ads.link.a.b bVar = new com.revmob.ads.link.a.b("", "", sb.append(RevMobClient.a("link", "anchors", str, this.f4789a, false)).append("?redirect=1").toString(), true, "app", true);
        com.revmob.a.e.c = true;
        activity = RevMobClient.h;
        com.revmob.internal.d dVar = new com.revmob.internal.d(activity, bVar, this.b);
        if (Build.VERSION.SDK_INT >= 11) {
            dVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            dVar.execute(new Void[0]);
        }
    }
}
