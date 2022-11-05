package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinPostbackListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bo implements AppLovinPostbackListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bp f1617a;
    final /* synthetic */ bn b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo(bn bnVar, bp bpVar) {
        this.b = bnVar;
        this.f1617a = bpVar;
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackFailure(String str, int i) {
        AppLovinLogger appLovinLogger;
        appLovinLogger = this.b.b;
        appLovinLogger.i("PersistentPostbackManager", "Failed to submit postback with errorCode " + i + ". Will retry later...  Postback: " + this.f1617a);
        this.b.e(this.f1617a);
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackSuccess(String str) {
        AppLovinLogger appLovinLogger;
        this.b.d(this.f1617a);
        appLovinLogger = this.b.b;
        appLovinLogger.d("PersistentPostbackManager", "Successfully submitted postback: " + this.f1617a);
        this.b.b();
    }
}
