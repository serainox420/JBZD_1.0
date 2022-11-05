package com.applovin.adview;

import android.app.Activity;
import com.applovin.impl.adview.InterstitialAdDialogCreatorImpl;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes.dex */
final class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinSdk f1532a;
    final /* synthetic */ Activity b;
    final /* synthetic */ String c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(AppLovinSdk appLovinSdk, Activity activity, String str) {
        this.f1532a = appLovinSdk;
        this.b = activity;
        this.c = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(this.f1532a, this.b).show(this.c);
    }
}
