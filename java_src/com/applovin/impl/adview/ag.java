package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ x f1543a;

    private ag(x xVar) {
        this.f1543a = xVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ag(x xVar, y yVar) {
        this(xVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        AppLovinLogger appLovinLogger2;
        try {
            this.f1543a.dismiss();
        } catch (Throwable th) {
            appLovinLogger = this.f1543a.c;
            if (appLovinLogger == null) {
                return;
            }
            appLovinLogger2 = this.f1543a.c;
            appLovinLogger2.e("InterstitialAdDialog", "dismiss() threw exception", th);
        }
    }
}
