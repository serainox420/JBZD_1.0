package com.smartadserver.android.library.c;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.view.View;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.c.i;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: SASAppLovinAdapter.java */
/* loaded from: classes3.dex */
public class c implements i {

    /* renamed from: a  reason: collision with root package name */
    private i.a f5342a;
    private g c;
    private g.a d;
    private AppLovinSdk h;
    private AppLovinInterstitialAdDialog i;
    private AppLovinIncentivizedInterstitial j;
    private SASAdView b = null;
    private b e = new b("interstitial");
    private b f = new b("rewarded interstitial");
    private C0579c g = new C0579c();
    private boolean k = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASAppLovinAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements AppLovinAdClickListener, AppLovinAdDisplayListener, AppLovinAdVideoPlaybackListener {
        private String b;

        public b(String str) {
            this.b = str;
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin adClicked for " + this.b);
            c.this.f5342a.d();
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin adDisplayed for " + this.b);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin adHidden for " + this.b);
            c.this.d();
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin videoPlaybackBegan for " + this.b);
            if (c.this.b != null) {
                c.this.b.b(0);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin videoPlaybackEnded for " + this.b);
            if (c.this.b != null) {
                c.this.b.b(7);
                double b = c.this.g.b();
                if (b > 0.0d) {
                    c.this.b.a(new com.smartadserver.android.library.model.b(c.this.g.c(), b));
                }
            }
        }
    }

    /* compiled from: SASAppLovinAdapter.java */
    /* renamed from: com.smartadserver.android.library.c.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private class C0579c implements AppLovinAdRewardListener {

        /* renamed from: a  reason: collision with root package name */
        double f5351a;
        String b;

        private C0579c() {
            this.f5351a = -1.0d;
            this.b = "";
        }

        public void a() {
            this.f5351a = -1.0d;
            this.b = "";
        }

        public double b() {
            return this.f5351a;
        }

        public String c() {
            return this.b;
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin userRewardVerified for rewarded interstitial");
            this.b = (String) map.get("currency");
            try {
                this.f5351a = Double.parseDouble((String) map.get("amount"));
            } catch (Exception e) {
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userOverQuota(AppLovinAd appLovinAd, Map map) {
            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin userOverQuota for rewarded interstitial");
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin userRewardRejected for rewarded interstitial");
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin validationRequestFailed for rewarded interstitial");
            if (i != -600 && i != -500 && i != -400 && i == -300) {
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin userDeclinedToViewAd for rewarded interstitial");
            c.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.b != null) {
            this.b.a(new Runnable() { // from class: com.smartadserver.android.library.c.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.b.n();
                }
            });
        }
    }

    public void a(Context context) {
        AppLovinSdk.initializeSdk(context);
        this.h = AppLovinSdk.getInstance(context.getApplicationContext());
        this.i = AppLovinInterstitialAd.create(this.h, (Activity) context);
        this.j = AppLovinIncentivizedInterstitial.create(context.getApplicationContext());
        this.i.setAdClickListener(this.e);
        this.i.setAdDisplayListener(this.e);
        this.i.setAdVideoPlaybackListener(this.e);
    }

    @Override // com.smartadserver.android.library.c.i
    public void a(final Context context, final SASAdView sASAdView, HashMap<String, String> hashMap, i.a aVar) {
        int i;
        this.f5342a = aVar;
        this.b = sASAdView;
        this.g.a();
        if (sASAdView instanceof SASBannerView) {
            this.f5342a.a("appLovin ad mediation does support banner placements");
        } else if (!(context instanceof Activity)) {
            this.f5342a.a("Can not get a AppLovin ad on this SASInterstitialView because its creation Context is not an Activity");
        } else {
            this.f5342a = this.f5342a;
            try {
                i = Integer.parseInt(hashMap.get("adType"));
            } catch (NumberFormatException e) {
                i = -1;
            }
            boolean equals = "1".equals(hashMap.get("muteVideos"));
            if (!this.k) {
                a(context);
                this.k = true;
            }
            this.h.getSettings().setMuted(equals);
            Location location = null;
            if (sASAdView != null) {
                location = sASAdView.getLocation();
            }
            if (location == null) {
                location = com.smartadserver.android.library.g.c.a(context);
            }
            if (location != null) {
                this.h.getTargetingData().setLocation(location);
            }
            e();
            this.c = new g() { // from class: com.smartadserver.android.library.c.c.2
                @Override // com.smartadserver.android.library.c.g
                public View a() {
                    return null;
                }

                @Override // com.smartadserver.android.library.c.g
                public g.a b() {
                    return c.this.d;
                }
            };
            if (sASAdView instanceof SASInterstitialView) {
                if (i == 1) {
                    this.j.preload(new AppLovinAdLoadListener() { // from class: com.smartadserver.android.library.c.c.3
                        @Override // com.applovin.sdk.AppLovinAdLoadListener
                        public void adReceived(AppLovinAd appLovinAd) {
                            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin adReceived for rewarded interstitial");
                            if (c.this.j.isAdReadyToDisplay()) {
                                if (c.this.f5342a != null && c.this.f5342a.c()) {
                                    sASAdView.getMRAIDController().setState("default");
                                    sASAdView.getMRAIDController().setExpandUseCustomCloseProperty(true);
                                    c.this.j.show((Activity) context, c.this.g, c.this.f, c.this.f, c.this.f);
                                    return;
                                }
                                return;
                            }
                            c.this.f5342a.a("Applovin rewarded interstitial not ready to display ");
                        }

                        @Override // com.applovin.sdk.AppLovinAdLoadListener
                        public void failedToReceiveAd(int i2) {
                            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin failedToReceiveAd for rewarded interstitial (error:" + i2 + ")");
                            c.this.f5342a.a("errorCode:" + i2);
                        }
                    });
                    return;
                } else {
                    this.h.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, new AppLovinAdLoadListener() { // from class: com.smartadserver.android.library.c.c.4
                        @Override // com.applovin.sdk.AppLovinAdLoadListener
                        public void adReceived(AppLovinAd appLovinAd) {
                            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin adReceived for interstitial");
                            if (c.this.f5342a != null && c.this.f5342a.c()) {
                                sASAdView.getMRAIDController().setState("default");
                                sASAdView.getMRAIDController().setExpandUseCustomCloseProperty(true);
                                c.this.i.showAndRender(appLovinAd);
                            }
                        }

                        @Override // com.applovin.sdk.AppLovinAdLoadListener
                        public void failedToReceiveAd(int i2) {
                            com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "AppLovin failedToReceiveAd for interstitial (error:" + i2 + ")");
                            c.this.f5342a.a("errorCode:" + i2);
                        }
                    });
                    return;
                }
            }
            this.h.getNativeAdService().loadNativeAds(1, new AppLovinNativeAdLoadListener() { // from class: com.smartadserver.android.library.c.c.5
                @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
                public void onNativeAdsLoaded(List list) {
                    com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "Applovin onNativeAdsLoaded");
                    if (c.this.f5342a != null) {
                        c.this.d = new a((AppLovinNativeAd) list.get(0));
                        c.this.f5342a.c();
                    }
                }

                @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
                public void onNativeAdsFailedToLoad(int i2) {
                    com.smartadserver.android.library.g.c.a("SASAppLovinAdapter", "Applovin onNativeAdsFailedToLoad (error:" + i2 + ")");
                    c.this.f5342a.a("errorCode:" + i2);
                }
            });
        }
    }

    /* compiled from: SASAppLovinAdapter.java */
    /* loaded from: classes3.dex */
    private class a implements g.a {

        /* renamed from: a  reason: collision with root package name */
        AppLovinNativeAd f5348a;
        View.OnClickListener b;
        View[] c;
        SASNativeVideoAdElement d;

        public a(AppLovinNativeAd appLovinNativeAd) {
            this.f5348a = appLovinNativeAd;
            this.b = new View.OnClickListener() { // from class: com.smartadserver.android.library.c.c.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    c.this.f5342a.d();
                    if (a.this.c != null && a.this.c[0] != null) {
                        a.this.f5348a.launchClickTarget(a.this.c[0].getContext());
                    }
                }
            };
            String videoUrl = this.f5348a.getVideoUrl();
            if (videoUrl != null) {
                this.d = new SASNativeVideoAdElement();
                this.d.setVideoUrl(videoUrl);
                this.d.setAutoplay(true);
                this.d.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                this.d.setVideoVerticalPosition(1);
                String videoStartTrackingUrl = this.f5348a.getVideoStartTrackingUrl();
                if (videoStartTrackingUrl != null && videoStartTrackingUrl.length() > 0) {
                    this.d.setEventTrackingURLs(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START, new String[]{videoStartTrackingUrl});
                }
                String videoEndTrackingUrl = this.f5348a.getVideoEndTrackingUrl(100, true);
                if (videoEndTrackingUrl != null && videoEndTrackingUrl.length() > 0) {
                    this.d.setEventTrackingURLs(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE, new String[]{videoEndTrackingUrl});
                }
            }
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String a() {
            return this.f5348a.getTitle();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String b() {
            return this.f5348a.getDescriptionText();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String c() {
            return "";
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String d() {
            return this.f5348a.getIconUrl();
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
            return this.f5348a.getImageUrl();
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
        public float j() {
            return this.f5348a.getStarRating();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String k() {
            return this.f5348a.getCtaText();
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String n() {
            return "";
        }

        @Override // com.smartadserver.android.library.c.g.a
        public SASNativeVideoAdElement l() {
            return this.d;
        }

        @Override // com.smartadserver.android.library.c.g.a
        public View a(Context context) {
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
            c.this.a(this.f5348a.getImpressionTrackingUrl());
        }

        @Override // com.smartadserver.android.library.c.g.a
        public String m() {
            return "http://applovin.com/optoutmobile";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        com.smartadserver.android.library.a.c.a((Context) null).a(str, true);
    }

    @Override // com.smartadserver.android.library.c.i
    public g a() {
        return this.c;
    }

    private void e() {
    }

    @Override // com.smartadserver.android.library.c.i
    public void b() {
        this.f5342a = null;
        e();
    }

    @Override // com.smartadserver.android.library.c.i
    public boolean c() {
        try {
            Class.forName("com.applovin.adview.AppLovinInterstitialAd");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
