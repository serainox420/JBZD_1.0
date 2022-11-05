package com.applovin.impl.sdk;

import android.app.Activity;
import android.widget.Toast;
/* loaded from: classes.dex */
public class ap {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1596a;
    private final String b;
    private final Activity c;

    public ap(AppLovinSdkImpl appLovinSdkImpl, Activity activity, String str) {
        this.f1596a = appLovinSdkImpl;
        this.b = str;
        this.c = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.c.runOnUiThread(new aq(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, Throwable th) {
        this.f1596a.getLogger().userError("IncentivizedConfirmationManager", "Unable to show incentivized ad reward dialog. Have you defined com.applovin.adview.AppLovinConfirmationActivity in your manifest?", th);
        Toast.makeText(this.c, str, 1).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.b.equals("accepted") ? (String) this.f1596a.a(bx.P) : this.b.equals("quota_exceeded") ? (String) this.f1596a.a(bx.Q) : this.b.equals("rejected") ? (String) this.f1596a.a(bx.R) : (String) this.f1596a.a(bx.S);
    }
}
