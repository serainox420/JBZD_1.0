package com.applovin.impl.sdk;

import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class cy extends bw implements p {

    /* renamed from: a  reason: collision with root package name */
    private int f1647a;
    private long b;
    private final p c;
    private bz d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cy(String str, int i, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, appLovinSdkImpl);
        this.b = -1L;
        this.d = null;
        this.f1647a = i;
        this.c = new cz(this, appLovinSdkImpl, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cy(String str, bz bzVar, AppLovinSdkImpl appLovinSdkImpl) {
        this(str, ((Integer) appLovinSdkImpl.a(bzVar)).intValue(), appLovinSdkImpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.d != null) {
            ca settingsManager = this.f.getSettingsManager();
            settingsManager.a(this.d, this.d.c());
            settingsManager.b();
        }
    }

    public void a(int i) {
    }

    public void a(long j) {
        this.b = j;
    }

    public void a(bz bzVar) {
        this.d = bzVar;
    }

    protected abstract void a(o oVar, p pVar);

    public void a(JSONObject jSONObject, int i) {
    }

    @Override // java.lang.Runnable
    public void run() {
        a(this.f.getConnectionManager(), this.c);
    }
}
