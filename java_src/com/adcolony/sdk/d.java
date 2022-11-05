package com.adcolony.sdk;

import android.content.Intent;
import android.view.View;
import com.facebook.GraphResponse;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    HashMap<String, c> f1380a;
    ConcurrentHashMap<String, AdColonyInterstitial> b;
    HashMap<String, ay> c;
    HashMap<String, AdColonyNativeAdViewListener> d;
    HashMap<String, ax> e;
    HashMap<String, f> f;

    boolean a(final z zVar) {
        final String b = s.b(zVar.b, "id");
        final ay remove = this.c.remove(b);
        final AdColonyNativeAdViewListener remove2 = this.d.remove(b);
        if (remove == null && remove2 == null) {
            a(zVar.f1506a, b);
            return false;
        } else if (a.l == null || a.l == null) {
            return false;
        } else {
            a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.d.1
                @Override // java.lang.Runnable
                public void run() {
                    ax adColonyNativeAdView;
                    if (remove != null) {
                        adColonyNativeAdView = new ax(a.l, zVar, remove);
                        d.this.e.put(b, adColonyNativeAdView);
                    } else {
                        adColonyNativeAdView = new AdColonyNativeAdView(a.l, zVar, remove2);
                        d.this.e.put(b, adColonyNativeAdView);
                    }
                    adColonyNativeAdView.k = s.b(zVar.b, "name");
                    adColonyNativeAdView.l = s.b(zVar.b, "title");
                    adColonyNativeAdView.m = s.b(zVar.b, "description");
                    adColonyNativeAdView.e = s.b(zVar.b, "thumb_filepath");
                    adColonyNativeAdView.b();
                    if (remove != null) {
                        remove.a(adColonyNativeAdView);
                    } else {
                        remove2.onRequestFilled((AdColonyNativeAdView) adColonyNativeAdView);
                    }
                }
            });
            return true;
        }
    }

    boolean b(z zVar) {
        String b = s.b(zVar.b, "id");
        final ay remove = this.c.remove(b);
        final AdColonyNativeAdViewListener remove2 = this.d.remove(b);
        if (remove == null && remove2 == null) {
            a(zVar.f1506a, b);
            return false;
        } else if (a.l == null) {
            return false;
        } else {
            a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.d.12
                @Override // java.lang.Runnable
                public void run() {
                    boolean z = remove == null;
                    String str = z ? remove2.f1417a : remove.f1417a;
                    AdColonyZone adColonyZone = a.m.z.get(str);
                    if (adColonyZone == null) {
                        adColonyZone = new AdColonyZone(str);
                        adColonyZone.l = 6;
                    }
                    if (z) {
                        remove2.onRequestNotFilled(adColonyZone);
                    } else {
                        remove.a(adColonyZone);
                    }
                }
            });
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f1380a = new HashMap<>();
        this.b = new ConcurrentHashMap<>();
        this.c = new HashMap<>();
        this.d = new HashMap<>();
        this.e = new HashMap<>();
        this.f = new HashMap<>();
        a.a("AdContainer.create", new ac() { // from class: com.adcolony.sdk.d.23
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.j(zVar);
            }
        });
        a.a("AdContainer.destroy", new ac() { // from class: com.adcolony.sdk.d.26
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.k(zVar);
            }
        });
        a.a("AdContainer.move_view_to_index", new ac() { // from class: com.adcolony.sdk.d.27
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.l(zVar);
            }
        });
        a.a("AdContainer.move_view_to_front", new ac() { // from class: com.adcolony.sdk.d.28
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.m(zVar);
            }
        });
        a.a("AdSession.finish_fullscreen_ad", new ac() { // from class: com.adcolony.sdk.d.29
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.i(zVar);
            }
        });
        a.a("AdSession.start_fullscreen_ad", new ac() { // from class: com.adcolony.sdk.d.30
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.h(zVar);
            }
        });
        a.a("AdSession.native_ad_view_available", new ac() { // from class: com.adcolony.sdk.d.31
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.a(zVar);
            }
        });
        a.a("AdSession.native_ad_view_unavailable", new ac() { // from class: com.adcolony.sdk.d.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.b(zVar);
            }
        });
        a.a("AdSession.expiring", new ac() { // from class: com.adcolony.sdk.d.3
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.c(zVar);
            }
        });
        a.a("AudioPlayer.create", new ac() { // from class: com.adcolony.sdk.d.4
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.n(zVar);
            }
        });
        a.a("AudioPlayer.destroy", new ac() { // from class: com.adcolony.sdk.d.5
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (d.this.g(zVar)) {
                    d.this.o(zVar);
                }
            }
        });
        a.a("AudioPlayer.play", new ac() { // from class: com.adcolony.sdk.d.6
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (d.this.g(zVar)) {
                    d.this.p(zVar);
                }
            }
        });
        a.a("AudioPlayer.pause", new ac() { // from class: com.adcolony.sdk.d.7
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (d.this.g(zVar)) {
                    d.this.q(zVar);
                }
            }
        });
        a.a("AudioPlayer.stop", new ac() { // from class: com.adcolony.sdk.d.8
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (d.this.g(zVar)) {
                    d.this.r(zVar);
                }
            }
        });
        a.a("AdSession.interstitial_available", new ac() { // from class: com.adcolony.sdk.d.9
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.e(zVar);
            }
        });
        a.a("AdSession.interstitial_unavailable", new ac() { // from class: com.adcolony.sdk.d.10
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.f(zVar);
            }
        });
        a.a("AdSession.has_audio", new ac() { // from class: com.adcolony.sdk.d.11
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                d.this.d(zVar);
            }
        });
        a.a("WebView.prepare", new ac() { // from class: com.adcolony.sdk.d.13
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                JSONObject a2 = s.a();
                s.a(a2, GraphResponse.SUCCESS_KEY, true);
                zVar.a(a2).b();
            }
        });
        a.a("AdSession.iap_event", new ac() { // from class: com.adcolony.sdk.d.14
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                switch (s.c(zVar.b, "type")) {
                    case 2:
                        ax axVar = d.this.e.get(s.b(zVar.b, "id"));
                        JSONObject f = s.f(zVar.b, "v4iap");
                        JSONArray g = s.g(f, "product_ids");
                        if (axVar != null && f != null && g.length() > 0) {
                            ((AdColonyNativeAdViewListener) axVar.c).onIAPEvent((AdColonyNativeAdView) axVar, s.b(g, 0), s.c(f, "engagement_type"));
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        });
        a.a("AdSession.native_ad_view_finished", new ac() { // from class: com.adcolony.sdk.d.15
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                au.a(new Runnable() { // from class: com.adcolony.sdk.d.15.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ax axVar = d.this.e.get(s.b(zVar.b, "id"));
                        if (axVar != null && axVar.c != null && (axVar instanceof AdColonyNativeAdView)) {
                            ((AdColonyNativeAdViewListener) axVar.c).onNativeVideoFinished((AdColonyNativeAdView) axVar);
                        }
                    }
                });
            }
        });
        a.a("AdSession.native_ad_view_started", new ac() { // from class: com.adcolony.sdk.d.16
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                au.a(new Runnable() { // from class: com.adcolony.sdk.d.16.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ax axVar = d.this.e.get(s.b(zVar.b, "id"));
                        if (axVar != null && axVar.c != null && (axVar instanceof AdColonyNativeAdView)) {
                            ((AdColonyNativeAdViewListener) axVar.c).onNativeVideoStarted((AdColonyNativeAdView) axVar);
                        }
                    }
                });
            }
        });
        a.a("AdSession.destroy_native_ad_view", new ac() { // from class: com.adcolony.sdk.d.17
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                au.a(new Runnable() { // from class: com.adcolony.sdk.d.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ax axVar = d.this.e.get(s.b(zVar.b, "id"));
                        if (axVar != null) {
                            axVar.a();
                            zVar.a(zVar.b).b();
                        }
                    }
                });
            }
        });
        a.a("AdSession.expanded", new ac() { // from class: com.adcolony.sdk.d.18
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                au.a(new Runnable() { // from class: com.adcolony.sdk.d.18.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zVar.a(zVar.b).b();
                    }
                });
            }
        });
        a.a("AdSession.native_ad_muted", new ac() { // from class: com.adcolony.sdk.d.19
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                au.a(new Runnable() { // from class: com.adcolony.sdk.d.19.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ax axVar = d.this.e.get(s.b(zVar.b, "id"));
                        boolean d = s.d(zVar.b, "muted");
                        if ((axVar instanceof AdColonyNativeAdView) && axVar.c != null) {
                            if (d) {
                                ((AdColonyNativeAdViewListener) axVar.c).onMuted((AdColonyNativeAdView) axVar);
                                return;
                            } else {
                                ((AdColonyNativeAdViewListener) axVar.c).onUnmuted((AdColonyNativeAdView) axVar);
                                return;
                            }
                        }
                        if (axVar == null || axVar.c == null) {
                        }
                    }
                });
            }
        });
    }

    boolean c(z zVar) {
        String b = s.b(zVar.b, "id");
        switch (s.c(zVar.b, "type")) {
            case 0:
                u.b.b("Removing ad 1");
                final AdColonyInterstitial remove = this.b.remove(b);
                if (remove == null || remove.f980a == null) {
                    a(zVar.f1506a, b);
                    return false;
                } else if (a.l != null) {
                    a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.d.20
                        @Override // java.lang.Runnable
                        public void run() {
                            remove.h = true;
                            remove.f980a.onExpiring(remove);
                            if (a.m != null && a.m.h != null && a.m.h.b != null) {
                                a.m.h.b.dismiss();
                                a.m.h.b = null;
                            }
                        }
                    });
                    break;
                } else {
                    return false;
                }
                break;
        }
        return true;
    }

    boolean d(z zVar) {
        String b = s.b(zVar.b, "id");
        JSONObject a2 = s.a();
        s.a(a2, "id", b);
        if (a.l == null) {
            s.a(a2, "has_audio", false);
            zVar.a(a2).b();
            return false;
        }
        boolean a3 = au.a(au.a(a.l));
        s.a(a2, "has_audio", a3);
        zVar.a(a2).b();
        return a3;
    }

    boolean e(z zVar) {
        String b = s.b(zVar.b, "id");
        final AdColonyInterstitial adColonyInterstitial = this.b.get(b);
        if (adColonyInterstitial == null || adColonyInterstitial.f980a == null) {
            a(zVar.f1506a, b);
            return false;
        } else if (a.l == null) {
            return false;
        } else {
            a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.d.21
                @Override // java.lang.Runnable
                public void run() {
                    adColonyInterstitial.f980a.onRequestFilled(adColonyInterstitial);
                }
            });
            return true;
        }
    }

    boolean f(z zVar) {
        String b = s.b(zVar.b, "id");
        u.b.b("Removing ad 2");
        final AdColonyInterstitial remove = this.b.remove(b);
        if (remove == null || remove.f980a == null) {
            a(zVar.f1506a, b);
            return false;
        } else if (a.l == null) {
            return false;
        } else {
            a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.d.22
                @Override // java.lang.Runnable
                public void run() {
                    AdColonyZone adColonyZone = a.m.z.get(remove.getZoneID());
                    if (adColonyZone == null) {
                        adColonyZone = new AdColonyZone(remove.getZoneID());
                        adColonyZone.l = 6;
                    }
                    remove.f980a.onRequestNotFilled(adColonyZone);
                }
            });
            return true;
        }
    }

    boolean g(z zVar) {
        String b = s.b(zVar.b, "ad_session_id");
        c cVar = this.f1380a.get(b);
        f fVar = this.f.get(b);
        if (cVar == null || fVar == null) {
            u.g.b("Invalid AudioPlayer message!");
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, AdColonyNativeAdViewListener adColonyNativeAdViewListener, AdColonyAdSize adColonyAdSize, AdColonyAdOptions adColonyAdOptions) {
        float j = a.m.m.j();
        String b = au.b();
        JSONObject a2 = s.a();
        s.a(a2, "zone_id", str);
        s.b(a2, "type", 2);
        s.b(a2, "width", (int) (adColonyAdSize.f976a * j));
        s.b(a2, "height", (int) (j * adColonyAdSize.b));
        s.a(a2, "id", b);
        adColonyNativeAdViewListener.f1417a = str;
        if (adColonyAdOptions != null && adColonyAdOptions.d != null) {
            s.a(a2, "options", adColonyAdOptions.d);
        }
        this.d.put(b, adColonyNativeAdViewListener);
        new z("AdSession.on_request", 1, a2).b();
    }

    void a(String str, ay ayVar, AdColonyAdSize adColonyAdSize) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, AdColonyInterstitialListener adColonyInterstitialListener, AdColonyAdOptions adColonyAdOptions) {
        String b = au.b();
        JSONObject a2 = s.a();
        s.a(a2, "zone_id", str);
        s.a(a2, "fullscreen", true);
        s.b(a2, "width", a.m.m.l());
        s.b(a2, "height", a.m.m.m());
        s.b(a2, "type", 0);
        s.a(a2, "id", b);
        u.b.a("AdSession request with id = ").b(b);
        AdColonyInterstitial adColonyInterstitial = new AdColonyInterstitial(b, adColonyInterstitialListener, str);
        this.b.put(b, adColonyInterstitial);
        if (adColonyAdOptions != null && adColonyAdOptions.d != null) {
            adColonyInterstitial.c = adColonyAdOptions;
            s.a(a2, "options", adColonyAdOptions.d);
        }
        u.f1500a.b("Requesting AdColony interstitial advertisement.");
        new z("AdSession.on_request", 1, a2).b();
    }

    boolean h(z zVar) {
        if (a.l == null) {
            return false;
        }
        String b = s.b(zVar.b, "id");
        AdColonyInterstitial adColonyInterstitial = this.b.get(b);
        ax axVar = this.e.get(b);
        int a2 = s.a(zVar.b, "orientation", -1);
        boolean z = axVar != null;
        if (adColonyInterstitial == null && !z) {
            a(zVar.f1506a, b);
            return false;
        }
        s.a(s.a(), "id", b);
        if (adColonyInterstitial != null) {
            adColonyInterstitial.f = s.c(zVar.b, "module_id");
            adColonyInterstitial.d = a2;
            adColonyInterstitial.a();
        } else if (z) {
            axVar.p = a2;
            a.m.q = axVar.b;
            a.m.r = axVar;
            a.l.startActivity(new Intent(a.l, AdColonyAdViewActivity.class));
        }
        return true;
    }

    boolean i(z zVar) {
        int c = s.c(zVar.b, "status");
        if (c == 5 || c == 1 || c == 0 || c == 6) {
            return false;
        }
        String b = s.b(zVar.b, "id");
        u.b.b("Removing ad 3");
        final AdColonyInterstitial remove = this.b.remove(b);
        if (remove == null) {
            a(zVar.f1506a, b);
            return false;
        }
        final AdColonyInterstitialListener adColonyInterstitialListener = remove.f980a;
        u.b.b("Ad attempt finished. Attempting to contact ad listener.");
        if (adColonyInterstitialListener != null && a.l != null) {
            a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.d.24
                @Override // java.lang.Runnable
                public void run() {
                    a.m.D = false;
                    adColonyInterstitialListener.onClosed(remove);
                }
            });
        }
        remove.b = null;
        return true;
    }

    boolean j(z zVar) {
        if (a.l == null) {
            return false;
        }
        String b = s.b(zVar.b, "ad_session_id");
        c cVar = new c(a.l, b);
        cVar.b(zVar);
        if (this.f1380a.containsKey(b)) {
            ax axVar = this.e.get(b);
            if (axVar == null) {
                return false;
            }
            axVar.b = cVar;
            return true;
        }
        u.b.a("Inserting container into hash map tied to ad session id: ").b(b);
        this.f1380a.put(b, cVar);
        if (s.c(zVar.b, "width") == 0) {
            if (this.b.get(b) == null) {
                a(zVar.f1506a, b);
                return false;
            }
            this.b.get(b).a(cVar);
        } else {
            cVar.q = false;
        }
        JSONObject a2 = s.a();
        s.a(a2, GraphResponse.SUCCESS_KEY, true);
        zVar.a(a2).b();
        return true;
    }

    boolean k(z zVar) {
        String b = s.b(zVar.b, "ad_session_id");
        c cVar = this.f1380a.get(b);
        if (cVar == null) {
            a(zVar.f1506a, b);
            return false;
        }
        a(cVar);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final c cVar) {
        if (a.l != null) {
            a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.d.25
                @Override // java.lang.Runnable
                public void run() {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= cVar.o.size()) {
                            break;
                        }
                        a.b(cVar.p.get(i2), cVar.o.get(i2));
                        i = i2 + 1;
                    }
                    cVar.p.clear();
                    cVar.o.clear();
                    cVar.removeAllViews();
                    cVar.u = null;
                    cVar.t = null;
                    u.d.a("Destroying container tied to ad_session_id = ").b(cVar.m);
                    for (o oVar : cVar.c.values()) {
                        oVar.b();
                    }
                    for (aw awVar : cVar.d.values()) {
                        if (!awVar.b) {
                            a.m.a(awVar.f1092a);
                            awVar.loadUrl("about:blank");
                            awVar.clearCache(true);
                            awVar.removeAllViews();
                            awVar.c = true;
                        }
                    }
                    u.d.a("Stopping and releasing all media players associated with VideoViews tied to ad_session_id = ").b(cVar.m);
                    for (av avVar : cVar.f1225a.values()) {
                        avVar.c();
                        avVar.c = true;
                        avVar.d = null;
                    }
                    cVar.f1225a.clear();
                    cVar.b.clear();
                    cVar.d.clear();
                    cVar.c.clear();
                    cVar.g.clear();
                    cVar.i.clear();
                    cVar.f.clear();
                    cVar.h.clear();
                }
            });
            ax axVar = this.e.get(cVar.m);
            if (axVar == null || axVar.g) {
                u.b.b("Removing ad 4");
                this.f1380a.remove(cVar.m);
                cVar.t = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        u.g.a("Message '").a(str).a("' sent with invalid id: ").b(str2);
    }

    boolean l(z zVar) {
        String b = s.b(zVar.b, "ad_session_id");
        int c = s.c(zVar.b, "view_id");
        c cVar = this.f1380a.get(b);
        View view = cVar.i.get(Integer.valueOf(c));
        if (cVar == null) {
            a(zVar.f1506a, b);
            return false;
        } else if (view == null) {
            a(zVar.f1506a, "" + c);
            return false;
        } else {
            view.bringToFront();
            return true;
        }
    }

    boolean m(z zVar) {
        ax axVar;
        String b = s.b(zVar.b, "ad_session_id");
        int c = s.c(zVar.b, "view_id");
        c cVar = this.f1380a.get(b);
        if (cVar == null) {
            a(zVar.f1506a, b);
            return false;
        }
        c cVar2 = (cVar.n != 0 || s.c(zVar.b, "id") != 1 || (axVar = this.e.get(b)) == null || axVar.b == null) ? cVar : axVar.b;
        View view = cVar2.i.get(Integer.valueOf(c));
        if (view == null) {
            a(zVar.f1506a, "" + c);
            return false;
        }
        cVar2.removeView(view);
        cVar2.addView(view, view.getLayoutParams());
        return true;
    }

    boolean n(z zVar) {
        String b = s.b(zVar.b, "ad_session_id");
        c cVar = this.f1380a.get(b);
        if (cVar == null) {
            a(zVar.f1506a, b);
            return false;
        }
        f fVar = this.f.get(b);
        if (fVar == null) {
            fVar = new f(b, cVar.l);
            this.f.put(b, fVar);
        }
        fVar.a(zVar);
        return true;
    }

    boolean o(z zVar) {
        String b = s.b(zVar.b, "ad_session_id");
        f fVar = this.f.get(b);
        if (fVar == null) {
            a(zVar.f1506a, b);
            return false;
        }
        fVar.d(zVar);
        return true;
    }

    boolean p(z zVar) {
        String b = s.b(zVar.b, "ad_session_id");
        f fVar = this.f.get(b);
        if (fVar == null) {
            a(zVar.f1506a, b);
            return false;
        }
        fVar.c(zVar);
        return true;
    }

    boolean q(z zVar) {
        String b = s.b(zVar.b, "ad_session_id");
        f fVar = this.f.get(b);
        if (fVar == null) {
            a(zVar.f1506a, b);
            return false;
        }
        fVar.b(zVar);
        return true;
    }

    boolean r(z zVar) {
        String b = s.b(zVar.b, "ad_session_id");
        f fVar = this.f.get(b);
        if (fVar == null) {
            a(zVar.f1506a, b);
            return false;
        }
        fVar.e(zVar);
        return true;
    }
}
