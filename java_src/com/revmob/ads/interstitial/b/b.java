package com.revmob.ads.interstitial.b;

import android.os.AsyncTask;
import android.os.Build;
/* loaded from: classes3.dex */
final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f4763a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f4763a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.revmob.internal.d dVar = new com.revmob.internal.d(this.f4763a.f4762a, this.f4763a.f4762a.b, this.f4763a.f4762a.c, new c(this), this.f4763a.b);
        if (Build.VERSION.SDK_INT >= 11) {
            dVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            dVar.execute(new Void[0]);
        }
    }
}
