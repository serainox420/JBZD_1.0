package com.smaato.soma.mediation;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.widget.LinearLayout;
import com.millennialmedia.AppInfo;
import com.millennialmedia.InlineAd;
import com.millennialmedia.MMLog;
import com.millennialmedia.MMSDK;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.f;
import java.util.Map;
/* compiled from: MillennialMediationBanner.java */
/* loaded from: classes3.dex */
public class p extends f {

    /* renamed from: a  reason: collision with root package name */
    private InlineAd f5191a;
    private f.a b;
    private LinearLayout c;
    private Handler d;
    private Runnable e;

    @Override // com.smaato.soma.mediation.f
    public void a(Context context, f.a aVar, Map<String, String> map, o oVar) {
        String[] strArr;
        this.b = aVar;
        this.f5191a = null;
        if (!a(oVar)) {
            this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        try {
            try {
                if (!MMSDK.isInitialized()) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        if (!MMSDK.isInitialized()) {
                            if (context instanceof Activity) {
                                try {
                                    MMSDK.initialize((Activity) context);
                                } catch (Exception e) {
                                }
                            } else {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", "\"MMSDK.initialize must be explicitly called with Activity.\" MMediaBanner", 1, DebugCategory.ERROR));
                                c();
                            }
                        }
                    } else {
                        c();
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
                this.c = new LinearLayout(context);
                new LinearLayout.LayoutParams(-1, -2).gravity = 1;
                if (strArr != null && strArr.length > 0 && strArr[0] != null) {
                    this.f5191a = InlineAd.createInstance(strArr[0], this.c);
                } else {
                    this.f5191a = InlineAd.createInstance(oVar.j(), this.c);
                }
                this.f5191a.setListener(new a());
                int i = 320;
                int i2 = 50;
                if (oVar.f() > 0 && oVar.g() > 0) {
                    i = oVar.f();
                    i2 = oVar.g();
                }
                InlineAd.InlineAdMetadata adSize = new InlineAd.InlineAdMetadata().setAdSize(new InlineAd.AdSize(i, i2));
                this.d = new Handler(Looper.getMainLooper());
                this.e = new Runnable() { // from class: com.smaato.soma.mediation.p.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", "MMediaBannertimed out to fill Ad.", 1, DebugCategory.DEBUG));
                        if (p.this.b != null) {
                            p.this.b.a(ErrorCode.NETWORK_NO_FILL);
                        }
                        p.this.a();
                    }
                };
                this.d.postDelayed(this.e, 7500L);
                this.f5191a.request(adSize);
            } catch (NoClassDefFoundError e2) {
                c();
            }
        } catch (Exception e3) {
            d();
        }
    }

    @Override // com.smaato.soma.mediation.f
    public void a() {
        try {
            this.f5191a = null;
            if (this.d != null && this.e != null) {
                this.d.removeCallbacksAndMessages(null);
                this.d = null;
                this.e = null;
            }
        } catch (Exception e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", "Exception in invalidating MMSDKMMediaBanner", 1, DebugCategory.ERROR));
        } catch (NoClassDefFoundError e2) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", "NoClassDefFoundError in invalidating MMSDKMMediaBanner", 1, DebugCategory.ERROR));
        }
    }

    public boolean a(o oVar) {
        if (oVar == null) {
            return false;
        }
        try {
            if (oVar.j() == null) {
                return false;
            }
            return !oVar.j().isEmpty();
        } catch (Exception e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", "Mediation inputs are invalidMMediaBanner", 1, DebugCategory.DEBUG));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.d != null && this.e != null) {
            this.d.removeCallbacksAndMessages(null);
            this.d = null;
            this.e = null;
        }
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", " cancelTimeout called inMMediaBanner", 1, DebugCategory.DEBUG));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MillennialMediationBanner.java */
    /* loaded from: classes3.dex */
    public class a implements InlineAd.InlineListener {
        a() {
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onRequestSucceeded(InlineAd inlineAd) {
            try {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", "MM banner ad loaded successfully", 1, DebugCategory.DEBUG));
                p.this.b();
                if (p.this.c != null) {
                    p.this.b.a(p.this.c);
                }
            } catch (Exception e) {
                p.this.d();
            } catch (NoClassDefFoundError e2) {
                p.this.c();
            }
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onRequestFailed(InlineAd inlineAd, InlineAd.InlineErrorStatus inlineErrorStatus) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", "MM banner ad failed to load", 1, DebugCategory.DEBUG));
            if (p.this.b != null) {
                p.this.b.a(ErrorCode.NETWORK_NO_FILL);
            }
            p.this.a();
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onClicked(InlineAd inlineAd) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", "Millennial banner clicked.", 1, DebugCategory.DEBUG));
            if (p.this.b != null) {
                p.this.b.c();
            }
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onResize(InlineAd inlineAd, int i, int i2) {
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onResized(InlineAd inlineAd, int i, int i2, boolean z) {
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onExpanded(InlineAd inlineAd) {
            if (p.this.b != null) {
                p.this.b.a();
            }
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onCollapsed(InlineAd inlineAd) {
            if (p.this.b != null) {
                p.this.b.b();
            }
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onAdLeftApplication(InlineAd inlineAd) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", "MillennialMedia dependecies missing. Check configurations of MMediaBanner", 1, DebugCategory.ERROR));
        if (this.b != null) {
            this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MMediaBanner", "Exception happened with Mediation inputs. Check in MMediaBanner", 1, DebugCategory.ERROR));
        if (this.b != null) {
            this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        }
        a();
    }
}
