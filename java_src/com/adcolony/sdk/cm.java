package com.adcolony.sdk;

import android.content.Context;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.webkit.WebView;
import com.adcolony.sdk.bn;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cm {
    private static final String A = "position";
    private static final String B = "animation_in";
    private static final String C = "animation_out";
    private static final String D = "scaling";
    private static final String E = "presentation_delay_ms";
    private static final String F = "modal_background_color_rgba";
    private static final String G = "slug";
    private static final String H = "metadata";
    private static final String I = "close_method";
    private static final String J = "messageId";
    private static final String K = "swipe_direction";
    private static final String L = "swipe_enabled";
    private static final int M = 0;
    private static final int N = 1;
    private static final int O = 2;
    private static final int P = 4;
    private static final int Q = 8;
    private static final AlphaAnimation R = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, 1.0f);
    private static final AlphaAnimation S = new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
    private static final TranslateAnimation T = new TranslateAnimation(2, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 2, -1.0f, 1, BitmapDescriptorFactory.HUE_RED);
    private static final TranslateAnimation U = new TranslateAnimation(1, -1.0f, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED);
    private static final TranslateAnimation V = new TranslateAnimation(1, 1.0f, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED);
    private static final TranslateAnimation W = new TranslateAnimation(2, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 2, 1.0f, 1, BitmapDescriptorFactory.HUE_RED);
    static final TranslateAnimation k = new TranslateAnimation(1, BitmapDescriptorFactory.HUE_RED, 2, 1.0f, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED);
    static final TranslateAnimation l = new TranslateAnimation(1, BitmapDescriptorFactory.HUE_RED, 2, -1.0f, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED);
    static final TranslateAnimation m = new TranslateAnimation(1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 2, -1.0f);
    static final TranslateAnimation n = new TranslateAnimation(1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 2, 1.0f);
    static final TranslateAnimation o = new TranslateAnimation(1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED);
    private static final String r = "time_to_click_ms";
    private static final String s = "source_id";
    private static final String t = "duration_ms";
    private static final String u = "duration_animation_in_ms";
    private static final String v = "duration_animation_out_ms";
    private static final String w = "width";
    private static final String x = "height";
    private static final String y = "type";
    private static final String z = "display_type_s";
    boolean g;
    int h;
    Map<String, Object> i;
    private Map<String, Object> p;

    /* renamed from: a  reason: collision with root package name */
    a f1339a = a.NONE;
    c b = c.NONE;
    long c = 0;
    long d = 0;
    long e = 0;
    long f = 0;
    private bm q = bz.aK().at();
    d j = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum a {
        NONE,
        UNKNOWN,
        USER_SWIPE,
        USER_CLOSE_BUTTON,
        USER_TAP_BACKGROUND,
        REDIRECT_TO_CATALOG,
        DEV_REDEMPTION,
        NATURAL_TIMEOUT,
        FROM_JS,
        HARDWARE_BACK_BUTTON,
        ACTIVITY_HIDDEN,
        USER_SWIPE_RIGHT,
        USER_SWIPE_LEFT,
        USER_SWIPE_DOWN,
        USER_SWIPE_UP
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum c {
        NONE,
        QUEUED,
        SHOWING,
        PAUSED,
        DISMISSING
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface d {
        WebView a();

        void a(bk bkVar);

        Context b();

        void c();
    }

    /* loaded from: classes.dex */
    class b implements d {
        b() {
        }

        @Override // com.adcolony.sdk.cm.d
        public WebView a() {
            return null;
        }

        @Override // com.adcolony.sdk.cm.d
        public Context b() {
            return null;
        }

        @Override // com.adcolony.sdk.cm.d
        public void c() {
        }

        @Override // com.adcolony.sdk.cm.d
        public void a(bk bkVar) {
            bkVar.a(bn.a.YVOLVER_ERROR_NONE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm(Map<String, Object> map) {
        this.p = map;
        E();
    }

    private void E() {
        if (this.p != null && this.p.containsKey(L)) {
            this.g = ((Boolean) this.p.get(L)).booleanValue();
        } else {
            this.g = false;
        }
        if (this.p != null && this.p.containsKey(K)) {
            this.h = ((Integer) this.p.get(K)).intValue();
        } else {
            this.h = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.e == 0) {
            this.e = System.currentTimeMillis();
        }
    }

    private String F() {
        return "AdColonyPubServices";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        int a2 = this.q.a();
        if (this.p != null && this.p.containsKey(t)) {
            return ((Integer) this.p.get(t)).intValue();
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        if (this.p == null || !this.p.containsKey("notification")) {
            return null;
        }
        return (String) this.p.get("notification");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        int g = this.q.g();
        if (this.p != null && this.p.containsKey("position_type")) {
            return ((Integer) this.p.get("position_type")).intValue();
        }
        return g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        int h = this.q.h();
        if (this.p != null && this.p.containsKey("animation_in_type")) {
            return ((Integer) this.p.get("animation_in_type")).intValue();
        }
        return h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        int b2 = this.q.b();
        if (this.p != null && this.p.containsKey(u)) {
            return ((Integer) this.p.get(u)).intValue();
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        int i = this.q.i();
        if (this.p != null && this.p.containsKey("animation_out_type")) {
            return ((Integer) this.p.get("animation_out_type")).intValue();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        int c2 = this.q.c();
        if (this.p != null && this.p.containsKey(v)) {
            return ((Integer) this.p.get(v)).intValue();
        }
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        int f = this.q.f();
        if (this.p != null && this.p.containsKey("toast_default_width")) {
            return ((Integer) this.p.get("toast_default_width")).intValue();
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        int e = this.q.e();
        if (this.p != null && this.p.containsKey("toast_default_height")) {
            return ((Integer) this.p.get("toast_default_height")).intValue();
        }
        return e;
    }

    int k() {
        int t2 = this.q.t();
        if (this.p != null && this.p.containsKey(E)) {
            return ((Integer) this.p.get(E)).intValue();
        }
        return t2;
    }

    String l() {
        String u2 = this.q.u();
        if (this.p != null && this.p.containsKey("modal_background_rgba")) {
            return (String) this.p.get("modal_background_rgba");
        }
        return u2;
    }

    Map<String, Object> m() {
        HashMap hashMap = new HashMap();
        if (this.p != null && this.p.containsKey(H)) {
            return (Map) this.p.get(H);
        }
        return hashMap;
    }

    Map<String, Object> n() {
        if (this.i == null) {
            this.i = new HashMap();
        }
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Animation a(int i) {
        switch (i) {
            case 1:
                return T;
            case 2:
                return U;
            case 4:
                return V;
            case 8:
                return W;
            case 16:
                return R;
            default:
                return o;
        }
    }

    String a(a aVar) {
        switch (aVar) {
            case NONE:
                return "NONE";
            case UNKNOWN:
                return "UNKNOWN";
            case USER_SWIPE:
                return "USER_SWIPE";
            case USER_SWIPE_LEFT:
                return "USER_SWIPE_LEFT";
            case USER_SWIPE_RIGHT:
                return "USER_SWIPE_RIGHT";
            case USER_SWIPE_UP:
                return "USER_SWIPE_UP";
            case USER_SWIPE_DOWN:
                return "USER_SWIPE_DOWN";
            case USER_CLOSE_BUTTON:
                return "USER_CLOSE_BUTTON";
            case USER_TAP_BACKGROUND:
                return "USER_TAP_BACKGROUND";
            case REDIRECT_TO_CATALOG:
                return "REDIRECT_TO_CATALOG";
            case DEV_REDEMPTION:
                return "DEV_REDEMPTION";
            case NATURAL_TIMEOUT:
                return "NATURAL_TIMEOUT";
            case FROM_JS:
                return "FROM_JS";
            case HARDWARE_BACK_BUTTON:
                return "HARDWARE_BACK_BUTTON";
            case ACTIVITY_HIDDEN:
                return "ACTIVITY_HIDDEN";
            default:
                return "INVALID";
        }
    }

    int o() {
        if (this.p == null || !this.p.containsKey("scaling_type")) {
            return 0;
        }
        return ((Integer) this.p.get("scaling_type")).intValue();
    }

    String b(int i) {
        String str = "";
        if (i == 0) {
            str = "NONE";
        } else {
            if ((i & 2) != 0) {
                str = str + "HEIGHT ";
            }
            if ((i & 1) != 0) {
                str = str + "WIDTH ";
            }
        }
        return str.trim();
    }

    int p() {
        if (this.p == null || !this.p.containsKey("reward_type")) {
            return -1;
        }
        return ((Integer) this.p.get("reward_type")).intValue();
    }

    String c(int i) {
        switch (i) {
            case 0:
                return "IAP_REWARD";
            case 1:
                return "CUSTOM_REWARD";
            case 2:
                return "ANNOUNCEMENT";
            case 3:
                return "SHOW_BADGE";
            case 4:
                return "ACTIVITY_COMPLETE";
            case 5:
                return "VIP";
            default:
                return "INVALID";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String q() {
        if (this.p == null || !this.p.containsKey(s)) {
            return "";
        }
        return (String) this.p.get(s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int r() {
        if (this.p == null || !this.p.containsKey("display_type")) {
            return -1;
        }
        return ((Integer) this.p.get("display_type")).intValue();
    }

    String d(int i) {
        switch (i) {
            case 0:
                return "MODAL";
            case 1:
                return "TOAST";
            case 2:
                return "NOT_SHOWN";
            default:
                return "INVALID";
        }
    }

    String e(int i) {
        switch (i) {
            case 0:
                return "NONE";
            case 1:
                return "TOP_LEFT";
            case 2:
                return "TOP_CENTER";
            case 3:
                return "TOP_RIGHT";
            case 4:
                return "BOTTOM_LEFT";
            case 5:
                return "BOTTOM_CENTER";
            case 6:
                return "BOTTOM_RIGHT";
            case 7:
                return "CENTER_LEFT";
            case 8:
                return "CENTER";
            case 9:
                return "CENTER_RIGHT";
            default:
                return "INVALID";
        }
    }

    String f(int i) {
        switch (i) {
            case 0:
                return "NONE";
            case 1:
                return "SLIDE_DOWN";
            case 2:
                return "SLIDE_RIGHT";
            case 4:
                return "SLIDE_LEFT";
            case 8:
                return "SLIDE_UP";
            case 16:
                return "FADE";
            default:
                return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> s() {
        HashMap hashMap = new HashMap();
        hashMap.put(r, Long.valueOf(this.c));
        hashMap.put(s, q());
        hashMap.put(t, Integer.valueOf(b()));
        hashMap.put(u, Integer.valueOf(f()));
        hashMap.put(v, Integer.valueOf(h()));
        hashMap.put("width", Integer.valueOf(i()));
        hashMap.put("height", Integer.valueOf(j()));
        hashMap.put("type", c(p()));
        hashMap.put(z, d(r()));
        hashMap.put(A, e(d()));
        hashMap.put(B, f(e()));
        hashMap.put(C, f(g()));
        hashMap.put(D, b(o()));
        hashMap.put(E, Integer.valueOf(k()));
        hashMap.put(F, l());
        hashMap.put(G, n());
        hashMap.put(H, m());
        hashMap.put(I, a(this.f1339a));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Animation g(int i) {
        switch (i) {
            case 1:
                return n;
            case 2:
                return k;
            case 4:
                return l;
            case 8:
                return m;
            case 16:
                return S;
            default:
                return o;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(d dVar) {
        this.j = dVar;
    }

    d t() {
        return this.j;
    }

    long u() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v() {
        long currentTimeMillis = System.currentTimeMillis();
        this.d = (currentTimeMillis - this.f) + this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w() {
        this.c = System.currentTimeMillis() - this.e;
    }

    long x() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String y() {
        if (this.p != null && this.p.containsKey(H) && this.p.get(H) != null) {
            HashMap hashMap = (HashMap) this.p.get(H);
            if (hashMap.containsKey(J) && hashMap.get(J) != null) {
                return (String) hashMap.get(J);
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(int i) {
        this.h = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z2) {
        this.g = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean z() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean A() {
        int i = this.h & 4;
        cb.b("TEST-SWIPE", "result=" + i + " swipeDirections=" + this.h + ", DIR=4", true);
        return i != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean B() {
        int i = this.h & 2;
        cb.b("TEST-SWIPE", "result=" + i + " swipeDirections=" + this.h + ", DIR=2", true);
        return i != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean C() {
        int i = this.h & 8;
        cb.b("TEST-SWIPE", "result=" + i + " swipeDirections=" + this.h + ", DIR=8", true);
        return i != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean D() {
        int i = this.h & 1;
        cb.b("TEST-SWIPE", "result=" + i + " swipeDirections=" + this.h + ", DIR=1", true);
        return i != 0;
    }
}
