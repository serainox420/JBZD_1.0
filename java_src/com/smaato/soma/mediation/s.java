package com.smaato.soma.mediation;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.j;
import java.util.Map;
import java.util.logging.Level;
/* compiled from: MoPubMediationInterstitial.java */
/* loaded from: classes3.dex */
public class s extends j {

    /* renamed from: a  reason: collision with root package name */
    private static String f5199a = "MoPubMediationInterstitial";
    private static MoPubInterstitial c;
    private j.a b;
    private Handler d;
    private Runnable e;

    @Override // com.smaato.soma.mediation.j
    public void a(Context context, j.a aVar, Map<String, String> map, o oVar) {
        try {
            this.b = aVar;
            if (!a(oVar)) {
                this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            if (c == null) {
                c = new MoPubInterstitial((Activity) context, oVar.j());
            }
            if (com.smaato.soma.debug.a.f4941a > 1) {
                MoPubLog.setSdkHandlerLevel(Level.ALL);
            } else {
                MoPubLog.setSdkHandlerLevel(Level.OFF);
            }
            c.setInterstitialAdListener(new a());
            this.d = new Handler();
            this.e = new Runnable() { // from class: com.smaato.soma.mediation.s.1
                @Override // java.lang.Runnable
                public void run() {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(s.f5199a, s.f5199a + "timed out to fill Ad.", 1, DebugCategory.DEBUG));
                    s.this.b.a(ErrorCode.NETWORK_NO_FILL);
                    s.this.b();
                }
            };
            this.d.postDelayed(this.e, 9000L);
            c.load();
        } catch (Exception e) {
            f();
        } catch (NoClassDefFoundError e2) {
            e();
        } catch (RuntimeException e3) {
            e();
        }
    }

    @Override // com.smaato.soma.mediation.j
    public void a() {
        try {
            if (c.isReady()) {
                c.show();
            } else {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5199a, "Tried to show a MoPub interstitial ad before it finished loading. Please try again.", 1, DebugCategory.ERROR));
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
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5199a, " cancelTimeout called in" + f5199a, 1, DebugCategory.DEBUG));
    }

    @Override // com.smaato.soma.mediation.j
    public void b() {
        try {
            if (c != null) {
                c.destroy();
                c = null;
            }
            if (this.d != null && this.e != null) {
                this.d.removeCallbacks(this.e);
                this.d.removeCallbacksAndMessages(null);
                this.d = null;
                this.e = null;
            }
        } catch (Exception e) {
        } catch (NoClassDefFoundError e2) {
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
    /* compiled from: MoPubMediationInterstitial.java */
    /* loaded from: classes3.dex */
    public class a implements MoPubInterstitial.InterstitialAdListener {
        private a() {
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
            try {
                s.this.d();
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(s.f5199a, "MoPub interstitial ad loaded successfully.", 1, DebugCategory.DEBUG));
                if (s.this.b != null) {
                    s.this.b.a();
                }
            } catch (Exception e) {
                s.this.f();
            } catch (NoClassDefFoundError e2) {
                s.this.e();
            }
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
            if (moPubErrorCode != null) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(s.f5199a, "MoPub interstitial ad failed to load.moPubErrorCode" + moPubErrorCode, 1, DebugCategory.DEBUG));
            }
            if (s.this.b != null) {
                s.this.b.a(ErrorCode.NETWORK_NO_FILL);
            }
            s.this.b();
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(s.f5199a, "Showing MoPub interstitial ad.", 1, DebugCategory.DEBUG));
            if (s.this.b != null) {
                s.this.b.b();
            }
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(s.f5199a, "MoPub interstitial ad clicked.", 1, DebugCategory.DEBUG));
            if (s.this.b != null) {
                s.this.b.c();
            }
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
            if (s.this.b != null) {
                s.this.b.d();
            }
            s.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5199a, "Dependencies missing. Check configurations of " + f5199a, 1, DebugCategory.ERROR));
        this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5199a, "Exception happened with Mediation inputs. Check in " + f5199a, 1, DebugCategory.ERROR));
        this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        b();
    }
}
