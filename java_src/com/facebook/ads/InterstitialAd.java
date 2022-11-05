package com.facebook.ads;

import android.content.Context;
import android.view.View;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.a;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.h;
/* loaded from: classes.dex */
public class InterstitialAd implements Ad {

    /* renamed from: a  reason: collision with root package name */
    private static final c f2028a = c.ADS;
    private final Context b;
    private final String c;
    private DisplayAdController d;
    private boolean e;
    private boolean f;
    private InterstitialAdListener g;
    private ImpressionListener h;

    public InterstitialAd(Context context, String str) {
        this.b = context;
        this.c = str;
    }

    @Override // com.facebook.ads.Ad
    public void destroy() {
        if (this.d != null) {
            this.d.d();
            this.d = null;
        }
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
        this.e = false;
        if (this.f) {
            throw new IllegalStateException("InterstitialAd cannot be loaded while being displayed. Make sure your adapter calls adapterListener.onInterstitialDismissed().");
        }
        if (this.d != null) {
            this.d.d();
            this.d = null;
        }
        AdSize adSize = AdSize.INTERSTITIAL;
        this.d = new DisplayAdController(this.b, this.c, h.a(AdSize.INTERSTITIAL), AdPlacementType.INTERSTITIAL, adSize, f2028a, 1, true);
        this.d.a(new a() { // from class: com.facebook.ads.InterstitialAd.1
            @Override // com.facebook.ads.internal.a
            public void a() {
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onAdClicked(InterstitialAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(View view) {
            }

            @Override // com.facebook.ads.internal.a
            public void a(AdAdapter adAdapter) {
                InterstitialAd.this.e = true;
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onAdLoaded(InterstitialAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(b bVar) {
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onError(InterstitialAd.this, bVar.b());
                }
            }

            @Override // com.facebook.ads.internal.a
            public void b() {
                if (InterstitialAd.this.h != null) {
                    InterstitialAd.this.h.onLoggingImpression(InterstitialAd.this);
                }
                if (!(InterstitialAd.this.g instanceof ImpressionListener) || InterstitialAd.this.g == InterstitialAd.this.h) {
                    return;
                }
                ((ImpressionListener) InterstitialAd.this.g).onLoggingImpression(InterstitialAd.this);
            }

            @Override // com.facebook.ads.internal.a
            public void d() {
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onInterstitialDisplayed(InterstitialAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void e() {
                InterstitialAd.this.f = false;
                if (InterstitialAd.this.d != null) {
                    InterstitialAd.this.d.d();
                    InterstitialAd.this.d = null;
                }
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onInterstitialDismissed(InterstitialAd.this);
                }
            }
        });
        this.d.b();
    }

    public void setAdListener(InterstitialAdListener interstitialAdListener) {
        this.g = interstitialAdListener;
    }

    @Deprecated
    public void setImpressionListener(ImpressionListener impressionListener) {
        this.h = impressionListener;
    }

    public boolean show() {
        if (!this.e) {
            if (this.g == null) {
                return false;
            }
            this.g.onError(this, AdError.INTERNAL_ERROR);
            return false;
        }
        this.d.c();
        this.f = true;
        this.e = false;
        return true;
    }
}
