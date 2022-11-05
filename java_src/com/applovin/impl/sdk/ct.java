package com.applovin.impl.sdk;

import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ct implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ cr f1642a;
    private final String b;

    public ct(cr crVar, String str) {
        this.f1642a = crVar;
        this.b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        AppLovinSdkImpl appLovinSdkImpl;
        StringBuilder append = new StringBuilder().append("AppLovinSdk:").append(this.b).append(":");
        appLovinSdkImpl = this.f1642a.f1640a;
        Thread thread = new Thread(runnable, append.append(di.a(appLovinSdkImpl.getSdkKey())).toString());
        thread.setDaemon(true);
        thread.setPriority(10);
        thread.setUncaughtExceptionHandler(new cu(this));
        return thread;
    }
}
