package com.smartadserver.android.library.c;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.mngads.sdk.listener.MNGHimonoAdListener;
import com.mngads.sdk.listener.MNGNativeAdListener;
import com.mngads.sdk.listener.MNGSushiAdListener;
import com.mngads.sdk.nativead.MNGDisplayableNativeAd;
import com.mngads.sdk.nativead.MNGHimonoAd;
import com.mngads.sdk.util.MNGAdSize;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.c.i;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.HashMap;
/* compiled from: SASAppsfireAdapter.java */
/* loaded from: classes3.dex */
public class d implements i {
    private MNGHimonoAd b;
    private MNGDisplayableNativeAd c;
    private MNGHimonoAdListener d;
    private b e;
    private i.a f;

    /* renamed from: a  reason: collision with root package name */
    private g f5352a = null;
    private SASAdView g = null;
    private boolean h = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASAppsfireAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements MNGHimonoAdListener {
        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASAppsfireAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements MNGNativeAdListener, MNGSushiAdListener {
        private b() {
        }
    }

    public void d() {
        this.d = new a();
        this.e = new b();
    }

    private void e() {
        MNGAdSize mNGAdsHeight50Banner;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.g.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        float f = displayMetrics.density;
        Math.round(this.g.getWidth() / f);
        int round = Math.round(this.g.getHeight() / f);
        if (round >= MNGAdSize.getMNGAdsSizeHeight250Rectangle().getHeight()) {
            mNGAdsHeight50Banner = MNGAdSize.getMNGAdsSizeHeight250Rectangle();
        } else if (round >= MNGAdSize.getMNGAdsHeight90Banner().getHeight()) {
            mNGAdsHeight50Banner = MNGAdSize.getMNGAdsHeight90Banner();
        } else {
            mNGAdsHeight50Banner = MNGAdSize.getMNGAdsHeight50Banner();
        }
        this.b = new MNGHimonoAd(this.g.getContext(), mNGAdsHeight50Banner);
        this.b.setRefreshAutomatically(false);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, Math.round(mNGAdsHeight50Banner.getHeight() * f));
        layoutParams.addRule(13);
        this.b.setLayoutParams(layoutParams);
    }

    @Override // com.smartadserver.android.library.c.i
    public void a(Context context, SASAdView sASAdView, HashMap<String, String> hashMap, i.a aVar) {
        final View view;
        if (sASAdView == null) {
            aVar.a("Appsfire ad mediation does not support native ad placements");
            return;
        }
        this.f = aVar;
        this.g = sASAdView;
        String str = hashMap.get("PUBLISHER_ID");
        if (!this.h) {
            d();
            this.h = true;
        }
        g();
        f();
        if (sASAdView instanceof SASBannerView) {
            if (this.b == null) {
                e();
                if (com.smartadserver.android.library.g.c.f5436a) {
                    this.b.setBackgroundColor(-16711681);
                }
                this.b.setHimonoListener(this.d);
            }
            this.b.loadAd(str);
            view = this.b;
        } else if (sASAdView instanceof SASInterstitialView) {
            this.c = new MNGDisplayableNativeAd(sASAdView.getContext(), str);
            this.c.setNativeAdListener(this.e);
            this.c.loadAd();
            view = null;
        } else {
            view = null;
        }
        this.f5352a = new g() { // from class: com.smartadserver.android.library.c.d.1
            @Override // com.smartadserver.android.library.c.g
            public View a() {
                return view;
            }

            @Override // com.smartadserver.android.library.c.g
            public g.a b() {
                return null;
            }
        };
    }

    @Override // com.smartadserver.android.library.c.i
    public g a() {
        return this.f5352a;
    }

    private void f() {
        this.c = null;
    }

    private void g() {
        this.b = null;
    }

    @Override // com.smartadserver.android.library.c.i
    public void b() {
        this.f = null;
        this.g = null;
        g();
        f();
    }

    @Override // com.smartadserver.android.library.c.i
    public boolean c() {
        try {
            Class.forName("com.mngads.sdk.nativead.MNGHimonoAd");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
