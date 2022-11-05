package com.smartadserver.android.library.c;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.c.i;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.Arrays;
import java.util.HashMap;
/* compiled from: SASFacebookAdapter.java */
/* loaded from: classes3.dex */
public class e implements i {

    /* renamed from: a  reason: collision with root package name */
    private AdView f5356a;
    private InterstitialAd b;
    private InterstitialAdListener c;
    private NativeAd d;
    private AdListener e;
    private View f;
    private i.a i;
    private g g = null;
    private g.a h = null;
    private SASAdView j = null;

    /* compiled from: SASFacebookAdapter.java */
    /* loaded from: classes3.dex */
    private class a implements InterstitialAdListener {
        private a() {
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            com.smartadserver.android.library.g.c.a("SASFacebookAdapter", "Facebook banner onError");
            e.this.i.a(adError.getErrorMessage());
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            com.smartadserver.android.library.g.c.a("SASFacebookAdapter", "Facebook ad onAdLoaded");
            if (e.this.i != null && e.this.i.c() && (e.this.j instanceof SASInterstitialView)) {
                e.this.j.getMRAIDController().setState("default");
                e.this.j.getMRAIDController().setExpandUseCustomCloseProperty(true);
                e.this.b.show();
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            com.smartadserver.android.library.g.c.a("SASFacebookAdapter", "Facebook  banner onAdClicked");
            e.this.i.d();
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDisplayed(Ad ad) {
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDismissed(Ad ad) {
            if (e.this.j != null) {
                e.this.j.a(new Runnable() { // from class: com.smartadserver.android.library.c.e.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        e.this.j.n();
                    }
                });
            }
        }
    }

    /* compiled from: SASFacebookAdapter.java */
    /* loaded from: classes3.dex */
    private class c implements AdListener {
        private c() {
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            com.smartadserver.android.library.g.c.a("SASFacebookAdapter", "Facebook native Ad onError");
            e.this.i.a(adError.getErrorMessage());
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            com.smartadserver.android.library.g.c.a("SASFacebookAdapter", "Facebook native ad onAdLoaded");
            if (e.this.i != null) {
                e.this.h = new b(e.this.d);
                e.this.i.c();
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            com.smartadserver.android.library.g.c.a("SASFacebookAdapter", "Facebook  native ad onAdClicked");
            e.this.i.d();
        }
    }

    /* compiled from: SASFacebookAdapter.java */
    /* loaded from: classes3.dex */
    private class b implements g.a {

        /* renamed from: a  reason: collision with root package name */
        NativeAd f5360a;
        MediaView b = null;

        public b(NativeAd nativeAd) {
            this.f5360a = nativeAd;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String a() {
            return this.f5360a.getAdTitle();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String b() {
            return this.f5360a.getAdSubtitle();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String c() {
            return this.f5360a.getAdBody();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String d() {
            return this.f5360a.getAdIcon().getUrl();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int e() {
            return this.f5360a.getAdIcon().getWidth();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int f() {
            return this.f5360a.getAdIcon().getHeight();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String g() {
            return this.f5360a.getAdCoverImage().getUrl();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int h() {
            return this.f5360a.getAdCoverImage().getWidth();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int i() {
            return this.f5360a.getAdCoverImage().getHeight();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public View a(Context context) {
            if (this.b == null) {
                this.b = new MediaView(context);
                this.b.setNativeAd(this.f5360a);
            }
            return this.b;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public float j() {
            NativeAd.Rating adStarRating = this.f5360a.getAdStarRating();
            if (adStarRating == null) {
                return -1.0f;
            }
            return (float) ((adStarRating.getValue() / adStarRating.getScale()) * 5.0d);
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String k() {
            return this.f5360a.getAdCallToAction();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public SASNativeVideoAdElement l() {
            SASNativeVideoAdElement sASNativeVideoAdElement = new SASNativeVideoAdElement();
            sASNativeVideoAdElement.setMediaWidth(h());
            sASNativeVideoAdElement.setMediaHeight(i());
            return sASNativeVideoAdElement;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public void a(View view) {
            this.f5360a.unregisterView();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public void a(View view, View[] viewArr) {
            this.f5360a.registerViewForInteraction(view, Arrays.asList(viewArr));
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String m() {
            return "https://m.facebook.com/ads/ad_choices";
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String n() {
            return "";
        }
    }

    @Override // com.smartadserver.android.library.c.i
    public void a(Context context, SASAdView sASAdView, HashMap<String, String> hashMap, i.a aVar) {
        this.f = null;
        String str = hashMap.get("PLACEMENT_ID");
        AdSettings.setMediationService("Smart AdServer");
        this.i = aVar;
        this.j = sASAdView;
        e();
        d();
        f();
        if (this.c == null) {
            this.c = new a();
        }
        if (this.e == null) {
            this.e = new c();
        }
        this.g = new g() { // from class: com.smartadserver.android.library.c.e.1
            @Override // com.smartadserver.android.library.c.g
            public View a() {
                return e.this.f;
            }

            @Override // com.smartadserver.android.library.c.g
            public g.a b() {
                return e.this.h;
            }
        };
        if (sASAdView instanceof SASBannerView) {
            if (this.f5356a == null) {
                a(str);
                this.f5356a.setAdListener(this.c);
            }
            this.f5356a.loadAd();
            this.f = this.f5356a;
        } else if (sASAdView instanceof SASInterstitialView) {
            if (this.b == null) {
                this.b = new InterstitialAd(sASAdView.getContext(), str);
                this.b.setAdListener(this.c);
            }
            if (this.b.isAdLoaded()) {
                this.c.onAdLoaded(null);
            } else {
                this.b.loadAd();
            }
        } else if (this.d == null) {
            this.d = new NativeAd(context, str);
            this.d.setAdListener(this.e);
            this.d.loadAd();
        }
    }

    @Override // com.smartadserver.android.library.c.i
    public g a() {
        return this.g;
    }

    private void a(String str) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.j.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int width = (int) (this.j.getWidth() / displayMetrics.density);
        int height = (int) (this.j.getHeight() / displayMetrics.density);
        AdSize adSize = AdSize.BANNER_320_50;
        if (height >= AdSize.BANNER_HEIGHT_90.getHeight()) {
            adSize = AdSize.BANNER_HEIGHT_90;
        } else if (height >= AdSize.BANNER_HEIGHT_50.getHeight()) {
            adSize = AdSize.BANNER_HEIGHT_50;
        }
        this.f5356a = new AdView(this.j.getContext(), str, adSize);
    }

    private void d() {
        if (this.b != null) {
            this.b.setAdListener(null);
            this.b.destroy();
        }
        this.b = null;
    }

    private void e() {
        if (this.f5356a != null) {
            this.f5356a.setAdListener(null);
            this.f5356a.destroy();
        }
        this.f5356a = null;
    }

    private void f() {
        if (this.d != null) {
            this.d.destroy();
        }
        this.d = null;
    }

    @Override // com.smartadserver.android.library.c.i
    public void b() {
        this.j = null;
        e();
        d();
    }

    @Override // com.smartadserver.android.library.c.i
    public boolean c() {
        try {
            Class.forName("com.facebook.ads.AdView");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
