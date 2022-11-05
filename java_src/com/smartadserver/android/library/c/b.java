package com.smartadserver.android.library.c;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.NativeExpressAdView;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeAppInstallAdView;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeContentAdView;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.c.i;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.smartadserver.android.library.ui.SASAdChoicesView;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.HashMap;
/* compiled from: SASAdMobAdapter.java */
/* loaded from: classes3.dex */
public class b implements i {

    /* renamed from: a  reason: collision with root package name */
    AdLoader.Builder f5330a;
    AdLoader b;
    RewardedVideoAd c;
    private AdView d;
    private NativeExpressAdView e;
    private InterstitialAd f;
    private i.a n;
    private int p;
    private int q;
    private AdListener g = new a("Banner");
    private AdListener h = new a("Interstitial");
    private AdListener i = new a("Native Express");
    private AdListener j = new AdListener() { // from class: com.smartadserver.android.library.c.b.1
        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob onAdFailedToLoad for native ad (error code:" + i + ")");
            b.this.n.a("AdMob ad loading error code " + i);
        }
    };
    private View k = null;
    private g l = null;
    private g.a m = null;
    private SASAdView o = null;
    private boolean r = false;
    private RewardedVideoAdListener s = new c();

    /* compiled from: SASAdMobAdapter.java */
    /* loaded from: classes3.dex */
    private class a extends AdListener {
        private String b;

        public a(String str) {
            this.b = str;
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob onAdClosed for " + this.b);
            if (b.this.o instanceof SASInterstitialView) {
                b.this.o.a(new Runnable() { // from class: com.smartadserver.android.library.c.b.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.o.n();
                    }
                });
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob onAdFailedToLoad for " + this.b + " (error code:" + i + ")");
            b.this.n.a("AdMob ad loading error code " + i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob onAdLeftApplication for " + this.b);
            b.this.n.d();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob onAdOpened for " + this.b);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob ad onAdLoaded for " + this.b);
            if (b.this.n != null && b.this.n.c() && b.this.o != null) {
                if (b.this.q > 0 && b.this.p > 0) {
                    b.this.o.getCurrentAdElement().setPortraitHeight(com.smartadserver.android.library.g.c.a(b.this.q, b.this.o.getResources()));
                    b.this.o.getCurrentAdElement().setPortraitWidth(b.this.o.getWidth());
                }
                b.this.o.getMRAIDController().setState("default");
                if ((b.this.o instanceof SASInterstitialView) && b.this.k == null) {
                    if (b.this.o != null) {
                        b.this.o.getMRAIDController().setExpandUseCustomCloseProperty(true);
                    }
                    b.this.f.show();
                }
            }
        }
    }

    /* compiled from: SASAdMobAdapter.java */
    /* loaded from: classes3.dex */
    private class c implements RewardedVideoAdListener {
        private c() {
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoAdLoaded() {
            if (b.this.n != null && b.this.n.c() && b.this.o != null) {
                b.this.o.getMRAIDController().setState("default");
                b.this.o.getMRAIDController().setExpandUseCustomCloseProperty(true);
                b.this.c.show();
            }
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoAdOpened() {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob onRewardedVideoAdOpened for rewarded video");
            b.this.n.d();
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoStarted() {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob onRewardedVideoStarted for interstitial");
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoAdClosed() {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob onRewardedVideoAdClosed for interstitial");
            if (b.this.o != null) {
                b.this.o.a(new Runnable() { // from class: com.smartadserver.android.library.c.b.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.o.n();
                    }
                });
            }
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewarded(RewardItem rewardItem) {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob onRewarded for interstitial : label:" + rewardItem.getType() + " amount:" + rewardItem.getAmount());
            if (b.this.o != null) {
                b.this.o.a(new com.smartadserver.android.library.model.b(rewardItem.getType(), rewardItem.getAmount()));
            }
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoAdLeftApplication() {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob onRewardedVideoAdLeftApplication for interstitial");
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoAdFailedToLoad(int i) {
            com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob rewarded video ad onRewardedVideoAdFailedToLoad (error code:" + i + ")");
            b.this.n.a("AdMob rewarded video ad loading error code " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASAdMobAdapter.java */
    /* renamed from: com.smartadserver.android.library.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0578b implements g.a {
        private NativeAd b;
        private MediaView c;
        private NativeAd.Image d;
        private NativeAd.Image e;
        private NativeAdView f;
        private ImageView g;
        private String h;
        private float i;
        private String j;
        private String k;
        private String l;
        private View.OnClickListener m;
        private View[] n;

        public C0578b(NativeContentAd nativeContentAd) {
            this.h = "";
            this.i = -1.0f;
            this.l = "";
            o();
            this.b = nativeContentAd;
            this.d = nativeContentAd.getLogo();
            if (nativeContentAd.getImages().size() > 0) {
                this.e = nativeContentAd.getImages().get(0);
            }
            this.h = nativeContentAd.getCallToAction().toString();
            this.j = nativeContentAd.getHeadline().toString();
            this.k = nativeContentAd.getBody().toString();
        }

        private void o() {
            this.m = new View.OnClickListener() { // from class: com.smartadserver.android.library.c.b.b.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    b.this.n.d();
                    C0578b.this.f.performClick();
                }
            };
        }

        public C0578b(NativeAppInstallAd nativeAppInstallAd) {
            this.h = "";
            this.i = -1.0f;
            this.l = "";
            o();
            this.b = nativeAppInstallAd;
            this.d = nativeAppInstallAd.getIcon();
            if (nativeAppInstallAd.getImages().size() > 0) {
                this.e = nativeAppInstallAd.getImages().get(0);
            }
            this.h = nativeAppInstallAd.getCallToAction().toString();
            this.j = nativeAppInstallAd.getHeadline().toString();
            this.k = nativeAppInstallAd.getBody().toString();
            this.i = nativeAppInstallAd.getStarRating().floatValue();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String a() {
            return this.j;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String b() {
            return this.k;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String c() {
            return "";
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String d() {
            if (this.d == null) {
                return "";
            }
            return this.d.getUri().toString();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int e() {
            if (this.d == null || this.d.getDrawable() == null) {
                return -1;
            }
            return this.d.getDrawable().getIntrinsicWidth();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int f() {
            if (this.d == null || this.d.getDrawable() == null) {
                return -1;
            }
            return this.d.getDrawable().getIntrinsicHeight();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String g() {
            if (this.e == null) {
                return "";
            }
            return this.e.getUri().toString();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int h() {
            if (this.e == null || this.e.getDrawable() == null) {
                return -1;
            }
            return this.e.getDrawable().getIntrinsicWidth();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int i() {
            if (this.e == null || this.e.getDrawable() == null) {
                return -1;
            }
            return this.e.getDrawable().getIntrinsicHeight();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public View a(Context context) {
            if (this.c == null && (this.b instanceof NativeAppInstallAd)) {
                this.c = new MediaView(context);
                this.c.setBackgroundColor(-16711936);
            }
            return this.c;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public float j() {
            return this.i;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String k() {
            return this.h;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public SASNativeVideoAdElement l() {
            if (!(this.b instanceof NativeAppInstallAd)) {
                return null;
            }
            SASNativeVideoAdElement sASNativeVideoAdElement = new SASNativeVideoAdElement();
            sASNativeVideoAdElement.setMediaWidth(h());
            sASNativeVideoAdElement.setMediaHeight(i());
            return sASNativeVideoAdElement;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public void a(View view) {
            View[] viewArr;
            if (this.n != null) {
                for (View view2 : this.n) {
                    view2.setOnClickListener(null);
                    view2.setClickable(false);
                }
            }
            SASAdChoicesView sASAdChoicesView = (SASAdChoicesView) b.b(view, SASAdChoicesView.class);
            if (sASAdChoicesView != null) {
                sASAdChoicesView.a();
            }
        }

        @Override // com.smartadserver.android.library.c.g.a
        public void a(View view, View[] viewArr) {
            if (this.f == null) {
                if (this.b instanceof NativeContentAd) {
                    this.f = new NativeContentAdView(view.getContext());
                    ((NativeContentAdView) this.f).setImageView(this.f);
                } else if (this.b instanceof NativeAppInstallAd) {
                    this.f = new NativeAppInstallAdView(view.getContext());
                    ((NativeAppInstallAdView) this.f).setImageView(this.f);
                    ((NativeAppInstallAdView) this.f).setMediaView(this.c);
                }
            }
            if (view instanceof ViewGroup) {
                this.f.setBackgroundColor(-65536);
                ((ViewGroup) view).addView(this.f, new ViewGroup.LayoutParams(-1, 100));
                this.f.setVisibility(4);
            }
            if (viewArr != null) {
                this.n = viewArr;
                for (View view2 : viewArr) {
                    view2.setOnClickListener(this.m);
                }
            }
            this.f.setNativeAd(this.b);
            this.g = (ImageView) b.b(this.f, ImageView.class);
            SASAdChoicesView sASAdChoicesView = (SASAdChoicesView) b.b(view, SASAdChoicesView.class);
            if (this.g != null && sASAdChoicesView != null) {
                sASAdChoicesView.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.c.b.b.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        if (C0578b.this.g != null) {
                            ((View) C0578b.this.g.getParent()).performClick();
                        }
                    }
                });
            } else {
                this.f.setVisibility(0);
            }
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String m() {
            return "";
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String n() {
            return this.l;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static View b(View view, Class cls) {
        if (!cls.isAssignableFrom(view.getClass())) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View b = b(viewGroup.getChildAt(i), cls);
                    if (b != null) {
                        return b;
                    }
                }
            }
            return null;
        }
        return view;
    }

    @Override // com.smartadserver.android.library.c.i
    public void a(Context context, SASAdView sASAdView, HashMap<String, String> hashMap, i.a aVar) {
        int i;
        this.k = null;
        this.l = null;
        this.m = null;
        this.q = -1;
        this.p = -1;
        try {
            this.p = Integer.parseInt(hashMap.get("nativeAdWidth"));
        } catch (NumberFormatException e) {
        }
        try {
            this.q = Integer.parseInt(hashMap.get("nativeAdHeight"));
        } catch (NumberFormatException e2) {
        }
        String str = hashMap.get("applicationID");
        String str2 = hashMap.get("adUnitID");
        try {
            i = Integer.parseInt(hashMap.get("adType"));
        } catch (NumberFormatException e3) {
            i = -1;
        }
        this.n = aVar;
        this.o = sASAdView;
        f();
        e();
        h();
        this.l = new g() { // from class: com.smartadserver.android.library.c.b.2
            @Override // com.smartadserver.android.library.c.g
            public View a() {
                return b.this.k;
            }

            @Override // com.smartadserver.android.library.c.g
            public g.a b() {
                return b.this.m;
            }
        };
        if (!this.r) {
            MobileAds.initialize(context, str);
            this.r = true;
            if (i == 2 && (sASAdView instanceof SASInterstitialView)) {
                this.c = MobileAds.getRewardedVideoAdInstance(context);
                this.c.setRewardedVideoAdListener(this.s);
            }
        }
        AdRequest build = new AdRequest.Builder().build();
        if (i == 3 && ((sASAdView instanceof SASBannerView) || (sASAdView instanceof SASInterstitialView))) {
            if (this.e == null) {
                this.e = new NativeExpressAdView(context);
                this.e.setAdUnitId(str2);
                AdSize d = d();
                int height = d.getHeight();
                int width = d.getWidth();
                if (this.q > 0) {
                    height = this.q;
                }
                if (this.p > 0) {
                    width = this.p;
                }
                this.e.setAdSize(new AdSize(width, height));
                this.e.setAdListener(this.i);
            }
            if (com.smartadserver.android.library.g.c.f5436a) {
                this.e.setBackgroundColor(-16711681);
            }
            this.e.loadAd(build);
            this.k = this.e;
        } else if (sASAdView instanceof SASBannerView) {
            if (this.d == null) {
                this.d = new AdView(context);
                this.d.setAdUnitId(str2);
                this.d.setAdSize(d());
                this.d.setAdListener(this.g);
                if (com.smartadserver.android.library.g.c.f5436a) {
                    this.d.setBackgroundColor(-16711681);
                }
            }
            this.d.loadAd(build);
            this.k = this.d;
        } else if (sASAdView instanceof SASInterstitialView) {
            if (i == 2) {
                if (!this.c.isLoaded()) {
                    this.c.loadAd(str2, build);
                    return;
                }
                return;
            }
            if (this.f == null) {
                this.f = new InterstitialAd(sASAdView.getContext());
                this.f.setAdUnitId(str2);
                this.f.setAdListener(this.h);
            }
            this.f.loadAd(build);
            this.k = null;
        } else {
            if (this.f5330a == null) {
                this.f5330a = new AdLoader.Builder(context, str2);
                this.f5330a.forContentAd(new NativeContentAd.OnContentAdLoadedListener() { // from class: com.smartadserver.android.library.c.b.3
                    @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
                    public void onContentAdLoaded(NativeContentAd nativeContentAd) {
                        b.this.a(nativeContentAd);
                    }
                });
                this.f5330a.forAppInstallAd(new NativeAppInstallAd.OnAppInstallAdLoadedListener() { // from class: com.smartadserver.android.library.c.b.4
                    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
                    public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
                        b.this.a(nativeAppInstallAd);
                    }
                });
                this.f5330a.withNativeAdOptions(new NativeAdOptions.Builder().setReturnUrlsForImageAssets(false).setRequestMultipleImages(false).build());
                this.b = this.f5330a.withAdListener(this.j).build();
            }
            this.b.loadAd(build);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(NativeAd nativeAd) {
        com.smartadserver.android.library.g.c.a("SASAdMobAdapter", "AdMob native ad loaded");
        if (this.n != null) {
            if (nativeAd instanceof NativeAppInstallAd) {
                this.m = new C0578b((NativeAppInstallAd) nativeAd);
            } else if (nativeAd instanceof NativeContentAd) {
                this.m = new C0578b((NativeContentAd) nativeAd);
            }
            this.n.c();
        }
    }

    private AdSize d() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.o.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return new AdSize((int) (this.o.getWidth() / displayMetrics.density), (int) (this.o.getHeight() / displayMetrics.density));
    }

    @Override // com.smartadserver.android.library.c.i
    public g a() {
        return this.l;
    }

    private void e() {
        if (this.f != null) {
            this.f.setAdListener(null);
        }
        this.f = null;
    }

    private void f() {
        if (this.d != null) {
            this.d.setAdListener(null);
            this.d.destroy();
        }
        this.d = null;
    }

    private void g() {
        if (this.e != null) {
            this.e.setAdListener(null);
            this.e.destroy();
        }
        this.e = null;
    }

    private void h() {
    }

    @Override // com.smartadserver.android.library.c.i
    public void b() {
        this.o = null;
        f();
        e();
        g();
    }

    @Override // com.smartadserver.android.library.c.i
    public boolean c() {
        try {
            Class.forName("com.google.android.gms.ads.AdView");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
