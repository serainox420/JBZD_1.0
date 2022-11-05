package com.adcolony.sdk;

import android.content.Intent;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColonyInterstitial {
    public static final int ADCOLONY_IAP_ENGAGEMENT_END_CARD = 0;
    public static final int ADCOLONY_IAP_ENGAGEMENT_OVERLAY = 1;

    /* renamed from: a  reason: collision with root package name */
    AdColonyInterstitialListener f980a;
    c b;
    AdColonyAdOptions c;
    int d;
    String e;
    int f;
    String g;
    boolean h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyInterstitial(String str, AdColonyInterstitialListener adColonyInterstitialListener, String str2) {
        this.f980a = adColonyInterstitialListener;
        this.g = str2;
        this.e = str;
    }

    public boolean show() {
        if (a.m == null) {
            return false;
        }
        if (this.i) {
            u.e.b("This ad object has already been shown. Please request a new ad via AdColony.requestInterstitial.");
            return false;
        } else if (this.h) {
            u.e.b("This ad object has expired. Please request a new ad via AdColony.requestInterstitial.");
            return false;
        } else if (a.m.D) {
            u.e.b("Can not show ad while an interstitial is already active.");
            return false;
        } else {
            JSONObject a2 = s.a();
            s.a(a2, "zone_id", this.g);
            s.b(a2, "type", 0);
            s.a(a2, "id", this.e);
            if (this.c != null) {
                s.a(a2, "pre_popup", this.c.f975a);
                s.a(a2, "post_popup", this.c.b);
            }
            AdColonyZone adColonyZone = a.m.z.get(this.g);
            if (adColonyZone != null && adColonyZone.r && a.m.t == null) {
                u.e.b("Rewarded ad: show() called with no reward listener set.");
            }
            new z("AdSession.launch_ad_unit", 1, a2).b();
            return true;
        }
    }

    public boolean cancel() {
        if (this.b == null || !(a.l instanceof AdColonyInterstitialActivity)) {
            return false;
        }
        JSONObject a2 = s.a();
        s.a(a2, "id", this.b.m);
        new z("AdSession.on_request_close", this.b.l, a2).b();
        return true;
    }

    public AdColonyInterstitialListener getListener() {
        return this.f980a;
    }

    public void setListener(AdColonyInterstitialListener adColonyInterstitialListener) {
        this.f980a = adColonyInterstitialListener;
    }

    public String getZoneID() {
        return this.g;
    }

    public boolean isExpired() {
        return this.h || this.i;
    }

    public boolean destroy() {
        if (a.m == null) {
            return false;
        }
        a.m.g.b.remove(this.e);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        if (a.l == null || a.m == null) {
            return false;
        }
        a.m.D = true;
        a.m.q = this.b;
        a.m.s = this;
        u.b.b("Launching fullscreen Activity via AdColonyInterstitial's launch method.");
        a.l.startActivity(new Intent(a.l, AdColonyInterstitialActivity.class));
        this.i = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        this.b = cVar;
    }
}
