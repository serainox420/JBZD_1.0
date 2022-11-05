package com.smartadserver.android.library.c;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubReward;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubRewardedVideoListener;
import com.mopub.mobileads.MoPubRewardedVideos;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.MediaLayout;
import com.mopub.nativeads.MediaViewBinder;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.MoPubStaticNativeAdRenderer;
import com.mopub.nativeads.MoPubVideoNativeAdRenderer;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.StaticNativeAd;
import com.mopub.nativeads.VideoNativeAd;
import com.mopub.nativeads.ViewBinder;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.c.i;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.smartadserver.android.library.ui.SASAdView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Set;
/* compiled from: SASMoPubAdapter.java */
/* loaded from: classes3.dex */
public class l implements i {

    /* renamed from: a  reason: collision with root package name */
    private MoPubView f5377a;
    private a b;
    private MoPubInterstitial c;
    private MoPubNative d;
    private c e;
    private MoPubStaticNativeAdRenderer f;
    private MoPubVideoNativeAdRenderer g;
    private b k;
    private d l;
    private i.a m;
    private View h = null;
    private g i = null;
    private g.a j = null;
    private SASAdView n = null;
    private boolean o = false;
    private boolean p = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASMoPubAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements MoPubView.BannerAdListener {
        private a() {
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerLoaded(MoPubView moPubView) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onBannerLoaded for banner");
            l.this.m.c();
            l.this.n.getMRAIDController().setState("default");
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onBannerFailed for banner");
            l.this.m.a(moPubErrorCode.toString());
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerClicked(MoPubView moPubView) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onBannerClicked for banner");
            l.this.m.d();
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerExpanded(MoPubView moPubView) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onBannerExpanded for banner");
            l.this.n.getMRAIDController().setState("expanded");
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerCollapsed(MoPubView moPubView) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onBannerCollapsed for banner");
            l.this.n.getMRAIDController().setState("default");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASMoPubAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements MoPubInterstitial.InterstitialAdListener {
        private b() {
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onInterstitialLoaded for interstitial");
            if (l.this.m != null && l.this.m.c() && l.this.n != null) {
                l.this.n.getMRAIDController().setState("default");
                l.this.n.getMRAIDController().setExpandUseCustomCloseProperty(true);
                moPubInterstitial.show();
            }
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onInterstitialLoaded for interstitial");
            l.this.m.a(moPubErrorCode.toString());
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onInterstitialShown for interstitial");
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onInterstitialClicked for interstitial");
            l.this.m.d();
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onInterstitialDismissed for interstitial");
            if (l.this.n != null) {
                l.this.n.a(new Runnable() { // from class: com.smartadserver.android.library.c.l.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.n.n();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASMoPubAdapter.java */
    /* loaded from: classes3.dex */
    public class c implements MoPubNative.MoPubNativeNetworkListener {
        private c() {
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeLoad(NativeAd nativeAd) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onNativeLoad for native ad");
            if (l.this.m != null) {
                try {
                    if (nativeAd.getBaseNativeAd() instanceof StaticNativeAd) {
                        l.this.j = new e(nativeAd);
                    } else if (nativeAd.getBaseNativeAd() instanceof VideoNativeAd) {
                        l.this.j = new f(nativeAd);
                    }
                    l.this.m.c();
                } catch (IllegalArgumentException e) {
                    l.this.m.a(e.getMessage());
                }
            }
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeFail(NativeErrorCode nativeErrorCode) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onNativeFail for native ad");
            l.this.m.a(nativeErrorCode.toString());
        }
    }

    /* compiled from: SASMoPubAdapter.java */
    /* loaded from: classes3.dex */
    private class d implements MoPubRewardedVideoListener {
        private d() {
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoListener
        public void onRewardedVideoLoadSuccess(String str) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onRewardedVideoLoadSuccess for interstitial");
            if (l.this.m != null && l.this.m.c() && l.this.n != null) {
                l.this.n.getMRAIDController().setState("default");
                l.this.n.getMRAIDController().setExpandUseCustomCloseProperty(true);
                MoPubRewardedVideos.showRewardedVideo(str);
            }
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoListener
        public void onRewardedVideoLoadFailure(String str, MoPubErrorCode moPubErrorCode) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onRewardedVideoLoadFailure for interstitial");
            l.this.m.a(moPubErrorCode.toString());
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoListener
        public void onRewardedVideoStarted(String str) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onRewardedVideoStarted for interstitial");
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoListener
        public void onRewardedVideoPlaybackError(String str, MoPubErrorCode moPubErrorCode) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onRewardedVideoPlaybackError for interstitial");
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoListener
        public void onRewardedVideoClosed(String str) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onRewardedVideoClosed for interstitial");
            if (l.this.n != null) {
                l.this.n.a(new Runnable() { // from class: com.smartadserver.android.library.c.l.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.n.n();
                    }
                });
            }
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoListener
        public void onRewardedVideoCompleted(Set<String> set, MoPubReward moPubReward) {
            com.smartadserver.android.library.g.c.a("SASMoPubAdapter", "MoPub onRewardedVideoCompleted for interstitial : label:" + moPubReward.getLabel() + " amount:" + moPubReward.getAmount());
            if (l.this.n != null) {
                l.this.n.a(new com.smartadserver.android.library.model.b(moPubReward.getLabel(), moPubReward.getAmount()));
            }
        }
    }

    /* compiled from: SASMoPubAdapter.java */
    /* loaded from: classes3.dex */
    private class e implements g.a {

        /* renamed from: a  reason: collision with root package name */
        StaticNativeAd f5385a;
        View.OnClickListener b;
        View[] c;
        View d;

        public e(NativeAd nativeAd) throws IllegalArgumentException {
            if (nativeAd.getBaseNativeAd() instanceof StaticNativeAd) {
                this.f5385a = (StaticNativeAd) nativeAd.getBaseNativeAd();
                this.b = new View.OnClickListener() { // from class: com.smartadserver.android.library.c.l.e.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        l.this.m.d();
                        e.this.d.performClick();
                    }
                };
                return;
            }
            throw new IllegalArgumentException("Unsupported mopub native ad : expected StaticNativeAd");
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String m() {
            return this.f5385a.getPrivacyInformationIconClickThroughUrl();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String n() {
            return "";
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String a() {
            return this.f5385a.getTitle();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String b() {
            return this.f5385a.getText();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String c() {
            return "";
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String d() {
            return this.f5385a.getIconImageUrl();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int e() {
            return -1;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int f() {
            return -1;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String g() {
            return this.f5385a.getMainImageUrl();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int h() {
            return -1;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int i() {
            return -1;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public View a(Context context) {
            return null;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public float j() {
            if (this.f5385a.getStarRating() == null) {
                return -1.0f;
            }
            return this.f5385a.getStarRating().floatValue();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String k() {
            return this.f5385a.getCallToAction();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public SASNativeVideoAdElement l() {
            return null;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public void a(View view) {
            View[] viewArr;
            if (this.c != null) {
                for (View view2 : this.c) {
                    view2.setOnClickListener(null);
                    view2.setClickable(false);
                }
            }
        }

        @Override // com.smartadserver.android.library.c.g.a
        public void a(View view, View[] viewArr) {
            if (viewArr != null) {
                this.c = viewArr;
                for (View view2 : viewArr) {
                    view2.setOnClickListener(this.b);
                }
            }
            if (this.d == null) {
                this.d = new View(view.getContext());
                this.f5385a.prepare(this.d);
            }
            this.f5385a.recordImpression(view);
        }
    }

    /* compiled from: SASMoPubAdapter.java */
    /* loaded from: classes3.dex */
    private class f implements g.a {
        private VideoNativeAd b;
        private MediaLayout c;
        private View d;
        private View.OnClickListener e;
        private View[] f;

        public f(NativeAd nativeAd) throws IllegalArgumentException {
            if (nativeAd.getBaseNativeAd() instanceof VideoNativeAd) {
                this.b = nativeAd.getBaseNativeAd();
                this.e = new View.OnClickListener() { // from class: com.smartadserver.android.library.c.l.f.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        l.this.m.d();
                        f.this.d.performClick();
                    }
                };
                return;
            }
            throw new IllegalArgumentException("Unsupported mopub native ad : expected VideoNativeAd");
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String m() {
            return this.b.getPrivacyInformationIconClickThroughUrl();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String n() {
            return "";
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String a() {
            return this.b.getTitle();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String b() {
            return this.b.getText();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String c() {
            return "";
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String d() {
            return this.b.getIconImageUrl();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int e() {
            return -1;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int f() {
            return -1;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String g() {
            return this.b.getMainImageUrl();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int h() {
            return -1;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public int i() {
            return -1;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public View a(Context context) {
            if (this.c == null && this.b != null) {
                this.d = new View(context);
                this.d.setVisibility(8);
                this.c = new MediaLayout(context);
                this.c.addView(this.d);
                this.b.prepare(this.d);
                this.b.render(this.c);
            }
            return this.c;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public float j() {
            return -1.0f;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String k() {
            return this.b.getCallToAction();
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
            View[] viewArr;
            if (this.f != null) {
                for (View view2 : this.f) {
                    view2.setOnClickListener(null);
                    view2.setClickable(false);
                }
            }
        }

        @Override // com.smartadserver.android.library.c.g.a
        public void a(View view, View[] viewArr) {
            if (viewArr != null) {
                this.f = viewArr;
                for (View view2 : viewArr) {
                    view2.setOnClickListener(this.e);
                }
            }
            a(view.getContext());
            l.this.a((BaseNativeAd) this.b, "notifyAdImpressed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BaseNativeAd baseNativeAd, String str) {
        try {
            Method declaredMethod = BaseNativeAd.class.getDeclaredMethod(str, null);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(baseNativeAd, null);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
    }

    public void a(Context context) {
        this.b = new a();
        this.k = new b();
        this.e = new c();
    }

    @Override // com.smartadserver.android.library.c.i
    public void a(Context context, SASAdView sASAdView, HashMap<String, String> hashMap, i.a aVar) {
        this.h = null;
        this.m = aVar;
        this.n = sASAdView;
        String str = hashMap.get("adUnitID");
        int i = -1;
        try {
            i = Integer.parseInt(hashMap.get("adType"));
        } catch (NumberFormatException e2) {
        }
        if (!this.o) {
            a(context);
            this.o = true;
        }
        if (!this.p && i == 2 && (sASAdView instanceof SASInterstitialView)) {
            if (context instanceof Activity) {
                this.p = true;
                this.l = new d();
                MoPubRewardedVideos.initializeRewardedVideo((Activity) context, new MediationSettings[0]);
                MoPubRewardedVideos.setRewardedVideoListener(this.l);
            } else {
                aVar.a("Can not get a MoPub rewarded video on this SASInterstitialView because its creation Context is not an Activity");
                return;
            }
        }
        MoPub.setLocationAwareness(com.smartadserver.android.library.g.c.c() ? MoPub.LocationAwareness.NORMAL : MoPub.LocationAwareness.DISABLED);
        e();
        d();
        f();
        this.i = new g() { // from class: com.smartadserver.android.library.c.l.1
            @Override // com.smartadserver.android.library.c.g
            public View a() {
                return l.this.h;
            }

            @Override // com.smartadserver.android.library.c.g
            public g.a b() {
                return l.this.j;
            }
        };
        if (sASAdView instanceof SASBannerView) {
            if (this.f5377a == null) {
                this.f5377a = new MoPubView(sASAdView.getContext());
                this.f5377a.setAdUnitId(str);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(sASAdView.getWidth(), sASAdView.getHeight());
                layoutParams.addRule(13);
                this.f5377a.setLayoutParams(layoutParams);
                if (com.smartadserver.android.library.g.c.f5436a) {
                    this.f5377a.setBackgroundColor(-16711681);
                }
                this.f5377a.setBannerAdListener(this.b);
                this.f5377a.setAutorefreshEnabled(false);
            }
            this.f5377a.loadAd();
            this.h = this.f5377a;
        } else if (sASAdView instanceof SASInterstitialView) {
            if (i == 2) {
                MoPubRewardedVideos.loadRewardedVideo(str, null, new MediationSettings[0]);
                return;
            }
            if (this.c == null) {
                this.c = new MoPubInterstitial((Activity) sASAdView.getContext(), str);
                this.c.setInterstitialAdListener(this.k);
            }
            this.c.load();
        } else if (this.d == null) {
            this.d = new MoPubNative(context, str, this.e);
            this.f = new MoPubStaticNativeAdRenderer(new ViewBinder.Builder(0).build());
            this.g = new MoPubVideoNativeAdRenderer(new MediaViewBinder.Builder(0).build());
            this.d.registerAdRenderer(this.f);
            this.d.registerAdRenderer(this.g);
            this.d.makeRequest();
        }
    }

    @Override // com.smartadserver.android.library.c.i
    public g a() {
        return this.i;
    }

    private void d() {
        if (this.c != null) {
            this.c.destroy();
        }
        this.c = null;
    }

    private void e() {
        if (this.f5377a != null) {
            this.f5377a.destroy();
        }
        this.f5377a = null;
    }

    private void f() {
        if (this.d != null) {
            this.d.destroy();
        }
        this.d = null;
    }

    @Override // com.smartadserver.android.library.c.i
    public void b() {
        this.m = null;
        this.n = null;
        e();
        d();
        f();
    }

    @Override // com.smartadserver.android.library.c.i
    public boolean c() {
        try {
            Class.forName("com.mopub.mobileads.MoPubView");
            return true;
        } catch (ClassNotFoundException e2) {
            return false;
        }
    }
}
