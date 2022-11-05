package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RelativeLayout;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.util.ad;
import com.facebook.ads.internal.util.af;
import com.facebook.ads.internal.util.aj;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.loopme.common.StaticParams;
import com.mopub.mobileads.resource.DrawableConstants;
import com.pubmatic.sdk.common.CommonConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class i extends r implements af<Bundle> {
    static final /* synthetic */ boolean d;

    /* renamed from: a  reason: collision with root package name */
    protected com.facebook.ads.internal.view.m f2092a;
    protected JSONObject b;
    protected Context c;
    private com.facebook.ads.a.a i;
    private com.facebook.ads.internal.g.f j;
    private String k;
    private String m;
    private String n;
    private String o;
    private aj p;
    private String q;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b> e = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.adapters.i.1
        @Override // com.facebook.ads.internal.g.s
        public Class<com.facebook.ads.internal.view.d.a.b> a() {
            return com.facebook.ads.internal.view.d.a.b.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.b bVar) {
            i.this.i.d(i.this);
        }
    };
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.l> f = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.l>() { // from class: com.facebook.ads.internal.adapters.i.2
        @Override // com.facebook.ads.internal.g.s
        public Class<com.facebook.ads.internal.view.d.a.l> a() {
            return com.facebook.ads.internal.view.d.a.l.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.l lVar) {
            i.this.l = true;
            i.this.i.a(i.this);
        }
    };
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.d> g = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.d>() { // from class: com.facebook.ads.internal.adapters.i.3
        @Override // com.facebook.ads.internal.g.s
        public Class<com.facebook.ads.internal.view.d.a.d> a() {
            return com.facebook.ads.internal.view.d.a.d.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.d dVar) {
            i.this.i.a(i.this, AdError.INTERNAL_ERROR);
        }
    };
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.a> h = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.a>() { // from class: com.facebook.ads.internal.adapters.i.4
        @Override // com.facebook.ads.internal.g.s
        public Class<com.facebook.ads.internal.view.d.a.a> a() {
            return com.facebook.ads.internal.view.d.a.a.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.a aVar) {
            if (i.this.i != null) {
                i.this.i.b(i.this);
            }
            if (i.this.j != null) {
                if (i.this.q != null) {
                    i.this.j.c(i.this.q, new HashMap());
                } else {
                    i.this.j.a(com.facebook.ads.internal.util.b.BILLABLE_CLICK.a(i.this.o));
                }
            }
        }
    };
    private boolean l = false;

    static {
        d = !i.class.desiredAssertionStatus();
    }

    private void a(Context context, com.facebook.ads.a.a aVar, JSONObject jSONObject, com.facebook.ads.internal.g.f fVar, Bundle bundle) {
        this.c = context;
        this.i = aVar;
        this.j = fVar;
        this.b = jSONObject;
        this.l = false;
        JSONObject jSONObject2 = jSONObject.getJSONObject(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        JSONObject jSONObject3 = jSONObject.getJSONObject("trackers");
        this.q = jSONObject.optString("ct");
        this.k = jSONObject2.getString(AudienceNetworkActivity.VIDEO_URL);
        this.m = jSONObject3.getString("nativeImpression");
        this.n = jSONObject3.getString("impression");
        this.o = jSONObject3.getString("click");
        this.f2092a = new com.facebook.ads.internal.view.m(context);
        a();
        this.f2092a.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.e);
        this.f2092a.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.g);
        this.f2092a.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        this.f2092a.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.h);
        if (bundle != null) {
            this.p = new ad(context, fVar, this.f2092a, jSONObject3.getString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO), this.q, bundle.getBundle("logger"));
        } else {
            this.p = new ad(context, fVar, this.f2092a, jSONObject3.getString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO), this.q);
        }
        this.i.a(this, this.f2092a);
        this.f2092a.setVideoURI(this.k);
    }

    protected void a() {
        if (d || this.c != null) {
            if (!d && this.b == null) {
                throw new AssertionError();
            }
            JSONObject jSONObject = this.b.getJSONObject(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
            JSONObject optJSONObject = this.b.optJSONObject(CommonConstants.RESPONSE_TEXT);
            if (optJSONObject == null) {
                optJSONObject = new JSONObject();
            }
            this.f2092a.a(new com.facebook.ads.internal.view.d.b.i(this.c));
            this.f2092a.a(new com.facebook.ads.internal.view.d.b.k(this.c));
            this.f2092a.a(new com.facebook.ads.internal.view.d.b.b(this.c));
            String b = b();
            if (b != null) {
                com.facebook.ads.internal.view.d.b.c cVar = new com.facebook.ads.internal.view.d.b.c(this.c, b, true);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(12);
                layoutParams.addRule(9);
                cVar.setLayoutParams(layoutParams);
                this.f2092a.a(cVar);
            }
            if (jSONObject.has("destinationURL") && !jSONObject.isNull("destinationURL")) {
                String string = jSONObject.getString("destinationURL");
                if (!TextUtils.isEmpty(string)) {
                    com.facebook.ads.internal.view.d.b.e eVar = new com.facebook.ads.internal.view.d.b.e(this.c, string, this.q, optJSONObject.optString("learnMore", DrawableConstants.CtaButton.DEFAULT_CTA_TEXT));
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams2.addRule(10);
                    layoutParams2.addRule(11);
                    eVar.setLayoutParams(layoutParams2);
                    this.f2092a.a(eVar);
                }
            }
            this.f2092a.a(new com.facebook.ads.internal.view.d.b.a(this.c, "http://m.facebook.com/ads/ad_choices", "", new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED}));
            int c = c();
            if (c <= 0) {
                return;
            }
            com.facebook.ads.internal.view.d.b.h hVar = new com.facebook.ads.internal.view.d.b.h(this.c, c, optJSONObject.optString("skipAdIn", "Skip Ad in"), optJSONObject.optString("skipAd", "Skip Ad"));
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(12);
            layoutParams3.addRule(11);
            hVar.setLayoutParams(layoutParams3);
            hVar.setPadding(0, 0, 0, 30);
            this.f2092a.a(hVar);
            return;
        }
        throw new AssertionError();
    }

    public final void a(Context context, com.facebook.ads.a.a aVar, com.facebook.ads.internal.g.f fVar, Bundle bundle) {
        try {
            a(context, aVar, new JSONObject(bundle.getString("ad_response")), fVar, bundle);
        } catch (JSONException e) {
            aVar.a(this, AdError.INTERNAL_ERROR);
        }
    }

    @Override // com.facebook.ads.internal.adapters.r
    public final void a(Context context, com.facebook.ads.a.a aVar, Map<String, Object> map, com.facebook.ads.internal.g.f fVar) {
        try {
            a(context, aVar, (JSONObject) map.get("data"), fVar, null);
        } catch (JSONException e) {
            aVar.a(this, AdError.INTERNAL_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b() {
        if (d || this.b != null) {
            try {
                JSONObject jSONObject = this.b.getJSONObject("capabilities");
                if (!jSONObject.has("countdown") || jSONObject.isNull("countdown")) {
                    return null;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("countdown");
                if (!jSONObject2.has(StaticParams.FORMAT_TAG)) {
                    return null;
                }
                return jSONObject2.optString(StaticParams.FORMAT_TAG);
            } catch (Exception e) {
                Log.w(String.valueOf(i.class), "Invalid JSON", e);
                return null;
            }
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int c() {
        if (d || this.b != null) {
            try {
                JSONObject jSONObject = this.b.getJSONObject("capabilities");
                if (!jSONObject.has("skipButton") || jSONObject.isNull("skipButton")) {
                    return -1;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("skipButton");
                if (!jSONObject2.has("skippableSeconds")) {
                    return -1;
                }
                return jSONObject2.getInt("skippableSeconds");
            } catch (Exception e) {
                Log.w(String.valueOf(i.class), "Invalid JSON", e);
                return -1;
            }
        }
        throw new AssertionError();
    }

    @Override // com.facebook.ads.internal.adapters.r
    public boolean d() {
        if (!this.l || this.f2092a == null) {
            return false;
        }
        if (this.p.k() > 0) {
            this.f2092a.a(this.p.k());
            this.f2092a.d();
        } else {
            this.f2092a.d();
            HashMap hashMap = new HashMap();
            int c = c();
            if (c > 0) {
                hashMap.put("skippable_seconds", String.valueOf(c));
            }
            if (this.q != null) {
                this.j.b(this.q, hashMap);
            } else {
                this.j.a(this.m, hashMap);
                this.j.a(this.n);
            }
            if (this.i != null) {
                this.i.c(this);
            }
        }
        return true;
    }

    @Override // com.facebook.ads.internal.util.af
    public Bundle getSaveInstanceState() {
        if (this.p == null || this.b == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("logger", this.p.getSaveInstanceState());
        bundle.putString("ad_response", this.b.toString());
        return bundle;
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        this.f2092a.g();
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = false;
        this.m = null;
        this.n = null;
        this.o = null;
        this.f2092a = null;
        this.p = null;
        this.b = null;
        this.c = null;
    }
}
