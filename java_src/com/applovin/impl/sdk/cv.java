package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ cr f1644a;
    private final String b;
    private final bw c;
    private final cs d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cv(cr crVar, bw bwVar, cs csVar) {
        this.f1644a = crVar;
        this.b = bwVar.a();
        this.c = bwVar;
        this.d = csVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        AppLovinSdkImpl appLovinSdkImpl;
        AppLovinLogger appLovinLogger2;
        AppLovinSdkImpl appLovinSdkImpl2;
        AppLovinSdkImpl appLovinSdkImpl3;
        AppLovinLogger appLovinLogger3;
        AppLovinSdkImpl appLovinSdkImpl4;
        AppLovinLogger appLovinLogger4;
        AppLovinLogger appLovinLogger5;
        AppLovinSdkImpl appLovinSdkImpl5;
        AppLovinSdkImpl appLovinSdkImpl6;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            n.a();
            appLovinSdkImpl = this.f1644a.f1640a;
            if (appLovinSdkImpl.e()) {
                appLovinLogger2 = this.f1644a.b;
                appLovinLogger2.i(this.b, "Task re-scheduled...");
                this.f1644a.a(this.c, this.d, 2000L);
                return;
            }
            appLovinSdkImpl2 = this.f1644a.f1640a;
            if (!appLovinSdkImpl2.isEnabled()) {
                appLovinSdkImpl3 = this.f1644a.f1640a;
                if (appLovinSdkImpl3.f()) {
                    appLovinSdkImpl4 = this.f1644a.f1640a;
                    appLovinSdkImpl4.g();
                } else {
                    appLovinLogger3 = this.f1644a.b;
                    appLovinLogger3.w(this.b, "Task not executed, SDK is disabled");
                }
                this.c.b();
                return;
            }
            appLovinLogger4 = this.f1644a.b;
            appLovinLogger4.i(this.b, "Task started execution...");
            this.c.run();
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (this.c instanceof dh) {
                dh dhVar = (dh) this.c;
                dc a2 = dc.a();
                String e = dhVar.e();
                appLovinSdkImpl6 = this.f1644a.f1640a;
                a2.a(e, currentTimeMillis2, q.a(appLovinSdkImpl6), dhVar.f());
            }
            appLovinLogger5 = this.f1644a.b;
            appLovinLogger5.i(this.b, "Task executed successfully in " + currentTimeMillis2 + "ms.");
            appLovinSdkImpl5 = this.f1644a.f1640a;
            cc b = appLovinSdkImpl5.b();
            b.a(this.b + "_count");
            b.a(this.b + "_time", currentTimeMillis2);
        } catch (Throwable th) {
            appLovinLogger = this.f1644a.b;
            appLovinLogger.e(this.b, "Task failed execution in " + (System.currentTimeMillis() - currentTimeMillis) + "ms.", th);
        }
    }
}
