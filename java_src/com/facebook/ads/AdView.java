package com.facebook.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.a;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.h;
import com.pubmatic.sdk.common.CommonConstants;
/* loaded from: classes.dex */
public class AdView extends RelativeLayout implements Ad {

    /* renamed from: a  reason: collision with root package name */
    private static final c f2012a = c.ADS;
    private final DisplayMetrics b;
    private final AdSize c;
    private final String d;
    private DisplayAdController e;
    private AdListener f;
    private ImpressionListener g;
    private View h;
    private volatile boolean i;

    public AdView(Context context, String str, AdSize adSize) {
        super(context);
        if (adSize == null || adSize == AdSize.INTERSTITIAL) {
            throw new IllegalArgumentException(CommonConstants.REQUESTPARAM_AD_SIZE);
        }
        this.b = getContext().getResources().getDisplayMetrics();
        this.c = adSize;
        this.d = str;
        this.e = new DisplayAdController(context, str, h.a(adSize), AdPlacementType.BANNER, adSize, f2012a, 1, false);
        this.e.a(new a() { // from class: com.facebook.ads.AdView.1
            @Override // com.facebook.ads.internal.a
            public void a() {
                if (AdView.this.f != null) {
                    AdView.this.f.onAdClicked(AdView.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(View view) {
                if (view == null) {
                    throw new IllegalStateException("Cannot present null view");
                }
                AdView.this.h = view;
                AdView.this.removeAllViews();
                AdView.this.addView(AdView.this.h);
                if (AdView.this.h instanceof com.facebook.ads.internal.view.c) {
                    h.a(AdView.this.b, AdView.this.h, AdView.this.c);
                }
                if (AdView.this.f == null) {
                    return;
                }
                AdView.this.f.onAdLoaded(AdView.this);
            }

            @Override // com.facebook.ads.internal.a
            public void a(AdAdapter adAdapter) {
                if (AdView.this.e != null) {
                    AdView.this.e.c();
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(b bVar) {
                if (AdView.this.f != null) {
                    AdView.this.f.onError(AdView.this, bVar.b());
                }
            }

            @Override // com.facebook.ads.internal.a
            public void b() {
                if (AdView.this.g != null) {
                    AdView.this.g.onLoggingImpression(AdView.this);
                }
                if (!(AdView.this.f instanceof ImpressionListener) || AdView.this.f == AdView.this.g) {
                    return;
                }
                ((ImpressionListener) AdView.this.f).onLoggingImpression(AdView.this);
            }
        });
    }

    @Override // com.facebook.ads.Ad
    public void destroy() {
        if (this.e != null) {
            this.e.d();
            this.e = null;
        }
        removeAllViews();
        this.h = null;
    }

    public void disableAutoRefresh() {
        if (this.e != null) {
            this.e.h();
        }
    }

    @Override // com.facebook.ads.Ad
    public String getPlacementId() {
        return this.d;
    }

    @Override // com.facebook.ads.Ad
    public void loadAd() {
        if (!this.i) {
            this.e.b();
            this.i = true;
        } else if (this.e == null) {
        } else {
            this.e.g();
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.h != null) {
            h.a(this.b, this.h, this.c);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.e == null) {
            return;
        }
        if (i == 0) {
            this.e.f();
        } else if (i != 8) {
        } else {
            this.e.e();
        }
    }

    public void setAdListener(AdListener adListener) {
        this.f = adListener;
    }

    @Deprecated
    public void setImpressionListener(ImpressionListener impressionListener) {
        this.g = impressionListener;
    }
}
