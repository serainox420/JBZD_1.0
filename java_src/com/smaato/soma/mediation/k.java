package com.smaato.soma.mediation;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.games.GamesStatusCodes;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.j;
import java.util.HashMap;
import java.util.Map;
/* compiled from: MediationEventInterstitialAdapter.java */
/* loaded from: classes3.dex */
public class k implements j.a {

    /* renamed from: a  reason: collision with root package name */
    private final com.smaato.soma.interstitial.b f5185a;
    private boolean b;
    private String c;
    private j d;
    private Context e;
    private o f;
    private final Handler g = new Handler();
    private final Runnable h;
    private final j.a i;

    public j e() {
        return this.d;
    }

    public k(com.smaato.soma.interstitial.b bVar, final String str, o oVar, j.a aVar) {
        this.f5185a = bVar;
        this.f = oVar;
        this.e = this.f5185a.getContext();
        this.i = aVar;
        this.h = new Runnable() { // from class: com.smaato.soma.mediation.k.1
            @Override // java.lang.Runnable
            public void run() {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "Third-party network timed out." + str, 1, DebugCategory.DEBUG));
                k.this.a(ErrorCode.NETWORK_TIMEOUT);
                k.this.g();
            }
        };
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "Attempting to invoke custom event:" + str, 1, DebugCategory.DEBUG));
        try {
            if (!a(oVar) || str == null || str.isEmpty()) {
                a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            } else {
                this.c = str;
                this.d = m.a(str);
            }
        } catch (Exception e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "Couldn't locate or instantiate custom event: " + str, 1, DebugCategory.DEBUG));
            a(ErrorCode.ADAPTER_NOT_FOUND);
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

    public void f() {
        if (h() || this.d == null || this.c == null || this.f.c() == null || this.f.c().isEmpty()) {
            a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            g();
            return;
        }
        try {
            if (j() > 0) {
                this.g.postDelayed(this.h, j());
            }
            Map<String, String> a2 = this.f.a();
            if (a2 == null) {
                a2 = new HashMap<>();
            }
            a2.put("CUSTOM_WIDTH", String.valueOf(this.f.f()));
            a2.put("CUSTOM_HEIGHT", String.valueOf(this.f.g()));
            this.d.getClass().getMethod(this.f.c(), Context.class, j.a.class, Map.class).invoke(this.d, this.e, this, a2);
        } catch (RuntimeException e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "Loading a custom event interstitial configuration exception.", 1, DebugCategory.DEBUG));
            a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            g();
        } catch (Exception e2) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "Loading a custom event interstitial threw an exception." + e2, 1, DebugCategory.ERROR));
            a(ErrorCode.GENERAL_ERROR);
            g();
        }
    }

    public void g() {
        if (this.d != null) {
            try {
                this.d.b();
            } catch (Exception e) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "Invalidating a custom event interstitial threw an exception." + e, 1, DebugCategory.ERROR));
            }
        }
        this.d = null;
        this.e = null;
        this.b = true;
    }

    boolean h() {
        return this.b;
    }

    public void i() {
        this.g.removeCallbacks(this.h);
    }

    public int j() {
        return GamesStatusCodes.STATUS_VIDEO_NOT_ACTIVE;
    }

    @Override // com.smaato.soma.interstitial.a
    public void onReadyToShow() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "onReadyToShow", 1, DebugCategory.DEBUG));
    }

    @Override // com.smaato.soma.interstitial.a
    public void onWillShow() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "onReadyToShow", 1, DebugCategory.DEBUG));
    }

    @Override // com.smaato.soma.interstitial.a
    public void onWillOpenLandingPage() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "onReadyToShow", 1, DebugCategory.DEBUG));
    }

    @Override // com.smaato.soma.interstitial.a
    public void onWillClose() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "onReadyToShow", 1, DebugCategory.DEBUG));
    }

    @Override // com.smaato.soma.interstitial.a
    public void onFailedToLoadAd() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MediationEventInterstitialAdapter", "onReadyToShow", 1, DebugCategory.DEBUG));
    }

    @Override // com.smaato.soma.mediation.j.a
    public void a() {
        if (!h()) {
            i();
            if (this.i != null) {
                this.i.a();
            }
        }
    }

    @Override // com.smaato.soma.mediation.j.a
    public void a(ErrorCode errorCode) {
        if (!h()) {
            if (this.i != null) {
                if (errorCode == null) {
                    errorCode = ErrorCode.UNSPECIFIED;
                }
                i();
                this.i.a(errorCode);
            }
            g();
        }
    }

    @Override // com.smaato.soma.mediation.j.a
    public void b() {
        if (!h() && this.i != null) {
            this.i.b();
        }
    }

    @Override // com.smaato.soma.mediation.j.a
    public void c() {
        if (!h() && this.i != null) {
            this.i.c();
        }
    }

    @Override // com.smaato.soma.mediation.j.a
    public void d() {
        if (!h() && this.i != null) {
            this.i.d();
        }
    }
}
