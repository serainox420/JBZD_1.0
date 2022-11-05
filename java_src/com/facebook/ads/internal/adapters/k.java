package com.facebook.ads.internal.adapters;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.adapters.j;
import com.facebook.ads.internal.view.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.intentsoftware.addapptr.ad.NativeAd;
import com.pubmatic.sdk.common.CommonConstants;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class k extends i implements com.facebook.ads.internal.view.d {
    static final /* synthetic */ boolean e;
    private d.a g;
    private Activity h;
    private com.facebook.ads.internal.view.d.b.h i;
    private com.facebook.ads.internal.view.c.a l;
    private com.facebook.ads.internal.view.d.b.j m;
    private com.facebook.ads.internal.view.d.b.j n;
    private com.facebook.ads.internal.view.d.b.c o;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b> f = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.adapters.k.1
        @Override // com.facebook.ads.internal.g.s
        public Class<com.facebook.ads.internal.view.d.a.b> a() {
            return com.facebook.ads.internal.view.d.a.b.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.b bVar) {
            if (k.this.h == null) {
                return;
            }
            k.this.h.finish();
        }
    };
    private AudienceNetworkActivity.BackButtonInterceptor j = new AudienceNetworkActivity.BackButtonInterceptor() { // from class: com.facebook.ads.internal.adapters.k.2
        @Override // com.facebook.ads.AudienceNetworkActivity.BackButtonInterceptor
        public boolean interceptBackButton() {
            return k.this.i != null && !k.this.i.a();
        }
    };
    private j.a k = j.a.UNSPECIFIED;

    static {
        e = !k.class.desiredAssertionStatus();
    }

    private void a(int i) {
        float f = this.c.getResources().getDisplayMetrics().density;
        int id = this.f2092a.getVideoView().getId();
        if (i != 1) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            this.i.setLayoutParams(layoutParams);
            this.i.setPadding(0, 0, 0, 48);
            if (this.l != null) {
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams2.addRule(10);
                layoutParams2.addRule(11);
                layoutParams2.topMargin = (int) (12.0f * f);
                layoutParams2.rightMargin = (int) (12.0f * f);
                this.l.setLayoutParams(layoutParams2);
            }
            if (this.m != null) {
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams3.topMargin = (int) (12.0f * f);
                layoutParams3.addRule(10);
                layoutParams3.addRule(9);
                this.m.setPadding(32, 12, 16, 12);
                this.m.setLayoutParams(layoutParams3);
            }
            if (this.n != null) {
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) (f * 400.0f), -2);
                layoutParams4.addRule(12);
                layoutParams4.addRule(9);
                this.n.setPadding(32, 24, 32, 24);
                this.n.setLayoutParams(layoutParams4);
            }
            if (this.o == null) {
                return;
            }
            this.f2092a.removeViewInLayout(this.o);
            return;
        }
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.topMargin = (int) ((-54.0f) * f);
        layoutParams5.addRule(3, id);
        layoutParams5.addRule(11);
        this.i.setLayoutParams(layoutParams5);
        this.i.setPadding(0, 0, 0, 48);
        if (this.l != null) {
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams6.topMargin = (int) (82.0f * f);
            layoutParams6.addRule(14);
            layoutParams6.addRule(3, id);
            this.l.setLayoutParams(layoutParams6);
        }
        if (this.m != null) {
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams7.bottomMargin = (int) (12.0f * f);
            layoutParams7.addRule(14);
            layoutParams7.addRule(2, id);
            this.m.setPadding(0, 0, 0, 0);
            this.m.setLayoutParams(layoutParams7);
        }
        if (this.n != null) {
            RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams8.topMargin = (int) (32.0f * f);
            layoutParams8.addRule(14);
            layoutParams8.addRule(3, id);
            this.n.setPadding(0, 0, 0, 0);
            this.n.setLayoutParams(layoutParams8);
        }
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams9.topMargin = (int) (8.0f * f);
        layoutParams9.leftMargin = (int) (f * 8.0f);
        layoutParams9.addRule(9);
        layoutParams9.addRule(3, id);
        if (this.o == null) {
            return;
        }
        this.o.setLayoutParams(layoutParams9);
        if (this.o.getParent() != null) {
            return;
        }
        this.f2092a.addView(this.o);
    }

    @Override // com.facebook.ads.internal.adapters.i
    @TargetApi(17)
    protected void a() {
        this.f2092a.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        this.f2092a.a(new com.facebook.ads.internal.view.d.b.i(this.c));
        this.f2092a.a(new com.facebook.ads.internal.view.d.b.k(this.c));
        String optString = this.b.getJSONObject("context").optString("orientation");
        if (!optString.isEmpty()) {
            this.k = j.a.a(Integer.parseInt(optString));
            this.k = j.a.UNSPECIFIED;
        }
        JSONObject jSONObject = this.b.getJSONObject(CommonConstants.RESPONSE_TEXT);
        this.f2092a.getVideoView().setId(View.generateViewId());
        int c = c();
        if (c >= 0) {
            this.i = new com.facebook.ads.internal.view.d.b.h(this.c, c, jSONObject.optString("skipAdIn", "Skip Ad in"), jSONObject.optString("skipAd", "Skip Ad"));
            this.f2092a.a(this.i);
        }
        if (this.b.has(NativeAd.CALL_TO_ACTION_TEXT_ASSET) && !this.b.isNull(NativeAd.CALL_TO_ACTION_TEXT_ASSET)) {
            JSONObject jSONObject2 = this.b.getJSONObject(NativeAd.CALL_TO_ACTION_TEXT_ASSET);
            this.l = new com.facebook.ads.internal.view.c.a(this.c, jSONObject2.getString("url"), jSONObject2.getString(CommonConstants.RESPONSE_TEXT));
            this.f2092a.a(this.l);
        }
        String optString2 = jSONObject.optString("title");
        if (!optString2.isEmpty()) {
            this.m = new com.facebook.ads.internal.view.d.b.j(this.c, optString2, 18);
            this.f2092a.a(this.m);
        }
        String optString3 = jSONObject.optString("subtitle");
        if (!optString3.isEmpty()) {
            this.n = new com.facebook.ads.internal.view.d.b.j(this.c, optString3, 16);
            this.f2092a.a(this.n);
        }
        String b = b();
        if (b != null) {
            this.o = new com.facebook.ads.internal.view.d.b.c(this.c, b);
            this.f2092a.a(this.o);
        }
        com.facebook.ads.internal.view.d.b.a aVar = new com.facebook.ads.internal.view.d.b.a(this.c, "http://m.facebook.com/ads/ad_choices", "", new float[]{BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        aVar.setLayoutParams(layoutParams);
        this.f2092a.a(aVar);
        this.f2092a.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.internal.view.d
    @TargetApi(17)
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        this.h = audienceNetworkActivity;
        if (e || this.g != null) {
            if (!e && this.i == null) {
                throw new AssertionError();
            }
            audienceNetworkActivity.addBackButtonInterceptor(this.j);
            this.g.a(this.f2092a);
            a(this.h.getResources().getConfiguration().orientation);
            d();
            return;
        }
        throw new AssertionError();
    }

    public void a(Configuration configuration) {
        a(configuration.orientation);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Bundle bundle) {
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(d.a aVar) {
        this.g = aVar;
    }

    @Override // com.facebook.ads.internal.view.d
    public void e() {
    }

    @Override // com.facebook.ads.internal.view.d
    public void f() {
    }

    @Override // com.facebook.ads.internal.view.d
    public void g() {
    }

    public j.a h() {
        return this.k;
    }
}
