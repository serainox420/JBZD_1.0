package com.applovin.impl.sdk;

import android.net.Uri;
import android.os.Handler;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.sdk.AppLovinPostbackListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements AppLovinPostbackListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f1656a;
    final /* synthetic */ Uri b;
    final /* synthetic */ AppLovinAdImpl c;
    final /* synthetic */ AppLovinAdView d;
    final /* synthetic */ AppLovinAdServiceImpl e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(AppLovinAdServiceImpl appLovinAdServiceImpl, AdViewControllerImpl adViewControllerImpl, Uri uri, AppLovinAdImpl appLovinAdImpl, AppLovinAdView appLovinAdView) {
        this.e = appLovinAdServiceImpl;
        this.f1656a = adViewControllerImpl;
        this.b = uri;
        this.c = appLovinAdImpl;
        this.d = appLovinAdView;
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackFailure(String str, int i) {
        Handler handler;
        handler = this.e.c;
        handler.post(new g(this));
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackSuccess(String str) {
        Handler handler;
        handler = this.e.c;
        handler.post(new f(this));
    }
}
