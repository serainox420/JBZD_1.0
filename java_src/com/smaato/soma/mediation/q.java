package com.smaato.soma.mediation;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.millennialmedia.AppInfo;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.MMLog;
import com.millennialmedia.MMSDK;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.j;
import java.util.Map;
/* compiled from: MillennialMediationInterstitial.java */
/* loaded from: classes3.dex */
public class q extends j {

    /* renamed from: a  reason: collision with root package name */
    private static String f5194a = "MillennialMediationInterstitial";
    private InterstitialAd b;
    private j.a c;
    private Context d;
    private Handler e;
    private Runnable f;

    @Override // com.smaato.soma.mediation.j
    public void a(Context context, j.a aVar, Map<String, String> map, o oVar) {
        String[] strArr;
        try {
            this.c = aVar;
            this.d = context;
            if (!a(oVar)) {
                this.c.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            if (!MMSDK.isInitialized()) {
                if (Build.VERSION.SDK_INT >= 16) {
                    if (!MMSDK.isInitialized()) {
                        if (context instanceof Activity) {
                            MMSDK.initialize((Activity) context);
                        } else {
                            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5194a, "\"MMSDK.initialize must be explicitly called when loading a banner without providing an Activity.\" " + f5194a, 1, DebugCategory.ERROR));
                            e();
                        }
                    }
                } else {
                    e();
                }
            }
            if (com.smaato.soma.debug.a.f4941a > 1) {
                MMLog.setLogLevel(1);
            } else {
                MMLog.setLogLevel(5);
            }
            AppInfo mediator = new AppInfo().setMediator("Smaato");
            if (oVar.j() != null) {
                strArr = oVar.j().trim().split("\\s*;\\s*");
                if (strArr != null && strArr.length > 1) {
                    mediator.setSiteId(strArr[1]);
                }
            } else {
                strArr = null;
            }
            MMSDK.setAppInfo(mediator);
            if (strArr != null && strArr.length > 0 && strArr[0] != null) {
                this.b = InterstitialAd.createInstance(strArr[0]);
            } else {
                this.b = InterstitialAd.createInstance(oVar.j());
            }
            this.b.setListener(new a());
            this.e = new Handler(Looper.getMainLooper());
            this.f = new Runnable() { // from class: com.smaato.soma.mediation.q.1
                @Override // java.lang.Runnable
                public void run() {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(q.f5194a, q.f5194a + "timed out to fill Ad.", 1, DebugCategory.DEBUG));
                    q.this.c.a(ErrorCode.NETWORK_NO_FILL);
                    q.this.b();
                }
            };
            this.e.postDelayed(this.f, 9000L);
            this.b.load(context, null);
        } catch (Exception e) {
            f();
        } catch (NoClassDefFoundError e2) {
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.e.removeCallbacksAndMessages(null);
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5194a, " cancel Timeout called in" + f5194a, 1, DebugCategory.DEBUG));
    }

    @Override // com.smaato.soma.mediation.j
    public void a() {
        try {
            if (this.b.isReady() && this.d != null) {
                this.b.show(this.d);
            } else {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5194a, "Tried to show a Millennial interstitial ad even before it finished loading.", 1, DebugCategory.DEBUG));
            }
        } catch (Exception e) {
            f();
        } catch (NoClassDefFoundError e2) {
            e();
        }
    }

    @Override // com.smaato.soma.mediation.j
    public void b() {
        try {
            if (this.b != null) {
                this.b.setListener(null);
                this.b = null;
            }
            if (this.e != null && this.f != null) {
                this.e.removeCallbacksAndMessages(null);
                this.e = null;
                this.f = null;
            }
        } catch (Exception e) {
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
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5194a, "MMSDK inputs are inValid", 1, DebugCategory.DEBUG));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MillennialMediationInterstitial.java */
    /* loaded from: classes3.dex */
    public class a implements InterstitialAd.InterstitialListener {
        a() {
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onLoaded(InterstitialAd interstitialAd) {
            try {
                q.this.d();
                if (q.this.c != null) {
                    q.this.c.a();
                }
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(q.f5194a, "Millennial interstitial ad loaded successfully.", 1, DebugCategory.DEBUG));
            } catch (Exception e) {
                q.this.f();
            } catch (NoClassDefFoundError e2) {
                q.this.e();
            }
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onLoadFailed(InterstitialAd interstitialAd, InterstitialAd.InterstitialErrorStatus interstitialErrorStatus) {
            try {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(q.f5194a, "Millennial interstitial ad failed to load.", 1, DebugCategory.DEBUG));
                if (q.this.c != null) {
                    q.this.c.a(ErrorCode.NETWORK_NO_FILL);
                }
                q.this.b();
            } catch (Exception e) {
                q.this.f();
            } catch (NoClassDefFoundError e2) {
                q.this.e();
            }
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onShown(InterstitialAd interstitialAd) {
            if (q.this.c != null) {
                q.this.c.b();
            }
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onShowFailed(InterstitialAd interstitialAd, InterstitialAd.InterstitialErrorStatus interstitialErrorStatus) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(q.f5194a, "Millennial interstitial request completed, but no ad was available.", 1, DebugCategory.DEBUG));
            if (q.this.c != null) {
                q.this.c.a(ErrorCode.NETWORK_NO_FILL);
            }
            q.this.b();
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onClosed(InterstitialAd interstitialAd) {
            q.this.c.d();
            q.this.b();
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onClicked(InterstitialAd interstitialAd) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(q.f5194a, "Millennial interstitial clicked.", 1, DebugCategory.DEBUG));
            if (q.this.c != null) {
                q.this.c.c();
            }
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onAdLeftApplication(InterstitialAd interstitialAd) {
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onExpired(InterstitialAd interstitialAd) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(q.f5194a, "Millennial interstitial ad expired.", 1, DebugCategory.DEBUG));
            if (q.this.c != null) {
                q.this.c.a(ErrorCode.NETWORK_NO_FILL);
            }
            q.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5194a, "NoClassDefFoundError happened with MMedia Mediation. Check configurations for " + f5194a, 1, DebugCategory.ERROR));
        if (this.c != null) {
            this.c.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5194a, "Exception happened with Mediation inputs. Check in " + f5194a, 1, DebugCategory.ERROR));
        if (this.c != null) {
            this.c.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        }
        b();
    }
}
