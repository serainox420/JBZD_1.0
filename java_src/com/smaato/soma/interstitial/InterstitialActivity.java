package com.smaato.soma.interstitial;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RelativeLayout;
import com.smaato.soma.exception.ClosingLandingPageFailed;
import com.smaato.soma.g;
import com.smaato.soma.j;
import com.smaato.soma.l;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class InterstitialActivity extends BaseActivity implements g {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5113a = true;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.interstitial.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new l<Void>() { // from class: com.smaato.soma.interstitial.InterstitialActivity.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                Interstitial.c().setContext((Activity) new WeakReference(InterstitialActivity.this).get());
                InterstitialActivity.this.setRequestedOrientation(com.smaato.soma.internal.requests.settings.a.a().a(InterstitialActivity.this.getIntent().getIntExtra("rotation", 0), InterstitialActivity.this.getIntent().getIntExtra("orientation", 1)));
                Interstitial.c().setBannerStateListener(InterstitialActivity.this);
                try {
                    InterstitialActivity.this.a().addView(Interstitial.c(), new RelativeLayout.LayoutParams(-1, -1));
                } catch (Throwable th) {
                    InterstitialActivity.this.a().addView(Interstitial.c(), new RelativeLayout.LayoutParams(-1, -1));
                }
                InterstitialActivity.this.b();
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.g
    public void onWillOpenLandingPage(j jVar) {
        new l<Void>() { // from class: com.smaato.soma.interstitial.InterstitialActivity.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (Interstitial.b != null) {
                    Interstitial.b.onWillOpenLandingPage();
                    return null;
                }
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.g
    public void onWillCloseLandingPage(j jVar) throws ClosingLandingPageFailed {
        new l<Void>() { // from class: com.smaato.soma.interstitial.InterstitialActivity.3
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (Interstitial.b != null && InterstitialActivity.this.f5113a) {
                    Interstitial.b.onWillClose();
                    InterstitialActivity.this.f5113a = false;
                }
                InterstitialActivity.this.finish();
                return null;
            }
        }.c();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        new l<Void>() { // from class: com.smaato.soma.interstitial.InterstitialActivity.4
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (Interstitial.b != null && InterstitialActivity.this.f5113a) {
                    Interstitial.b.onWillClose();
                    InterstitialActivity.this.f5113a = false;
                    return null;
                }
                return null;
            }
        }.c();
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        new l<Void>() { // from class: com.smaato.soma.interstitial.InterstitialActivity.5
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (Interstitial.b != null && InterstitialActivity.this.f5113a) {
                    Interstitial.b.onWillClose();
                    InterstitialActivity.this.f5113a = false;
                    return null;
                }
                return null;
            }
        }.c();
        super.onDestroy();
        System.gc();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        try {
            new l<Void>() { // from class: com.smaato.soma.interstitial.InterstitialActivity.6
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    Interstitial.b.onWillClose();
                    InterstitialActivity.this.f5113a = false;
                    return null;
                }
            }.c();
        } catch (Exception e) {
        }
    }
}
