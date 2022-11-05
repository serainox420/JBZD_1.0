package com.applovin.impl.sdk;
/* loaded from: classes.dex */
public class cj extends bw {

    /* renamed from: a  reason: collision with root package name */
    private final ck f1633a;

    public cj(AppLovinSdkImpl appLovinSdkImpl, ck ckVar) {
        super("TaskCollectAdvertisingId", appLovinSdkImpl);
        this.f1633a = ckVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1633a.a(this.f.getDataCollector().c());
    }
}
