package com.facebook.ads.internal;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.BannerAdapter;
import com.facebook.ads.internal.adapters.BannerAdapterListener;
import com.facebook.ads.internal.adapters.InterstitialAdapter;
import com.facebook.ads.internal.adapters.InterstitialAdapterListener;
import com.facebook.ads.internal.adapters.r;
import com.facebook.ads.internal.adapters.t;
import com.facebook.ads.internal.adapters.v;
import com.facebook.ads.internal.adapters.w;
import com.facebook.ads.internal.adapters.y;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.server.a;
import com.facebook.ads.internal.util.am;
import com.facebook.ads.internal.util.p;
import com.facebook.ads.internal.util.x;
import com.facebook.ads.internal.util.z;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.drive.DriveFile;
import com.loopme.debugging.Params;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class DisplayAdController implements a.InterfaceC0099a {
    private static final String b = DisplayAdController.class.getSimpleName();
    private static final Handler h = new Handler(Looper.getMainLooper());
    private static boolean i = false;

    /* renamed from: a  reason: collision with root package name */
    protected com.facebook.ads.internal.a f2057a;
    private final Context c;
    private final String d;
    private final AdPlacementType e;
    private final com.facebook.ads.internal.server.a f;
    private final Runnable j;
    private final Runnable k;
    private volatile boolean l;
    private boolean m;
    private volatile boolean n;
    private AdAdapter o;
    private AdAdapter p;
    private View q;
    private com.facebook.ads.internal.f.d r;
    private com.facebook.ads.internal.f.f s;
    private e t;
    private com.facebook.ads.internal.c u;
    private AdSize v;
    private int w;
    private boolean y;
    private final com.facebook.ads.internal.g.f z;
    private final Handler g = new Handler();
    private final c x = new c();

    /* loaded from: classes.dex */
    private static final class a extends am<DisplayAdController> {
        public a(DisplayAdController displayAdController) {
            super(displayAdController);
        }

        @Override // java.lang.Runnable
        public void run() {
            DisplayAdController a2 = a();
            if (a2 == null) {
                return;
            }
            a2.l = false;
            a2.m();
        }
    }

    /* loaded from: classes.dex */
    private static final class b extends am<DisplayAdController> {
        public b(DisplayAdController displayAdController) {
            super(displayAdController);
        }

        @Override // java.lang.Runnable
        public void run() {
            DisplayAdController a2 = a();
            if (a2 == null) {
                return;
            }
            a2.p();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                DisplayAdController.this.q();
            } else if (!"android.intent.action.SCREEN_ON".equals(action)) {
            } else {
                DisplayAdController.this.p();
            }
        }
    }

    public DisplayAdController(Context context, String str, e eVar, AdPlacementType adPlacementType, AdSize adSize, com.facebook.ads.internal.c cVar, int i2, boolean z) {
        this.c = context;
        this.d = str;
        this.t = eVar;
        this.e = adPlacementType;
        this.v = adSize;
        this.u = cVar;
        this.w = i2;
        this.f = new com.facebook.ads.internal.server.a(context);
        this.f.a(this);
        this.j = new a(this);
        this.k = new b(this);
        this.m = z;
        j();
        try {
            CookieManager.getInstance();
            if (Build.VERSION.SDK_INT < 21) {
                CookieSyncManager.createInstance(context);
            }
        } catch (Exception e) {
            Log.w(b, "Failed to initialize CookieManager.");
        }
        com.facebook.ads.internal.d.a.a(context).a();
        this.z = com.facebook.ads.internal.g.g.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> a(long j) {
        HashMap hashMap = new HashMap();
        hashMap.put("delay", String.valueOf(System.currentTimeMillis() - j));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdAdapter adAdapter) {
        if (adAdapter != null) {
            adAdapter.onDestroy();
        }
    }

    private void a(final BannerAdapter bannerAdapter, com.facebook.ads.internal.f.d dVar, Map<String, Object> map) {
        final Runnable runnable = new Runnable() { // from class: com.facebook.ads.internal.DisplayAdController.8
            @Override // java.lang.Runnable
            public void run() {
                DisplayAdController.this.a(bannerAdapter);
                DisplayAdController.this.n();
            }
        };
        this.g.postDelayed(runnable, dVar.a().i());
        bannerAdapter.loadBannerAd(this.c, this.v, new BannerAdapterListener() { // from class: com.facebook.ads.internal.DisplayAdController.9
            @Override // com.facebook.ads.internal.adapters.BannerAdapterListener
            public void onBannerAdClicked(BannerAdapter bannerAdapter2) {
                DisplayAdController.this.f2057a.a();
            }

            @Override // com.facebook.ads.internal.adapters.BannerAdapterListener
            public void onBannerAdExpanded(BannerAdapter bannerAdapter2) {
                DisplayAdController.this.q();
            }

            @Override // com.facebook.ads.internal.adapters.BannerAdapterListener
            public void onBannerAdLoaded(BannerAdapter bannerAdapter2, View view) {
                if (bannerAdapter2 != DisplayAdController.this.o) {
                    return;
                }
                DisplayAdController.this.g.removeCallbacks(runnable);
                AdAdapter adAdapter = DisplayAdController.this.p;
                DisplayAdController.this.p = bannerAdapter2;
                DisplayAdController.this.q = view;
                if (!DisplayAdController.this.n) {
                    DisplayAdController.this.f2057a.a(bannerAdapter2);
                    return;
                }
                DisplayAdController.this.f2057a.a(view);
                DisplayAdController.this.a(adAdapter);
                DisplayAdController.this.p();
            }

            @Override // com.facebook.ads.internal.adapters.BannerAdapterListener
            public void onBannerAdMinimized(BannerAdapter bannerAdapter2) {
                DisplayAdController.this.p();
            }

            @Override // com.facebook.ads.internal.adapters.BannerAdapterListener
            public void onBannerError(BannerAdapter bannerAdapter2, AdError adError) {
                if (bannerAdapter2 != DisplayAdController.this.o) {
                    return;
                }
                DisplayAdController.this.g.removeCallbacks(runnable);
                DisplayAdController.this.a(bannerAdapter2);
                DisplayAdController.this.n();
            }

            @Override // com.facebook.ads.internal.adapters.BannerAdapterListener
            public void onBannerLoggingImpression(BannerAdapter bannerAdapter2) {
                DisplayAdController.this.f2057a.b();
            }
        }, map);
    }

    private void a(final InterstitialAdapter interstitialAdapter, com.facebook.ads.internal.f.d dVar, Map<String, Object> map) {
        final Runnable runnable = new Runnable() { // from class: com.facebook.ads.internal.DisplayAdController.10
            @Override // java.lang.Runnable
            public void run() {
                DisplayAdController.this.a(interstitialAdapter);
                DisplayAdController.this.n();
            }
        };
        this.g.postDelayed(runnable, dVar.a().i());
        interstitialAdapter.loadInterstitialAd(this.c, new InterstitialAdapterListener() { // from class: com.facebook.ads.internal.DisplayAdController.11
            @Override // com.facebook.ads.internal.adapters.InterstitialAdapterListener
            public void onInterstitialAdClicked(InterstitialAdapter interstitialAdapter2, String str, boolean z) {
                DisplayAdController.this.f2057a.a();
                boolean z2 = !TextUtils.isEmpty(str);
                if (!z || !z2) {
                    return;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                if (!(DisplayAdController.this.s.d instanceof Activity)) {
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                }
                intent.setData(Uri.parse(str));
                DisplayAdController.this.s.d.startActivity(intent);
            }

            @Override // com.facebook.ads.internal.adapters.InterstitialAdapterListener
            public void onInterstitialAdDismissed(InterstitialAdapter interstitialAdapter2) {
                DisplayAdController.this.f2057a.e();
            }

            @Override // com.facebook.ads.internal.adapters.InterstitialAdapterListener
            public void onInterstitialAdDisplayed(InterstitialAdapter interstitialAdapter2) {
                DisplayAdController.this.f2057a.d();
            }

            @Override // com.facebook.ads.internal.adapters.InterstitialAdapterListener
            public void onInterstitialAdLoaded(InterstitialAdapter interstitialAdapter2) {
                if (interstitialAdapter2 != DisplayAdController.this.o) {
                    return;
                }
                DisplayAdController.this.g.removeCallbacks(runnable);
                DisplayAdController.this.p = interstitialAdapter2;
                DisplayAdController.this.f2057a.a(interstitialAdapter2);
                DisplayAdController.this.p();
            }

            @Override // com.facebook.ads.internal.adapters.InterstitialAdapterListener
            public void onInterstitialError(InterstitialAdapter interstitialAdapter2, AdError adError) {
                if (interstitialAdapter2 != DisplayAdController.this.o) {
                    return;
                }
                DisplayAdController.this.g.removeCallbacks(runnable);
                DisplayAdController.this.a(interstitialAdapter2);
                DisplayAdController.this.n();
                DisplayAdController.this.f2057a.a(new com.facebook.ads.internal.b(adError.getErrorCode(), adError.getErrorMessage()));
            }

            @Override // com.facebook.ads.internal.adapters.InterstitialAdapterListener
            public void onInterstitialLoggingImpression(InterstitialAdapter interstitialAdapter2) {
                DisplayAdController.this.f2057a.b();
            }
        }, map, this.z);
    }

    private void a(r rVar, com.facebook.ads.internal.f.d dVar, Map<String, Object> map) {
        rVar.a(this.c, new com.facebook.ads.a.a() { // from class: com.facebook.ads.internal.DisplayAdController.6
            @Override // com.facebook.ads.a.a
            public void a(r rVar2) {
                DisplayAdController.this.p = rVar2;
                DisplayAdController.this.f2057a.a(rVar2);
            }

            @Override // com.facebook.ads.a.a
            public void a(r rVar2, View view) {
                DisplayAdController.this.f2057a.a(view);
            }

            @Override // com.facebook.ads.a.a
            public void a(r rVar2, AdError adError) {
                DisplayAdController.this.f2057a.a(new com.facebook.ads.internal.b(adError.getErrorCode(), adError.getErrorMessage()));
            }

            @Override // com.facebook.ads.a.a
            public void b(r rVar2) {
                DisplayAdController.this.f2057a.a();
            }

            @Override // com.facebook.ads.a.a
            public void c(r rVar2) {
                DisplayAdController.this.f2057a.b();
            }

            @Override // com.facebook.ads.a.a
            public void d(r rVar2) {
                DisplayAdController.this.f2057a.c();
            }
        }, map, this.z);
    }

    private void a(final v vVar, com.facebook.ads.internal.f.d dVar, final com.facebook.ads.internal.f.a aVar, Map<String, Object> map) {
        final long currentTimeMillis = System.currentTimeMillis();
        final Runnable runnable = new Runnable() { // from class: com.facebook.ads.internal.DisplayAdController.12
            @Override // java.lang.Runnable
            public void run() {
                DisplayAdController.this.a(vVar);
                if (vVar instanceof t) {
                    com.facebook.ads.internal.util.h.a(DisplayAdController.this.c, x.a(((t) vVar).D()) + " Failed. Ad request timed out");
                }
                Map a2 = DisplayAdController.this.a(currentTimeMillis);
                a2.put("error", "-1");
                a2.put(Params.MSG, "timeout");
                DisplayAdController.this.a(aVar.a(com.facebook.ads.internal.f.h.REQUEST), a2);
                DisplayAdController.this.n();
            }
        };
        this.g.postDelayed(runnable, dVar.a().i());
        vVar.a(this.c, new w() { // from class: com.facebook.ads.internal.DisplayAdController.2

            /* renamed from: a  reason: collision with root package name */
            boolean f2062a = false;
            boolean b = false;
            boolean c = false;

            @Override // com.facebook.ads.internal.adapters.w
            public void a(v vVar2) {
                if (vVar2 != DisplayAdController.this.o) {
                    return;
                }
                DisplayAdController.this.g.removeCallbacks(runnable);
                DisplayAdController.this.p = vVar2;
                DisplayAdController.this.f2057a.a((AdAdapter) vVar2);
                if (this.f2062a) {
                    return;
                }
                this.f2062a = true;
                DisplayAdController.this.a(aVar.a(com.facebook.ads.internal.f.h.REQUEST), DisplayAdController.this.a(currentTimeMillis));
            }

            @Override // com.facebook.ads.internal.adapters.w
            public void a(v vVar2, AdError adError) {
                if (vVar2 != DisplayAdController.this.o) {
                    return;
                }
                DisplayAdController.this.g.removeCallbacks(runnable);
                DisplayAdController.this.a(vVar2);
                if (!this.f2062a) {
                    this.f2062a = true;
                    Map a2 = DisplayAdController.this.a(currentTimeMillis);
                    a2.put("error", String.valueOf(adError.getErrorCode()));
                    a2.put(Params.MSG, String.valueOf(adError.getErrorMessage()));
                    DisplayAdController.this.a(aVar.a(com.facebook.ads.internal.f.h.REQUEST), a2);
                }
                DisplayAdController.this.n();
            }

            @Override // com.facebook.ads.internal.adapters.w
            public void b(v vVar2) {
                if (!this.b) {
                    this.b = true;
                    DisplayAdController.this.a(aVar.a(com.facebook.ads.internal.f.h.IMPRESSION), (Map<String, String>) null);
                }
            }

            @Override // com.facebook.ads.internal.adapters.w
            public void c(v vVar2) {
                if (!this.c) {
                    this.c = true;
                    DisplayAdController.this.a(aVar.a(com.facebook.ads.internal.f.h.CLICK), (Map<String, String>) null);
                }
                if (DisplayAdController.this.f2057a != null) {
                    DisplayAdController.this.f2057a.a();
                }
            }
        }, this.z, map);
    }

    private void a(com.facebook.ads.internal.adapters.x xVar, com.facebook.ads.internal.f.d dVar, Map<String, Object> map) {
        xVar.a(this.c, new y() { // from class: com.facebook.ads.internal.DisplayAdController.7
            @Override // com.facebook.ads.internal.adapters.y
            public void a() {
                DisplayAdController.this.f2057a.g();
            }

            @Override // com.facebook.ads.internal.adapters.y
            public void a(com.facebook.ads.internal.adapters.x xVar2) {
                DisplayAdController.this.p = xVar2;
                DisplayAdController.this.f2057a.a(xVar2);
            }

            @Override // com.facebook.ads.internal.adapters.y
            public void a(com.facebook.ads.internal.adapters.x xVar2, AdError adError) {
                DisplayAdController.this.f2057a.a(new com.facebook.ads.internal.b(AdErrorType.INTERNAL_ERROR, (String) null));
                DisplayAdController.this.a(xVar2);
                DisplayAdController.this.n();
            }

            @Override // com.facebook.ads.internal.adapters.y
            public void b(com.facebook.ads.internal.adapters.x xVar2) {
                DisplayAdController.this.f2057a.a();
            }

            @Override // com.facebook.ads.internal.adapters.y
            public void c(com.facebook.ads.internal.adapters.x xVar2) {
                DisplayAdController.this.f2057a.b();
            }

            @Override // com.facebook.ads.internal.adapters.y
            public void d(com.facebook.ads.internal.adapters.x xVar2) {
                DisplayAdController.this.f2057a.f();
            }

            @Override // com.facebook.ads.internal.adapters.y
            public void e(com.facebook.ads.internal.adapters.x xVar2) {
                DisplayAdController.this.f2057a.h();
            }

            @Override // com.facebook.ads.internal.adapters.y
            public void f(com.facebook.ads.internal.adapters.x xVar2) {
                DisplayAdController.this.f2057a.i();
            }
        }, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<String> list, Map<String, String> map) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            new z(map).execute(it.next());
        }
    }

    private void j() {
        if (this.m) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        this.c.registerReceiver(this.x, intentFilter);
        this.y = true;
    }

    private void k() {
        if (this.y) {
            try {
                this.c.unregisterReceiver(this.x);
                this.y = false;
            } catch (Exception e) {
                com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(e, "Error unregistering screen state receiever"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdPlacementType l() {
        return this.e != null ? this.e : this.v == null ? AdPlacementType.NATIVE : this.v == AdSize.INTERSTITIAL ? AdPlacementType.INTERSTITIAL : AdPlacementType.BANNER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        this.s = new com.facebook.ads.internal.f.f(this.c, this.d, this.v, this.t, this.u, this.w, AdSettings.isTestMode(this.c));
        this.f.a(this.s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void n() {
        h.post(new Runnable() { // from class: com.facebook.ads.internal.DisplayAdController.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    DisplayAdController.this.o();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        this.o = null;
        com.facebook.ads.internal.f.d dVar = this.r;
        com.facebook.ads.internal.f.a d = dVar.d();
        if (d == null) {
            this.f2057a.a(AdErrorType.NO_FILL.getAdErrorWrapper(""));
            p();
            return;
        }
        String a2 = d.a();
        AdAdapter a3 = com.facebook.ads.internal.adapters.d.a(a2, dVar.a().a());
        if (a3 == null) {
            Log.e(b, "Adapter does not exist: " + a2);
            n();
        } else if (l() != a3.getPlacementType()) {
            this.f2057a.a(AdErrorType.INTERNAL_ERROR.getAdErrorWrapper(""));
        } else {
            this.o = a3;
            HashMap hashMap = new HashMap();
            com.facebook.ads.internal.f.e a4 = dVar.a();
            hashMap.put("data", d.b());
            hashMap.put("definition", a4);
            if (this.s == null) {
                this.f2057a.a(AdErrorType.UNKNOWN_ERROR.getAdErrorWrapper("environment is empty"));
                return;
            }
            switch (a3.getPlacementType()) {
                case INTERSTITIAL:
                    a((InterstitialAdapter) a3, dVar, hashMap);
                    return;
                case BANNER:
                    a((BannerAdapter) a3, dVar, hashMap);
                    return;
                case NATIVE:
                    a((v) a3, dVar, d, hashMap);
                    return;
                case INSTREAM:
                    a((r) a3, dVar, hashMap);
                    return;
                case REWARDED_VIDEO:
                    hashMap.put("placement_id", this.d);
                    a((com.facebook.ads.internal.adapters.x) a3, dVar, hashMap);
                    return;
                default:
                    Log.e(b, "attempt unexpected adapter type");
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.m || this.l) {
            return;
        }
        switch (l()) {
            case INTERSTITIAL:
                if (!p.a(this.c)) {
                    this.g.postDelayed(this.k, 1000L);
                    break;
                }
                break;
            case BANNER:
                boolean a2 = com.facebook.ads.internal.j.a.a(this.q, this.r == null ? 1 : this.r.a().e()).a();
                if (this.q != null && !a2) {
                    this.g.postDelayed(this.k, 1000L);
                    return;
                }
                break;
            default:
                return;
        }
        long b2 = this.r == null ? NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS : this.r.a().b();
        if (b2 <= 0) {
            return;
        }
        this.g.postDelayed(this.j, b2);
        this.l = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (!this.l) {
            return;
        }
        this.g.removeCallbacks(this.j);
        this.l = false;
    }

    private Handler r() {
        return !s() ? this.g : h;
    }

    private static synchronized boolean s() {
        boolean z;
        synchronized (DisplayAdController.class) {
            z = i;
        }
        return z;
    }

    protected static synchronized void setMainThreadForced(boolean z) {
        synchronized (DisplayAdController.class) {
            Log.d(b, "DisplayAdController changed main thread forced from " + i + " to " + z);
            i = z;
        }
    }

    public com.facebook.ads.internal.f.e a() {
        if (this.r == null) {
            return null;
        }
        return this.r.a();
    }

    public void a(com.facebook.ads.internal.a aVar) {
        this.f2057a = aVar;
    }

    @Override // com.facebook.ads.internal.server.a.InterfaceC0099a
    public synchronized void a(final com.facebook.ads.internal.b bVar) {
        r().post(new Runnable() { // from class: com.facebook.ads.internal.DisplayAdController.3
            @Override // java.lang.Runnable
            public void run() {
                DisplayAdController.this.f2057a.a(bVar);
                if (DisplayAdController.this.m || DisplayAdController.this.l) {
                    return;
                }
                switch (bVar.a().getErrorCode()) {
                    case 1000:
                    case 1002:
                        switch (AnonymousClass4.f2064a[DisplayAdController.this.l().ordinal()]) {
                            case 2:
                                DisplayAdController.this.g.postDelayed(DisplayAdController.this.j, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
                                DisplayAdController.this.l = true;
                                return;
                            default:
                                return;
                        }
                    case 1001:
                    default:
                        return;
                }
            }
        });
    }

    @Override // com.facebook.ads.internal.server.a.InterfaceC0099a
    public synchronized void a(final com.facebook.ads.internal.server.e eVar) {
        r().post(new Runnable() { // from class: com.facebook.ads.internal.DisplayAdController.1
            @Override // java.lang.Runnable
            public void run() {
                com.facebook.ads.internal.f.d b2 = eVar.b();
                if (b2 == null || b2.a() == null) {
                    throw new IllegalStateException("invalid placement in response");
                }
                DisplayAdController.this.r = b2;
                DisplayAdController.this.n();
            }
        });
    }

    public void b() {
        m();
    }

    public void c() {
        if (this.p == null) {
            throw new IllegalStateException("no adapter ready to start");
        }
        if (this.n) {
            throw new IllegalStateException("ad already started");
        }
        this.n = true;
        switch (this.p.getPlacementType()) {
            case INTERSTITIAL:
                ((InterstitialAdapter) this.p).show();
                return;
            case BANNER:
                if (this.q == null) {
                    return;
                }
                this.f2057a.a(this.q);
                p();
                return;
            case NATIVE:
                v vVar = (v) this.p;
                if (!vVar.b()) {
                    throw new IllegalStateException("ad is not ready or already displayed");
                }
                this.f2057a.a(vVar);
                return;
            case INSTREAM:
                ((r) this.p).d();
                return;
            case REWARDED_VIDEO:
                ((com.facebook.ads.internal.adapters.x) this.p).b();
                return;
            default:
                Log.e(b, "start unexpected adapter type");
                return;
        }
    }

    public void d() {
        k();
        if (!this.n) {
            return;
        }
        q();
        a(this.p);
        this.q = null;
        this.n = false;
    }

    public void e() {
        if (!this.n) {
            return;
        }
        q();
    }

    public void f() {
        if (!this.n) {
            return;
        }
        p();
    }

    public void g() {
        q();
        m();
    }

    public void h() {
        this.m = true;
        q();
    }

    public AdAdapter i() {
        return this.p;
    }
}
