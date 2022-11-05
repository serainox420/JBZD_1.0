package com.facebook.ads;

import android.content.Context;
import android.util.Log;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.a;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.x;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.c.b;
import com.facebook.ads.internal.e;
import com.facebook.ads.internal.server.AdPlacementType;
/* loaded from: classes.dex */
public class RewardedVideoAd implements Ad {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2053a = RewardedVideoAd.class.getSimpleName();
    private final Context b;
    private final String c;
    private DisplayAdController d;
    private boolean e = false;
    private RewardedVideoAdListener f;
    private b g;
    private RewardData h;

    public RewardedVideoAd(Context context, String str) {
        this.b = context;
        this.c = str;
        this.g = new b(context);
    }

    private void a() {
        b();
        this.e = false;
        this.d = new DisplayAdController(this.b, this.c, e.REWARDED_VIDEO, AdPlacementType.REWARDED_VIDEO, AdSize.INTERSTITIAL, c.ADS, 1, true);
        this.d.a(new a() { // from class: com.facebook.ads.RewardedVideoAd.1
            @Override // com.facebook.ads.internal.a
            public void a() {
                if (RewardedVideoAd.this.f != null) {
                    RewardedVideoAd.this.f.onAdClicked(RewardedVideoAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(AdAdapter adAdapter) {
                if (RewardedVideoAd.this.h != null) {
                    ((x) adAdapter).a(RewardedVideoAd.this.h);
                }
                RewardedVideoAd.this.g.b(((x) adAdapter).a());
                RewardedVideoAd.this.g.a(new com.facebook.ads.internal.c.a() { // from class: com.facebook.ads.RewardedVideoAd.1.1
                    @Override // com.facebook.ads.internal.c.a
                    public void a() {
                        RewardedVideoAd.this.e = true;
                        if (RewardedVideoAd.this.f != null) {
                            RewardedVideoAd.this.f.onAdLoaded(RewardedVideoAd.this);
                        }
                    }
                });
            }

            @Override // com.facebook.ads.internal.a
            public void a(com.facebook.ads.internal.b bVar) {
                if (RewardedVideoAd.this.f != null) {
                    RewardedVideoAd.this.f.onError(RewardedVideoAd.this, bVar.b());
                }
            }

            @Override // com.facebook.ads.internal.a
            public void b() {
                if (RewardedVideoAd.this.f != null) {
                    RewardedVideoAd.this.f.onLoggingImpression(RewardedVideoAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void f() {
                RewardedVideoAd.this.f.onRewardedVideoCompleted();
            }

            @Override // com.facebook.ads.internal.a
            public void g() {
                if (RewardedVideoAd.this.f != null) {
                    RewardedVideoAd.this.f.onRewardedVideoClosed();
                }
            }

            @Override // com.facebook.ads.internal.a
            public void h() {
                if (RewardedVideoAd.this.f instanceof S2SRewardedVideoAdListener) {
                    ((S2SRewardedVideoAdListener) RewardedVideoAd.this.f).onRewardServerFailed();
                }
            }

            @Override // com.facebook.ads.internal.a
            public void i() {
                if (RewardedVideoAd.this.f instanceof S2SRewardedVideoAdListener) {
                    ((S2SRewardedVideoAdListener) RewardedVideoAd.this.f).onRewardServerSuccess();
                }
            }
        });
        this.d.b();
    }

    private final void b() {
        if (this.d != null) {
            this.d.d();
            this.d = null;
        }
    }

    @Override // com.facebook.ads.Ad
    public void destroy() {
        b();
    }

    @Override // com.facebook.ads.Ad
    public String getPlacementId() {
        return this.c;
    }

    public boolean isAdLoaded() {
        return this.e;
    }

    @Override // com.facebook.ads.Ad
    public void loadAd() {
        try {
            a();
        } catch (Exception e) {
            Log.e(f2053a, "Error loading rewarded video ad", e);
            if (this.f == null) {
                return;
            }
            this.f.onError(this, AdError.INTERNAL_ERROR);
        }
    }

    public void setAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.f = rewardedVideoAdListener;
    }

    public void setRewardData(RewardData rewardData) {
        this.h = rewardData;
    }

    public boolean show() {
        if (this.e) {
            this.d.c();
            this.e = false;
            return true;
        } else if (this.f == null) {
            return false;
        } else {
            this.f.onError(this, AdError.INTERNAL_ERROR);
            return false;
        }
    }
}
