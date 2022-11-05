package com.smaato.soma.mediation;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.f;
import java.util.Map;
/* compiled from: GooglePlayMediationBanner.java */
/* loaded from: classes3.dex */
public class d extends f {

    /* renamed from: a  reason: collision with root package name */
    private f.a f5175a;
    private AdView b;
    private Handler c;
    private Runnable d;

    @Override // com.smaato.soma.mediation.f
    public void a(Context context, f.a aVar, Map<String, String> map, o oVar) {
        this.f5175a = aVar;
        if (!a(oVar)) {
            this.f5175a.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        try {
            this.b = null;
            this.b = new AdView(context);
            this.b.setAdListener(new a());
            this.b.setAdUnitId(oVar.j());
            AdSize adSize = AdSize.BANNER;
            if (oVar.f() > 0 && oVar.g() > 0) {
                adSize = a(oVar.f(), oVar.g());
            }
            if (adSize == null) {
                adSize = AdSize.BANNER;
            }
            this.b.setAdSize(adSize);
            AdRequest build = new AdRequest.Builder().setRequestAgent("Smaato").build();
            this.c = new Handler();
            this.d = new Runnable() { // from class: com.smaato.soma.mediation.d.1
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.b != null) {
                        d.this.b.pause();
                    }
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("GooglePlayMediationBanner", "GooglePlayMediationBannertimed out to fill Ad.", 1, DebugCategory.DEBUG));
                    d.this.f5175a.a(ErrorCode.NETWORK_NO_FILL);
                    d.this.a();
                }
            };
            this.c.postDelayed(this.d, 7500L);
            this.b.loadAd(build);
        } catch (Exception e) {
            d();
        } catch (NoClassDefFoundError e2) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.c != null && this.d != null) {
            this.c.removeCallbacks(this.d);
            this.c.removeCallbacksAndMessages(null);
            this.c = null;
            this.d = null;
        }
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("GooglePlayMediationBanner", "cancel Timeout called inGooglePlayMediationBanner", 1, DebugCategory.DEBUG));
    }

    @Override // com.smaato.soma.mediation.f
    public void a() {
        try {
            t.a(this.b);
            if (this.b != null) {
                this.b.destroy();
            }
            if (this.c != null && this.d != null) {
                this.c.removeCallbacks(this.d);
                this.c.removeCallbacksAndMessages(null);
                this.c = null;
                this.d = null;
            }
        } catch (Exception e) {
            d();
        } catch (NoClassDefFoundError e2) {
            c();
        }
    }

    private boolean a(o oVar) {
        if (oVar == null) {
            return false;
        }
        try {
            if (oVar.j() == null) {
                return false;
            }
            return !oVar.j().isEmpty();
        } catch (Exception e) {
            return false;
        }
    }

    public AdSize a(int i, int i2) {
        if (i <= AdSize.BANNER.getWidth() && i2 <= AdSize.BANNER.getHeight()) {
            return AdSize.BANNER;
        }
        if (i <= AdSize.MEDIUM_RECTANGLE.getWidth() && i2 <= AdSize.MEDIUM_RECTANGLE.getHeight()) {
            return AdSize.MEDIUM_RECTANGLE;
        }
        if (i <= AdSize.FULL_BANNER.getWidth() && i2 <= AdSize.FULL_BANNER.getHeight()) {
            return AdSize.FULL_BANNER;
        }
        if (i <= AdSize.LEADERBOARD.getWidth() && i2 <= AdSize.LEADERBOARD.getHeight()) {
            return AdSize.LEADERBOARD;
        }
        return null;
    }

    /* compiled from: GooglePlayMediationBanner.java */
    /* loaded from: classes3.dex */
    public class a extends AdListener {
        public a() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            try {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("GooglePlayMediationBanner", "Google Play Services banner ad failed to load.", 1, DebugCategory.DEBUG));
                if (d.this.f5175a != null) {
                    d.this.f5175a.a(ErrorCode.NETWORK_NO_FILL);
                }
                if (d.this.b != null) {
                    d.this.b.pause();
                }
                d.this.a();
            } catch (Exception e) {
                d.this.d();
            } catch (NoClassDefFoundError e2) {
                d.this.c();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            d.this.a();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            try {
                d.this.b();
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("GooglePlayMediationBanner", "Google Play Services banner ad loaded successfully. Showing ad...", 1, DebugCategory.DEBUG));
                if (d.this.f5175a != null) {
                    d.this.f5175a.a(d.this.b);
                }
            } catch (Exception e) {
                d.this.d();
            } catch (NoClassDefFoundError e2) {
                d.this.c();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("GooglePlayMediationBanner", "Google Play Services banner ad clicked.", 1, DebugCategory.DEBUG));
            if (d.this.f5175a != null) {
                d.this.f5175a.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("GooglePlayMediationBanner", "NoClassDefFoundError happened with Mediation. Check your configurations for GooglePlayMediationBanner", 1, DebugCategory.ERROR));
        this.f5175a.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("GooglePlayMediationBanner", "Exception happened with Mediation. Check inputs forGooglePlayMediationBanner", 1, DebugCategory.ERROR));
        this.f5175a.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        a();
    }
}
