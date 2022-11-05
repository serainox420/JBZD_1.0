package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinPostbackListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bq implements AppLovinPostbackListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinPostbackListener f1619a;
    final /* synthetic */ PostbackServiceImpl b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bq(PostbackServiceImpl postbackServiceImpl, AppLovinPostbackListener appLovinPostbackListener) {
        this.b = postbackServiceImpl;
        this.f1619a = appLovinPostbackListener;
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackFailure(String str, int i) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.b.f1579a;
        appLovinSdkImpl.getLogger().e("PostbackService", "Failed to dispatch postback to URL " + str + ": " + i);
        if (this.f1619a != null) {
            this.f1619a.onPostbackFailure(str, i);
        }
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackSuccess(String str) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.b.f1579a;
        appLovinSdkImpl.getLogger().d("PostbackService", "Successfully dispatched postback to URL " + str);
        if (this.f1619a != null) {
            this.f1619a.onPostbackSuccess(str);
        }
    }
}
