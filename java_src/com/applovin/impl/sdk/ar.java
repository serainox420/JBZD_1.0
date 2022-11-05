package com.applovin.impl.sdk;

import android.app.Activity;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import java.util.Timer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1598a;
    private final aa b;
    private Activity c;
    private AppLovinAdDisplayListener d;
    private AppLovinAdVideoPlaybackListener e;
    private AppLovinAdClickListener f;
    private AppLovinAdRewardListener g;
    private final Timer h = new Timer("IncentivizedAdLauncher");

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(AppLovinSdkImpl appLovinSdkImpl, aa aaVar) {
        this.f1598a = appLovinSdkImpl;
        this.b = aaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.b.a(this.c, this.g, this.e, this.d, this.f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.c.runOnUiThread(new as(this));
    }

    public void a(Activity activity) {
        this.c = activity;
    }

    public void a(AppLovinAdClickListener appLovinAdClickListener) {
        this.f = appLovinAdClickListener;
    }

    public void a(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.d = appLovinAdDisplayListener;
    }

    public void a(AppLovinAdRewardListener appLovinAdRewardListener) {
        this.g = appLovinAdRewardListener;
    }

    public void a(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.e = appLovinAdVideoPlaybackListener;
    }
}
