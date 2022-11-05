package com.applovin.impl.adview;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.RelativeLayout;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.cb;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x extends Dialog implements w {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f1569a;
    private final AppLovinSdk b;
    private final AppLovinLogger c;
    private RelativeLayout d;
    private AppLovinAdView e;
    private Runnable f;
    private u g;
    private Handler h;
    private ah i;
    private volatile boolean j;
    private volatile boolean k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(AppLovinSdk appLovinSdk, Activity activity) {
        super(activity, 16973840);
        this.i = null;
        this.j = false;
        this.k = false;
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.b = appLovinSdk;
        this.c = appLovinSdk.getLogger();
        this.f1569a = activity;
        this.f = new ag(this, null);
        this.h = new Handler();
        this.e = new AppLovinAdView(appLovinSdk, AppLovinAdSize.INTERSTITIAL, activity);
        this.e.setAutoDestroy(false);
        ((AdViewControllerImpl) this.e.getAdViewController()).setParentDialog(new WeakReference(this));
        requestWindowFeature(1);
        try {
            getWindow().setFlags(activity.getWindow().getAttributes().flags, activity.getWindow().getAttributes().flags);
        } catch (Exception e) {
            this.c.e("InterstitialAdDialog", "Set window flags failed.", e);
        }
    }

    private int a(int i) {
        return AppLovinSdkUtils.dpToPx(this.f1569a, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f1569a.runOnUiThread(new af(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        this.h.postDelayed(new ae(this), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(v vVar) {
        int i = 9;
        this.g = u.a(this.b, getContext(), vVar);
        this.g.setVisibility(8);
        this.g.setOnClickListener(new ac(this));
        this.g.setClickable(false);
        cb cbVar = new cb(this.b);
        int a2 = a(cbVar.l());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a2, a2);
        layoutParams.addRule(10);
        layoutParams.addRule(cbVar.y() ? 9 : 11);
        this.g.a(a2);
        int a3 = a(cbVar.n());
        int a4 = a(cbVar.p());
        layoutParams.setMargins(a4, a3, a4, a3);
        this.e.addView(this.g, layoutParams);
        this.g.bringToFront();
        int a5 = a(new cb(this.b).r());
        View view = new View(this.f1569a);
        view.setBackgroundColor(0);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(a2 + a5, a2 + a5);
        layoutParams2.addRule(10);
        if (!cbVar.x()) {
            i = 11;
        }
        layoutParams2.addRule(i);
        layoutParams2.setMargins(0, a3 - a(5), a4 - a(5), 0);
        view.setOnClickListener(new ad(this));
        this.e.addView(view, layoutParams2);
        view.bringToFront();
    }

    private void b() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.e.setLayoutParams(layoutParams);
        this.d = new RelativeLayout(this.f1569a);
        this.d.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.d.setBackgroundColor(-1157627904);
        this.d.addView(this.e);
        setContentView(this.d);
    }

    public void a(ah ahVar) {
        this.e.setAdDisplayListener(new y(this, ahVar));
        this.e.setAdClickListener(new z(this, ahVar));
        this.e.setAdVideoPlaybackListener(new aa(this, ahVar));
        this.i = ahVar;
        ahVar.a(true);
    }

    public void a(AppLovinAd appLovinAd, String str) {
        this.f1569a.runOnUiThread(new ab(this, appLovinAd, str));
    }

    @Override // android.app.Dialog, android.content.DialogInterface, com.applovin.impl.adview.w
    public void dismiss() {
        if (this.i != null) {
            this.i.h();
        }
        if (this.e != null) {
            this.e.destroy();
        }
        this.i = null;
        this.e = null;
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        b();
    }
}
