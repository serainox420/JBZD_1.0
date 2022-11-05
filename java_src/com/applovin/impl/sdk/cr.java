package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
import com.intentsoftware.addapptr.ad.NativeAd;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cr {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1640a;
    private final AppLovinLogger b;
    private final ScheduledExecutorService c = a(NativeAd.MAIN_IMAGE_ASSET);
    private final ScheduledExecutorService d = a("back");
    private final ScheduledExecutorService e = a("postbacks");

    /* JADX INFO: Access modifiers changed from: package-private */
    public cr(AppLovinSdkImpl appLovinSdkImpl) {
        this.f1640a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
    }

    private static void a(Runnable runnable, long j, ScheduledExecutorService scheduledExecutorService) {
        if (j > 0) {
            scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
        } else {
            scheduledExecutorService.submit(runnable);
        }
    }

    ScheduledExecutorService a(String str) {
        return Executors.newScheduledThreadPool(1, new ct(this, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(bw bwVar, cs csVar) {
        a(bwVar, csVar, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(bw bwVar, cs csVar, long j) {
        if (bwVar == null) {
            throw new IllegalArgumentException("No task specified");
        }
        if (j < 0) {
            throw new IllegalArgumentException("Invalid delay specified: " + j);
        }
        this.b.d(bwVar.e, "Scheduling " + bwVar.e + " on " + csVar + " queue in " + j + "ms.");
        cv cvVar = new cv(this, bwVar, csVar);
        if (csVar == cs.MAIN) {
            a(cvVar, j, this.c);
        } else if (csVar == cs.BACKGROUND) {
            a(cvVar, j, this.d);
        } else if (csVar != cs.POSTBACKS) {
        } else {
            a(cvVar, j, this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(cq cqVar, long j) {
        if (cqVar == null) {
            throw new IllegalArgumentException("No task specified");
        }
        a(cqVar, j, this.c);
    }
}
