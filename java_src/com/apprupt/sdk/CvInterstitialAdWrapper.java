package com.apprupt.sdk;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.adview.ExpandProperties;
import com.apprupt.sdk.adview.OrientationProperties;
import com.apprupt.sdk.mediation.AdWrapper;
import com.apprupt.sdk.mediation.Adapter;
import com.apprupt.sdk.mediation.InterstitialAdWrapper;
import com.apprupt.sdk.mediation.Mediator;
import com.apprupt.sdk.mediation.Size;
import com.apprupt.sdk.mediation.ValueExchangeCompletion;
/* loaded from: classes.dex */
public class CvInterstitialAdWrapper extends CvAdWrapper implements InterstitialAdWrapper {
    private final Logger.log b;
    private volatile InterstitialAdWrapper.Listener c;
    private volatile CvInterstitialActivity d;
    private MRAIDView e;
    private ValueExchangeCompletion f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvInterstitialAdWrapper(Adapter adapter, CvMediator cvMediator) {
        super(adapter, cvMediator);
        this.b = Logger.a("Lifecycle.InterstitialWrapper");
        this.c = null;
        this.d = null;
        this.e = null;
        a(cvMediator.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ValueExchangeCompletion valueExchangeCompletion) {
        if (valueExchangeCompletion == null) {
            this.f = new ValueExchangeCompletion() { // from class: com.apprupt.sdk.CvInterstitialAdWrapper.1
                @Override // com.apprupt.sdk.mediation.ValueExchangeCompletion
                public void a(String str, Adapter adapter, AdWrapper adWrapper) {
                }
            };
        } else {
            this.f = valueExchangeCompletion;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CvInterstitialActivity cvInterstitialActivity) {
        this.d = cvInterstitialActivity;
    }

    @Override // com.apprupt.sdk.CvAdWrapper
    void l() {
        m().b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.apprupt.sdk.CvAdWrapper
    public void a(Size size) {
        Size.Computed a2 = size.a(m().b(), 0, 0, true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a2.f1998a, a2.b);
        layoutParams.addRule(13);
        int b = CvViewHelper.b(50.0f);
        this.e.setLayoutParams(layoutParams);
        this.e.setMinimumHeight(b);
    }

    @Override // com.apprupt.sdk.mediation.InterstitialAdWrapper
    public void a(InterstitialAdWrapper.Listener listener) {
        this.c = listener;
    }

    @Override // com.apprupt.sdk.mediation.InterstitialAdWrapper
    public InterstitialAdWrapper.Listener a() {
        return this.c;
    }

    @Override // com.apprupt.sdk.mediation.InterstitialAdWrapper
    public void b() {
        this.b.b("load mraid view...");
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInterstitialAdWrapper.2
            @Override // java.lang.Runnable
            public void run() {
                Context b = CvInterstitialAdWrapper.this.m().b();
                CvInterstitialAdWrapper.this.e = new MRAIDView(b, CvInterstitialAdWrapper.this, true, new Runnable() { // from class: com.apprupt.sdk.CvInterstitialAdWrapper.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CvInterstitialAdWrapper.this.t();
                    }
                });
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        this.b.b("Present interstitial");
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInterstitialAdWrapper.3
            @Override // java.lang.Runnable
            public void run() {
                CvInterstitialAdWrapper.this.a(CvInterstitialAdWrapper.this.n());
                CvInterstitialActivity.a(CvInterstitialAdWrapper.this.d().getContext(), CvInterstitialAdWrapper.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInterstitialAdWrapper.4
            @Override // java.lang.Runnable
            public void run() {
                CvInterstitialAdWrapper.this.f.a(CvInterstitialAdWrapper.this.m().d(), CvInterstitialAdWrapper.this.i(), CvInterstitialAdWrapper.this);
                CvInterstitialAdWrapper.this.a((ValueExchangeCompletion) null);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View d() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExpandProperties p() {
        return this.e.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OrientationProperties q() {
        return this.e.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Runnable r() {
        return this.e.e();
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public void a(boolean z) {
        try {
            if (this.d != null) {
                this.d.a(z);
            }
        } catch (Exception e) {
        }
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public void a(int i) {
        try {
            if (this.d != null) {
                this.d.a(i);
            }
        } catch (Exception e) {
        }
    }

    @Override // com.apprupt.sdk.CvAdWrapper, com.apprupt.sdk.mediation.AdWrapper
    public void a(Mediator mediator) {
        super.a(mediator);
        a(m().e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        this.e.b();
        this.e = null;
        this.c = null;
        this.d = null;
        this.f = null;
    }
}
