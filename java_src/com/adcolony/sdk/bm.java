package com.adcolony.sdk;

import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bm {
    static final String A = "catalog_cross_fade_duration_ms";
    static final int B = 150;
    static final String C = "catalog_splash_fade_in_ms";
    static final int D = 50;
    static final String E = "catalog_over_status_bar";
    static final String F = "update_stat_frequency_ms";
    static final String H = "stat_save_frequency_ms";
    static final String J = "update_promo_stat_frequency_ms";
    static final String L = "session_resume_grace_period_ms";
    static final String N = "reset_session_timer_ms";
    static final String P = "reset_session_timer_after_exception_ms";
    static final String R = "require_payload_signature";
    static final boolean S = true;
    static final String T = "use_ssl_pinning";
    static final boolean U = false;
    static final String V = "update_event_frequency_ms";
    static final String X = "update_stat_call_delay_ms";
    static final String Z = "persistent_storage_save_frequency_ms";

    /* renamed from: a  reason: collision with root package name */
    static final String f1204a = "AdColonyPubServices";
    static final boolean aA = false;
    static final String ab = "flush_on_background";
    static final boolean ac = false;
    static final String ad = "toast_presentation_delay_ms";
    static final int ae = 0;
    static final String af = "toast_modal_background_rgba";
    static final String ag = "#00000000";
    static final String ah = "modal_background_rgba";
    static final String ai = "#00000000";
    static final String aj = "log_batch_size";
    static final int ak = 25;
    static final String al = "stat_batch_size";
    static final int am = 25;
    static final String an = "server_request_timeout_ms";
    static final String ap = "webview_timeout_ms";
    static final String ar = "close_button_initial_fade_in_ms";
    static final int as = 1500;
    static final String at = "persistence_limit_stat";
    static final int au = 1000;
    static final String av = "persistence_limit_log";
    static final int aw = 1000;
    static final String ax = "lock_fullscreen_view_orientation";
    static final boolean ay = true;
    static final String az = "enable_swipe_to_dismiss";
    static final String b = "endpoints";
    static final String c = "signature";
    static final String d = "version";
    static final String e = "catalog_splash";
    static final String f = "control_vars";
    static final String g = "toast_default_width";
    static final int h = 320;
    static final String i = "toast_default_height";
    static final int j = 52;
    static final String k = "toast_default_duration_ms";
    static final String m = "toast_animation_in_ms";
    static final int n = 200;
    static final String o = "toast_animation_out_ms";
    static final int p = 100;
    static final String q = "toast_gap_delay_ms";
    static final int r = 500;
    static final String s = "animation_in_type";
    static final int t = 1;
    static final String u = "animation_out_type";
    static final int v = 8;
    static final String w = "position_type";
    static final int x = 2;
    static final String y = "catalog_border_padding";
    static final int z = 0;
    HashMap<String, Object> aB;
    Map<String, Object> aC = null;
    boolean aD;
    static final int l = a(3);
    static final int G = b(5);
    static final int I = a(10);
    static final int K = a(3);
    static final int M = b(5);
    static final int O = b(5);
    static final int Q = b(10);
    static final int W = b(5);
    static final int Y = b(1);
    static final int aa = a(1);
    static final int ao = a(30);
    static final int aq = a(30);

    static final int a(int i2) {
        return i2 * 1000;
    }

    static final int b(int i2) {
        return i2 * 60 * 1000;
    }

    private String I() {
        return f1204a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Map<String, Object> map) {
        this.aC = map;
        if (this.aC != null && this.aC.containsKey(f)) {
            this.aB = (HashMap) this.aC.get(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str) {
        if (this.aC == null || !this.aC.containsKey(b) || this.aC.get(b) == null) {
            cb.b(I(), "No endpoints found", true);
            return null;
        }
        HashMap hashMap = (HashMap) this.aC.get(b);
        if (hashMap.containsKey(str)) {
            return (String) hashMap.get(str);
        }
        cb.b(I(), "Missing endpoint for:" + str, true);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        if (this.aB != null && this.aB.containsKey(k) && this.aB.get(k) != null) {
            return ((Integer) this.aB.get(k)).intValue();
        }
        cb.b(I(), "Default toast duration was returned", true);
        return l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        if (this.aB != null && this.aB.containsKey(m) && this.aB.get(m) != null) {
            return ((Integer) this.aB.get(m)).intValue();
        }
        cb.b(I(), "Default animation in was returned", true);
        return 200;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        if (this.aB != null && this.aB.containsKey(o) && this.aB.get(o) != null) {
            return ((Integer) this.aB.get(o)).intValue();
        }
        cb.b(I(), "Default Animation out was returned", true);
        return 100;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        if (this.aB != null && this.aB.containsKey(q) && this.aB.get(q) != null) {
            return ((Integer) this.aB.get(q)).intValue();
        }
        cb.b(I(), "Default gap delay was returned", true);
        return r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        if (this.aB != null && this.aB.containsKey(i) && this.aB.get(i) != null) {
            return ((Integer) this.aB.get(i)).intValue();
        }
        cb.b(I(), "Default toast height was returned", true);
        return 52;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        if (this.aB != null && this.aB.containsKey(g) && this.aB.get(g) != null) {
            return ((Integer) this.aB.get(g)).intValue();
        }
        cb.b(I(), "Default toast width was returned", true);
        return h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        if (this.aB != null && this.aB.containsKey(w) && this.aB.get(w) != null) {
            return ((Integer) this.aB.get(w)).intValue();
        }
        cb.b(I(), "Default toast position was returned", true);
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        if (this.aB == null || !this.aB.containsKey(s) || this.aB.get(s) == null) {
            return 1;
        }
        return ((Integer) this.aB.get(s)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        if (this.aB == null || !this.aB.containsKey(u) || this.aB.get(u) == null) {
            return 8;
        }
        return ((Integer) this.aB.get(o)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String j() {
        if (this.aC == null || !this.aC.containsKey(c)) {
            return null;
        }
        return (String) this.aC.get(c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        if (this.aB != null && this.aB.containsKey(F) && this.aB.get(F) != null) {
            return ((Integer) this.aB.get(F)).intValue();
        }
        cb.b(I(), "default stat frequency was returned", true);
        return G;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l() {
        if (this.aB != null && this.aB.containsKey(J) && this.aB.get(J) != null) {
            return ((Integer) this.aB.get(J)).intValue();
        }
        cb.b(I(), "default promo stat freq was returned", true);
        return K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m() {
        if (this.aC == null || !this.aC.containsKey("version") || this.aC.get("version") == null) {
            return 0;
        }
        return ((Integer) this.aC.get("version")).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int n() {
        if (bz.aK().aA().h() > 0) {
            return (int) bz.aK().aA().h();
        }
        if (this.aB != null && this.aB.containsKey(L) && this.aB.get(L) != null) {
            return ((Integer) this.aB.get(L)).intValue();
        }
        return M;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int o() {
        char c2 = 1;
        int[] iArr = {O, Q};
        String[] strArr = {N, P};
        if (!this.aD) {
            c2 = 0;
        }
        int i2 = iArr[c2];
        String str = strArr[c2];
        return (this.aB == null || !this.aB.containsKey(str)) ? i2 : ((Integer) this.aB.get(str)).intValue();
    }

    void a(boolean z2) {
        this.aD = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int p() {
        int i2 = I;
        if (this.aB != null && this.aB.containsKey(H) && this.aB.get(H) != null) {
            return ((Integer) this.aB.get(H)).intValue();
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int q() {
        int i2 = W;
        if (this.aB != null && this.aB.containsKey(V)) {
            return ((Integer) this.aB.get(V)).intValue();
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r() {
        if (this.aB == null || !this.aB.containsKey(ab)) {
            return false;
        }
        return ((Integer) this.aB.get(ab)).intValue() > 0;
    }

    int s() {
        int i2 = Y;
        if (this.aB != null && this.aB.containsKey(X)) {
            return ((Integer) this.aB.get(X)).intValue();
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int t() {
        if (this.aB == null || !this.aB.containsKey(ad) || this.aB.get(ad) == null) {
            return 0;
        }
        return ((Integer) this.aB.get(ad)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String u() {
        if (this.aB == null || !this.aB.containsKey(af) || this.aB.get(af) == null) {
            return "#00000000";
        }
        return (String) this.aB.get(af);
    }

    String v() {
        if (this.aB == null || !this.aB.containsKey(ah) || this.aB.get(ah) == null) {
            return "#00000000";
        }
        return (String) this.aB.get(ah);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w() {
        if (this.aB == null || !this.aB.containsKey(R) || this.aB.get(R) == null) {
            return true;
        }
        return ((Integer) this.aB.get(R)).intValue() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int x() {
        if (this.aB == null || !this.aB.containsKey(aj) || this.aB.get(aj) == null) {
            return 25;
        }
        return ((Integer) this.aB.get(aj)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int y() {
        if (this.aB == null || !this.aB.containsKey(al) || this.aB.get(al) == null) {
            return 25;
        }
        return ((Integer) this.aB.get(al)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int z() {
        int i2 = ao;
        if (this.aB != null && this.aB.containsKey(an) && this.aB.get(an) != null) {
            return ((Integer) this.aB.get(an)).intValue();
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int A() {
        int i2 = aq;
        if (this.aB != null && this.aB.containsKey(ap) && this.aB.get(ap) != null) {
            return ((Integer) this.aB.get(ap)).intValue();
        }
        return i2;
    }

    int B() {
        if (this.aB == null || !this.aB.containsKey(ar) || this.aB.get(ar) == null) {
            return 1500;
        }
        return ((Integer) this.aB.get(ar)).intValue();
    }

    int C() {
        int i2 = aa;
        if (this.aB != null && this.aB.containsKey(Z) && this.aB.get(Z) != null) {
            return ((Integer) this.aB.get(Z)).intValue();
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int D() {
        if (this.aB == null || !this.aB.containsKey(at) || this.aB.get(at) == null) {
            return 1000;
        }
        return ((Integer) this.aB.get(at)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int E() {
        if (this.aB == null || !this.aB.containsKey(av) || this.aB.get(av) == null) {
            return 1000;
        }
        return ((Integer) this.aB.get(av)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean F() {
        if (this.aB == null || !this.aB.containsKey(ax) || this.aB.get(ax) == null) {
            return true;
        }
        return ((Boolean) this.aB.get(ax)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean G() {
        if (this.aB == null || !this.aB.containsKey(az) || this.aB.get(az) == null) {
            return false;
        }
        return ((Boolean) this.aB.get(az)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String H() {
        return "3.0.7";
    }
}
