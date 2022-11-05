package com.revmob.ads.interstitial;

import android.os.Handler;
import com.pubmatic.sdk.common.CommonConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private int f4780a;
    private /* synthetic */ int b;
    private /* synthetic */ a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(a aVar, int i) {
        this.c = aVar;
        this.b = i;
        this.f4780a = this.b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable;
        if (this.f4780a + CommonConstants.PubError.REQUEST_ERROR < 0) {
            this.f4780a = 0;
            this.c.g.removeCallbacks(this);
            return;
        }
        this.f4780a += CommonConstants.PubError.REQUEST_ERROR;
        this.c.c.setText(String.format("%02d", Integer.valueOf(this.f4780a / 1000)));
        Handler handler = this.c.g;
        runnable = this.c.C;
        handler.postDelayed(runnable, 1000L);
    }
}
