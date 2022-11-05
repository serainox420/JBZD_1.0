package com.smaato.soma.mediation;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.j;
import java.util.Map;
/* compiled from: GooglePlayMediationInterstitial.java */
/* loaded from: classes3.dex */
public class e extends j {

    /* renamed from: a  reason: collision with root package name */
    private static String f5178a = "GooglePlayMediationInterstitial";
    private j.a b;
    private InterstitialAd c;
    private Handler d;
    private Runnable e;

    @Override // com.smaato.soma.mediation.j
    public void a(Context context, j.a aVar, Map<String, String> map, o oVar) {
        try {
            this.b = aVar;
            if (!a(oVar)) {
                this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            } else {
                this.c = new InterstitialAd(context);
                this.c.setAdListener(new a());
                this.c.setAdUnitId(oVar.j());
                AdRequest build = new AdRequest.Builder().setRequestAgent("Smaato").build();
                this.d = new Handler();
                this.e = new Runnable() { // from class: com.smaato.soma.mediation.e.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(e.f5178a, e.f5178a + "timed out to fill Ad.", 1, DebugCategory.DEBUG));
                        e.this.b.a(ErrorCode.NETWORK_NO_FILL);
                        e.this.b();
                    }
                };
                this.d.postDelayed(this.e, 9000L);
                this.c.loadAd(build);
            }
        } catch (Exception e) {
            f();
        } catch (NoClassDefFoundError e2) {
            e();
        }
    }

    @Override // com.smaato.soma.mediation.j
    public void a() {
        try {
            if (this.c.isLoaded()) {
                this.c.show();
            } else {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5178a, "Tried to show a Google Play Services interstitial ad before it finished loading. Please try again.", 1, DebugCategory.DEBUG));
            }
        } catch (Exception e) {
            f();
        } catch (NoClassDefFoundError e2) {
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.d != null) {
            this.d.removeCallbacks(this.e);
        }
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5178a, " cancelTimeout called in" + f5178a, 1, DebugCategory.DEBUG));
    }

    @Override // com.smaato.soma.mediation.j
    public void b() {
        try {
            if (this.d != null && this.e != null) {
                this.d.removeCallbacks(this.e);
                this.d.removeCallbacksAndMessages(null);
                this.d = null;
                this.e = null;
            }
        } catch (Exception e) {
            f();
        } catch (NoClassDefFoundError e2) {
            e();
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
    /* compiled from: GooglePlayMediationInterstitial.java */
    /* loaded from: classes3.dex */
    public class a extends AdListener {
        private a() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            if (e.this.b != null) {
                e.this.b.d();
            }
            e.this.b();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            try {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(e.f5178a, "Google Play Services interstitial ad failed to load.", 1, DebugCategory.DEBUG));
                if (e.this.b != null) {
                    e.this.b.a(ErrorCode.NETWORK_NO_FILL);
                }
                e.this.b();
            } catch (Exception e) {
                e.this.f();
            } catch (NoClassDefFoundError e2) {
                e.this.e();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            if (e.this.b != null) {
                e.this.b.c();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            try {
                e.this.d();
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(e.f5178a, "Google Play Services interstitial ad loaded successfully.", 1, DebugCategory.DEBUG));
                if (e.this.b != null) {
                    e.this.b.a();
                }
            } catch (Exception e) {
                e.this.f();
            } catch (NoClassDefFoundError e2) {
                e.this.e();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(e.f5178a, "Showing Google Play Services interstitial ad.", 1, DebugCategory.DEBUG));
            if (e.this.b != null) {
                e.this.b.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5178a, "NoClassDefFoundError happened with Google Mediation. Check configurations for " + f5178a, 1, DebugCategory.ERROR));
        this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5178a, "Exception happened with Mediation inputs. Check in " + f5178a, 1, DebugCategory.ERROR));
        this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        b();
    }
}
