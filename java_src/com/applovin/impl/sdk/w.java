package com.applovin.impl.sdk;

import android.net.Uri;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements ck {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bt f1671a;
    final /* synthetic */ EventServiceImpl b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(EventServiceImpl eventServiceImpl, bt btVar) {
        this.b = eventServiceImpl;
        this.f1671a = btVar;
    }

    @Override // com.applovin.impl.sdk.ck
    public void a(t tVar) {
        AppLovinSdkImpl appLovinSdkImpl;
        Uri a2;
        AppLovinSdkImpl appLovinSdkImpl2;
        try {
            a2 = this.b.a(this.f1671a, tVar);
            appLovinSdkImpl2 = this.b.f1577a;
            appLovinSdkImpl2.getPersistentPostbackManager().a(a2.toString(), this.f1671a.b());
        } catch (Exception e) {
            appLovinSdkImpl = this.b.f1577a;
            appLovinSdkImpl.getLogger().e("EventServiceImpl", "Unable to track event due to failure to convert event parameters into JSONObject for event: " + this.f1671a, e);
        }
    }
}
