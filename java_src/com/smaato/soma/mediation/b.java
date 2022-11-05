package com.smaato.soma.mediation;

import android.content.Context;
import com.facebook.FacebookSdk;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.j;
import java.util.Map;
/* compiled from: FacebookMediationInterstitial.java */
/* loaded from: classes3.dex */
public class b extends j {
    private static String b = "FacebookMediationInterstitial";

    /* renamed from: a  reason: collision with root package name */
    InterstitialAdListener f5171a = new InterstitialAdListener() { // from class: com.smaato.soma.mediation.b.1
        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            try {
                b.this.f();
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b.b, "Facebook interstitial ad loaded successfully.", 1, DebugCategory.DEBUG));
                if (b.this.d != null) {
                    b.this.d.a();
                }
            } catch (Exception e) {
                b.this.e();
            } catch (NoClassDefFoundError e2) {
                b.this.d();
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b.b, "Facebook interstitial ad failed to load.", 1, DebugCategory.DEBUG));
            if (adError == AdError.NO_FILL) {
                b.this.d.a(ErrorCode.NETWORK_NO_FILL);
            } else {
                b.this.d.a(ErrorCode.UNSPECIFIED);
            }
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDisplayed(Ad ad) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b.b, "Showing Facebook interstitial ad.", 1, DebugCategory.DEBUG));
            b.this.d.b();
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b.b, "Facebook interstitial ad clicked.", 1, DebugCategory.DEBUG));
            b.this.d.c();
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDismissed(Ad ad) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b.b, "Facebook interstitial ad dismissed", 1, DebugCategory.DEBUG));
            b.this.d.d();
        }
    };
    private InterstitialAd c;
    private j.a d;

    @Override // com.smaato.soma.mediation.j
    public void a(Context context, j.a aVar, Map<String, String> map, o oVar) {
        this.d = aVar;
        if (!a(oVar)) {
            this.d.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        if (oVar.k() != null && !FacebookSdk.isInitialized()) {
            FacebookSdk.setApplicationId(oVar.k());
        }
        this.c = new InterstitialAd(context, oVar.j());
        this.c.setAdListener(this.f5171a);
        this.c.loadAd();
    }

    @Override // com.smaato.soma.mediation.j
    public void a() {
        if (this.c != null && this.c.isAdLoaded()) {
            this.c.show();
        } else {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b, "Tried to show a Facebook interstitial ad before it finished loading. Please try again.", 1, DebugCategory.DEBUG));
        }
    }

    @Override // com.smaato.soma.mediation.j
    public void b() {
        try {
            if (this.c != null) {
                this.c.setAdListener(null);
                this.c.destroy();
                this.c = null;
            }
        } catch (Exception e) {
            e();
        } catch (NoClassDefFoundError e2) {
            d();
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

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b, "NoClassDefFoundError happened with Google Mediation. Check configurations for " + b, 1, DebugCategory.ERROR));
        this.d.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b, "Exception happened with Mediation inputs. Check in " + b, 1, DebugCategory.ERROR));
        this.d.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b, " cancelTimeout called in" + b, 1, DebugCategory.DEBUG));
    }
}
