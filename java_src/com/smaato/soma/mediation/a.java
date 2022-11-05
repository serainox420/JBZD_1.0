package com.smaato.soma.mediation;

import android.content.Context;
import android.os.Handler;
import com.facebook.FacebookSdk;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.f;
import java.util.Map;
/* compiled from: FacebookMediationBanner.java */
/* loaded from: classes3.dex */
public class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private AdView f5168a;
    private f.a b;
    private Handler c;
    private Runnable d;

    @Override // com.smaato.soma.mediation.f
    public void a(Context context, f.a aVar, Map<String, String> map, o oVar) {
        try {
            this.b = aVar;
            if (!a(oVar)) {
                this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            if (oVar.k() != null && !FacebookSdk.isInitialized()) {
                FacebookSdk.setApplicationId(oVar.k());
            }
            AdSize adSize = AdSize.BANNER_320_50;
            if (oVar.f() > 0 && oVar.g() > 0) {
                adSize = a(oVar.f(), oVar.g());
            }
            this.c = new Handler();
            this.d = new Runnable() { // from class: com.smaato.soma.mediation.a.1
                @Override // java.lang.Runnable
                public void run() {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("FacebookMediationBanner", "FacebookMediationBannertimed out to fill Ad.", 1, DebugCategory.DEBUG));
                    a.this.a();
                    a.this.b.a(ErrorCode.NETWORK_NO_FILL);
                }
            };
            this.c.postDelayed(this.d, 7500L);
            this.f5168a = new AdView(context, oVar.j(), adSize);
            this.f5168a.setAdListener(new C0563a());
            this.f5168a.disableAutoRefresh();
            this.f5168a.loadAd();
        } catch (Exception e) {
            d();
        } catch (NoClassDefFoundError e2) {
            c();
        }
    }

    @Override // com.smaato.soma.mediation.f
    public void a() {
        try {
            t.a(this.f5168a);
            if (this.c != null && this.d != null) {
                this.c.removeCallbacks(this.d);
                this.c.removeCallbacksAndMessages(null);
                this.c = null;
                this.d = null;
            }
            b();
        } catch (Exception e) {
            d();
        } catch (NoClassDefFoundError e2) {
            c();
        }
    }

    public void b() {
        try {
            if (this.f5168a != null) {
                this.f5168a.destroy();
                this.f5168a = null;
            }
        } catch (Exception e) {
            d();
        } catch (NoClassDefFoundError e2) {
            c();
        }
    }

    private AdSize a(int i, int i2) {
        if (i2 <= AdSize.BANNER_320_50.getHeight()) {
            return AdSize.BANNER_320_50;
        }
        if (i2 <= AdSize.BANNER_HEIGHT_90.getHeight()) {
            return AdSize.BANNER_HEIGHT_90;
        }
        if (i2 <= AdSize.RECTANGLE_HEIGHT_250.getHeight()) {
            return AdSize.RECTANGLE_HEIGHT_250;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("FacebookMediationBanner", "NoClassDefFoundError happened with Mediation. Check your configurations for FacebookMediationBanner", 1, DebugCategory.ERROR));
        this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("FacebookMediationBanner", "Exception happened with Mediation. Check inputs forFacebookMediationBanner", 1, DebugCategory.ERROR));
        this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.c != null && this.d != null) {
            this.c.removeCallbacks(this.d);
            this.c.removeCallbacksAndMessages(null);
            this.c = null;
            this.d = null;
        }
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("FacebookMediationBanner", "cancel Timeout called inFacebookMediationBanner", 1, DebugCategory.DEBUG));
    }

    /* compiled from: FacebookMediationBanner.java */
    /* renamed from: com.smaato.soma.mediation.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0563a implements AdListener {
        public C0563a() {
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("FacebookMediationBanner", "FB banner ad failed to load.", 1, DebugCategory.DEBUG));
            if (adError == AdError.NO_FILL) {
                a.this.b.a(ErrorCode.NETWORK_NO_FILL);
            } else {
                a.this.b.a(ErrorCode.UNSPECIFIED);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            a.this.b.c();
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            try {
                a.this.e();
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("FacebookMediationBanner", "Facebook banner ad loaded successfully. Showing ad...", 1, DebugCategory.DEBUG));
                if (a.this.b != null) {
                    a.this.b.a(a.this.f5168a);
                }
            } catch (Exception e) {
                a.this.d();
            } catch (NoClassDefFoundError e2) {
                a.this.c();
            }
        }
    }
}
