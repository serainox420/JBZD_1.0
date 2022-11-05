package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.AdError;
import com.facebook.ads.AdNetwork;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.util.ak;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeAppInstallAdView;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeContentAdView;
import com.intentsoftware.addapptr.AATKit;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c extends v implements t {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2078a = c.class.getSimpleName();
    private View b;
    private NativeAd c;
    private w d;
    private NativeAdView e;
    private View f;
    private boolean g;
    private Uri h;
    private Uri i;
    private String j;
    private String k;
    private String l;
    private String m;

    private void a(View view) {
        ViewGroup viewGroup;
        if (view == null || (viewGroup = (ViewGroup) view.getParent()) == null) {
            return;
        }
        viewGroup.removeView(view);
    }

    @Override // com.facebook.ads.internal.adapters.v
    public List<com.facebook.ads.NativeAd> A() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String B() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public AdNetwork C() {
        return AdNetwork.ADMOB;
    }

    @Override // com.facebook.ads.internal.adapters.t
    public e D() {
        return e.ADMOB;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a() {
        ViewGroup viewGroup;
        a(this.f);
        this.f = null;
        if (this.b != null) {
            ViewGroup viewGroup2 = (ViewGroup) this.b.getParent();
            if (((viewGroup2 instanceof NativeContentAdView) || (viewGroup2 instanceof NativeAppInstallAdView)) && (viewGroup = (ViewGroup) viewGroup2.getParent()) != null) {
                int indexOfChild = viewGroup.indexOfChild(viewGroup2);
                a(this.b);
                a(viewGroup2);
                viewGroup.addView(this.b, indexOfChild);
            }
            this.b = null;
        }
        this.e = null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(int i) {
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(final Context context, w wVar, com.facebook.ads.internal.g.f fVar, Map<String, Object> map) {
        boolean z;
        boolean z2;
        com.facebook.ads.internal.util.h.a(context, com.facebook.ads.internal.util.x.a(D()) + " Loading");
        JSONObject jSONObject = (JSONObject) map.get("data");
        String optString = jSONObject.optString("ad_unit_id");
        JSONArray optJSONArray = jSONObject.optJSONArray("creative_types");
        if (optJSONArray != null) {
            int length = optJSONArray.length();
            z = false;
            z2 = false;
            for (int i = 0; i < length; i++) {
                try {
                    String string = optJSONArray.getString(i);
                    if (string != null) {
                        char c = 65535;
                        switch (string.hashCode()) {
                            case 704091517:
                                if (string.equals("app_install")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case 883765328:
                                if (string.equals("page_post")) {
                                    c = 1;
                                    break;
                                }
                                break;
                        }
                        switch (c) {
                            case 0:
                                z2 = true;
                                continue;
                            case 1:
                                z = true;
                                continue;
                        }
                    }
                } catch (JSONException e) {
                    com.facebook.ads.internal.util.h.a(context, com.facebook.ads.internal.util.x.a(D()) + " AN server error");
                    wVar.a(this, AdError.SERVER_ERROR);
                    return;
                }
            }
        } else {
            z = false;
            z2 = false;
        }
        if (TextUtils.isEmpty(optString) || (!z2 && !z)) {
            com.facebook.ads.internal.util.h.a(context, com.facebook.ads.internal.util.x.a(D()) + " AN server error");
            wVar.a(this, AdError.SERVER_ERROR);
            return;
        }
        this.d = wVar;
        AdLoader.Builder builder = new AdLoader.Builder(context, optString);
        if (z2) {
            builder.forAppInstallAd(new NativeAppInstallAd.OnAppInstallAdLoadedListener() { // from class: com.facebook.ads.internal.adapters.c.1
                @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
                public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
                    Uri uri = null;
                    c.this.c = nativeAppInstallAd;
                    c.this.g = true;
                    c.this.j = nativeAppInstallAd.getHeadline() != null ? nativeAppInstallAd.getHeadline().toString() : null;
                    c.this.k = nativeAppInstallAd.getBody() != null ? nativeAppInstallAd.getBody().toString() : null;
                    c.this.m = nativeAppInstallAd.getStore() != null ? nativeAppInstallAd.getStore().toString() : null;
                    c.this.l = nativeAppInstallAd.getCallToAction() != null ? nativeAppInstallAd.getCallToAction().toString() : null;
                    List<NativeAd.Image> images = nativeAppInstallAd.getImages();
                    c.this.h = (images == null || images.size() <= 0) ? null : images.get(0).getUri();
                    c cVar = c.this;
                    if (nativeAppInstallAd.getIcon() != null) {
                        uri = nativeAppInstallAd.getIcon().getUri();
                    }
                    cVar.i = uri;
                    if (c.this.d != null) {
                        com.facebook.ads.internal.util.h.a(context, com.facebook.ads.internal.util.x.a(c.this.D()) + " Loaded");
                        c.this.d.a(c.this);
                    }
                }
            });
        }
        if (z) {
            builder.forContentAd(new NativeContentAd.OnContentAdLoadedListener() { // from class: com.facebook.ads.internal.adapters.c.2
                @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
                public void onContentAdLoaded(NativeContentAd nativeContentAd) {
                    Uri uri = null;
                    c.this.c = nativeContentAd;
                    c.this.g = true;
                    c.this.j = nativeContentAd.getHeadline() != null ? nativeContentAd.getHeadline().toString() : null;
                    c.this.k = nativeContentAd.getBody() != null ? nativeContentAd.getBody().toString() : null;
                    c.this.m = nativeContentAd.getAdvertiser() != null ? nativeContentAd.getAdvertiser().toString() : null;
                    c.this.l = nativeContentAd.getCallToAction() != null ? nativeContentAd.getCallToAction().toString() : null;
                    List<NativeAd.Image> images = nativeContentAd.getImages();
                    c.this.h = (images == null || images.size() <= 0) ? null : images.get(0).getUri();
                    c cVar = c.this;
                    if (nativeContentAd.getLogo() != null) {
                        uri = nativeContentAd.getLogo().getUri();
                    }
                    cVar.i = uri;
                    if (c.this.d != null) {
                        com.facebook.ads.internal.util.h.a(context, com.facebook.ads.internal.util.x.a(c.this.D()) + " Loaded");
                        c.this.d.a(c.this);
                    }
                }
            });
        }
        builder.withAdListener(new AdListener() { // from class: com.facebook.ads.internal.adapters.c.3
            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i2) {
                com.facebook.ads.internal.util.h.a(context, com.facebook.ads.internal.util.x.a(c.this.D()) + " Failed with error code: " + i2);
                if (c.this.d != null) {
                    c.this.d.a(c.this, new AdError(3001, "AdMob error code: " + i2));
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                if (c.this.d != null) {
                    c.this.d.c(c.this);
                }
            }
        }).withNativeAdOptions(new NativeAdOptions.Builder().setReturnUrlsForImageAssets(true).build()).build().loadAd(new AdRequest.Builder().build());
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(View view, List<View> list) {
        this.b = view;
        if (!b() || view == null) {
            return;
        }
        ViewGroup viewGroup = null;
        int i = -1;
        while (true) {
            int i2 = i;
            ViewGroup viewGroup2 = viewGroup;
            ViewGroup viewGroup3 = (ViewGroup) view.getParent();
            if (viewGroup3 == null) {
                Log.e(f2078a, "View must have valid parent for AdMob registration, skipping registration. Impressions and clicks will not be logged.");
                return;
            }
            if (viewGroup3 instanceof NativeAdView) {
                ViewGroup viewGroup4 = (ViewGroup) viewGroup3.getParent();
                if (viewGroup4 == null) {
                    Log.e(f2078a, "View must have valid parent for AdMob registration, skipping registration. Impressions and clicks will not be logged.");
                    return;
                }
                int indexOfChild = viewGroup4.indexOfChild(viewGroup3);
                viewGroup3.removeView(view);
                viewGroup4.removeView(viewGroup3);
                viewGroup4.addView(view, indexOfChild);
                i = i2;
                viewGroup = viewGroup2;
            } else {
                viewGroup = viewGroup3;
                i = viewGroup3.indexOfChild(view);
            }
            if (viewGroup != null) {
                NativeAdView nativeContentAdView = this.c instanceof NativeContentAd ? new NativeContentAdView(view.getContext()) : new NativeAppInstallAdView(view.getContext());
                if (view instanceof ViewGroup) {
                    nativeContentAdView.setLayoutParams(view.getLayoutParams());
                }
                a(view);
                nativeContentAdView.addView(view);
                viewGroup.removeView(nativeContentAdView);
                viewGroup.addView(nativeContentAdView, i);
                this.e = nativeContentAdView;
                this.e.setNativeAd(this.c);
                this.f = new View(view.getContext());
                this.e.addView(this.f);
                this.f.setVisibility(8);
                if (this.e instanceof NativeContentAdView) {
                    ((NativeContentAdView) this.e).setCallToActionView(this.f);
                } else if (this.e instanceof NativeAppInstallAdView) {
                    ((NativeAppInstallAdView) this.e).setCallToActionView(this.f);
                }
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.facebook.ads.internal.adapters.c.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        c.this.f.performClick();
                    }
                };
                for (View view2 : list) {
                    view2.setOnClickListener(onClickListener);
                }
                return;
            }
        }
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(w wVar) {
        this.d = wVar;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(Map<String, String> map) {
        if (!b() || this.d == null) {
            return;
        }
        this.d.b(this);
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void b(Map<String, String> map) {
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean b() {
        return this.g && this.c != null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean c() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean d() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean e() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean f() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean g() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int h() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int i() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int j() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image k() {
        if (!b() || this.i == null) {
            return null;
        }
        return new NativeAd.Image(this.i.toString(), 50, 50);
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image l() {
        if (!b() || this.h == null) {
            return null;
        }
        return new NativeAd.Image(this.h.toString(), 1200, AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS);
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAdViewAttributes m() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String n() {
        return this.j;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String o() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        a();
        this.d = null;
        this.c = null;
        this.g = false;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String p() {
        return this.k;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String q() {
        return this.l;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String r() {
        return this.m;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Rating s() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image t() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String u() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String v() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String w() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String x() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public ak y() {
        return ak.UNKNOWN;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String z() {
        return null;
    }
}
