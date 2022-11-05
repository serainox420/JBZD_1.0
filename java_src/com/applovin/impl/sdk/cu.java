package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
import java.lang.Thread;
/* loaded from: classes.dex */
class cu implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ct f1643a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cu(ct ctVar) {
        this.f1643a = ctVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        AppLovinLogger appLovinLogger;
        appLovinLogger = this.f1643a.f1642a.b;
        appLovinLogger.e("TaskManager", "Caught unhandled exception", th);
    }
}
