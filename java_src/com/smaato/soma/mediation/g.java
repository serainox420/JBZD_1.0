package com.smaato.soma.mediation;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.f;
import java.util.HashMap;
import java.util.Map;
/* compiled from: MediationEventBannerAdapter.java */
/* loaded from: classes3.dex */
public class g implements f.a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5181a;
    private com.smaato.soma.j b;
    private Context c;
    private f d;
    private f.a e;
    private o f;
    private final Handler g = new Handler();
    private final Runnable h = new Runnable() { // from class: com.smaato.soma.mediation.g.1
        @Override // java.lang.Runnable
        public void run() {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventBannerAdapter", "Third-party network timed out to fill Ad.", 1, DebugCategory.DEBUG));
            g.this.a(ErrorCode.NETWORK_TIMEOUT);
            g.this.f();
        }
    };
    private String i;

    public f d() {
        return this.d;
    }

    public g(com.smaato.soma.j jVar, String str, o oVar, f.a aVar) {
        this.e = aVar;
        this.b = jVar;
        this.c = jVar.getContext();
        this.f = oVar;
        try {
            if (!a(oVar) || str == null || str.isEmpty()) {
                a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            } else {
                this.i = str;
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventBannerAdapter", "Attempting to invoke custom event: " + str, 1, DebugCategory.DEBUG));
                this.d = i.a(str);
            }
        } catch (Exception e) {
            k();
        } catch (NoClassDefFoundError e2) {
            j();
        }
    }

    public void e() {
        if (g() || this.d == null || this.i == null || this.f.c() == null || this.f.c().isEmpty()) {
            a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            f();
            return;
        }
        if (i() > 0) {
            this.g.postDelayed(this.h, i());
        }
        try {
            Map<String, String> a2 = this.f.a();
            if (a2 == null) {
                a2 = new HashMap<>();
            }
            a2.put("CUSTOM_WIDTH", String.valueOf(this.f.f()));
            a2.put("CUSTOM_HEIGHT", String.valueOf(this.f.g()));
            this.d.getClass().getMethod(this.f.c(), Context.class, f.a.class, Map.class).invoke(this.d, this.c, this, a2);
        } catch (RuntimeException e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventBannerAdapter", "Loading a custom event banner configuration exception.", 1, DebugCategory.DEBUG));
            a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            f();
        } catch (Exception e2) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventBannerAdapter", "Loading a custom event banner threw an exception.", 1, DebugCategory.DEBUG));
            a(ErrorCode.GENERAL_ERROR);
            f();
        }
    }

    void f() {
        try {
            if (this.d != null) {
                try {
                    this.d.a();
                } catch (Exception e) {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventBannerAdapter", "Invalidating a custom event banner threw an exception", 1, DebugCategory.DEBUG));
                }
            }
            this.c = null;
            this.d = null;
            this.f5181a = true;
        } catch (RuntimeException e2) {
        } catch (Exception e3) {
        }
    }

    private boolean a(o oVar) {
        if (oVar == null || oVar == null) {
            return false;
        }
        try {
            return oVar.a() != null;
        } catch (Exception e) {
            return false;
        }
    }

    boolean g() {
        return this.f5181a;
    }

    private void h() {
        this.g.removeCallbacks(this.h);
    }

    private int i() {
        return 7500;
    }

    @Override // com.smaato.soma.mediation.f.a
    public void a(View view) {
        try {
            if (!g()) {
                h();
                if (this.b != null) {
                    this.e.a(view);
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventBannerAdapter", "onReceiveAd successfully", 1, DebugCategory.DEBUG));
                } else {
                    this.e.a(ErrorCode.NETWORK_NO_FILL);
                }
            }
        } catch (Exception e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventBannerAdapter", "Exception with View parent detachment", 1, DebugCategory.DEBUG));
        }
    }

    @Override // com.smaato.soma.mediation.f.a
    public void a(ErrorCode errorCode) {
        if (!g() && this.b != null) {
            if (errorCode == null) {
                errorCode = ErrorCode.NETWORK_NO_FILL;
            }
            h();
            this.e.a(errorCode);
            f();
        }
    }

    @Override // com.smaato.soma.mediation.f.a
    public void a() {
        if (!g() && this.b != null && this.e != null) {
            this.e.b();
        }
    }

    @Override // com.smaato.soma.mediation.f.a
    public void b() {
        if (!g()) {
            if (this.b != null && this.e != null) {
                this.e.b();
            }
            f();
        }
    }

    @Override // com.smaato.soma.mediation.f.a
    public void c() {
        if (!g() && this.b != null && this.e != null) {
            this.e.c();
        }
    }

    private void j() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventBannerAdapter", "Dependencies missing. Check configurations of you Custom Adapter Config.", 1, DebugCategory.ERROR));
        this.e.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        f();
    }

    private void k() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventBannerAdapter", "Exception happened with Mediation inputs. Check you Custom Adapter Config.", 1, DebugCategory.ERROR));
        this.e.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        f();
    }
}
