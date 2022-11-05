package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.facebook.ads.AdError;
import com.facebook.ads.AdNetwork;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.util.ak;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.util.g;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.madsdk.AdView;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class l extends v implements g.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2102a = l.class.getSimpleName();
    private String A;
    private String B;
    private ak C;
    private String D;
    private NativeAd.Image E;
    private String F;
    private String G;
    private NativeAdViewAttributes H;
    private List<NativeAd> I;
    private int J;
    private int K;
    private String L;
    private boolean M;
    private boolean N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private long R = 0;
    private c.a S = null;
    private com.facebook.ads.internal.g.f T;
    private Context b;
    private w c;
    private Uri d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private NativeAd.Image j;
    private NativeAd.Image k;
    private NativeAd.Rating l;
    private String m;
    private String n;
    private String o;
    private String p;
    private com.facebook.ads.internal.util.f q;
    private String r;
    private Collection<String> s;
    private boolean t;
    private boolean u;
    private boolean v;
    private int w;
    private int x;
    private int y;
    private int z;

    private boolean G() {
        return this.e != null && this.e.length() > 0 && this.h != null && this.h.length() > 0 && (this.j != null || this.M) && this.k != null;
    }

    private void H() {
        if (!this.Q) {
            if (this.T != null) {
                this.T.a(this.p);
            }
            this.Q = true;
        }
    }

    private void a(Context context, JSONObject jSONObject, String str, int i, int i2) {
        this.M = true;
        this.b = context;
        this.J = i;
        this.K = i2;
        a(jSONObject, str);
    }

    private void a(Map<String, String> map, final Map<String, String> map2) {
        try {
            final Map<String, String> c = c(map);
            new Handler().postDelayed(new Runnable() { // from class: com.facebook.ads.internal.adapters.l.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(l.this.L)) {
                        if (l.this.T == null) {
                            return;
                        }
                        l.this.T.a(l.this.n, map2, c);
                        return;
                    }
                    HashMap hashMap = new HashMap();
                    hashMap.putAll(map2);
                    hashMap.putAll(c);
                    if (l.this.T == null) {
                        return;
                    }
                    l.this.T.e(l.this.L, hashMap);
                }
            }, this.w * 1000);
        } catch (Exception e) {
        }
    }

    private void a(JSONObject jSONObject, String str) {
        JSONArray jSONArray = null;
        if (this.N) {
            throw new IllegalStateException("Adapter already loaded data");
        }
        if (jSONObject == null) {
            return;
        }
        com.facebook.ads.internal.util.h.a(this.b, "Audience Network Loaded");
        this.L = str;
        this.d = Uri.parse(com.facebook.ads.internal.util.h.a(jSONObject, "fbad_command"));
        this.e = com.facebook.ads.internal.util.h.a(jSONObject, "title");
        this.f = com.facebook.ads.internal.util.h.a(jSONObject, "subtitle");
        this.g = com.facebook.ads.internal.util.h.a(jSONObject, com.millennialmedia.NativeAd.COMPONENT_ID_BODY);
        this.h = com.facebook.ads.internal.util.h.a(jSONObject, "call_to_action");
        this.i = com.facebook.ads.internal.util.h.a(jSONObject, "social_context");
        this.j = NativeAd.Image.fromJSONObject(jSONObject.optJSONObject(com.intentsoftware.addapptr.ad.NativeAd.ICON_IMAGE_ASSET));
        this.k = NativeAd.Image.fromJSONObject(jSONObject.optJSONObject(AdView.DEFAULT_IMAGE_NAME));
        this.l = NativeAd.Rating.fromJSONObject(jSONObject.optJSONObject("star_rating"));
        this.m = com.facebook.ads.internal.util.h.a(jSONObject, "impression_report_url");
        this.n = com.facebook.ads.internal.util.h.a(jSONObject, "native_view_report_url");
        this.o = com.facebook.ads.internal.util.h.a(jSONObject, "click_report_url");
        this.p = com.facebook.ads.internal.util.h.a(jSONObject, "used_report_url");
        this.t = jSONObject.optBoolean("manual_imp");
        this.u = jSONObject.optBoolean("enable_view_log");
        this.v = jSONObject.optBoolean("enable_snapshot_log");
        this.w = jSONObject.optInt("snapshot_log_delay_second", 4);
        this.x = jSONObject.optInt("snapshot_compress_quality", 0);
        this.y = jSONObject.optInt("viewability_check_initial_delay", 0);
        this.z = jSONObject.optInt("viewability_check_interval", 1000);
        JSONObject optJSONObject = jSONObject.optJSONObject("ad_choices_icon");
        JSONObject optJSONObject2 = jSONObject.optJSONObject("native_ui_config");
        this.H = optJSONObject2 == null ? null : new NativeAdViewAttributes(optJSONObject2);
        if (optJSONObject != null) {
            this.E = NativeAd.Image.fromJSONObject(optJSONObject);
        }
        this.F = com.facebook.ads.internal.util.h.a(jSONObject, "ad_choices_link_url");
        this.G = com.facebook.ads.internal.util.h.a(jSONObject, "request_id");
        this.q = com.facebook.ads.internal.util.f.a(jSONObject.optString("invalidation_behavior"));
        this.r = com.facebook.ads.internal.util.h.a(jSONObject, "invalidation_report_url");
        try {
            jSONArray = new JSONArray(jSONObject.optString("detection_strings"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.s = com.facebook.ads.internal.util.g.a(jSONArray);
        this.A = com.facebook.ads.internal.util.h.a(jSONObject, BaseVideoPlayerActivity.VIDEO_URL);
        this.B = com.facebook.ads.internal.util.h.a(jSONObject, "video_mpd");
        if (!jSONObject.has("video_autoplay_enabled")) {
            this.C = ak.UNKNOWN;
        } else {
            this.C = jSONObject.optBoolean("video_autoplay_enabled") ? ak.ON : ak.OFF;
        }
        this.D = com.facebook.ads.internal.util.h.a(jSONObject, "video_report_url");
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("carousel");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                int length = optJSONArray.length();
                ArrayList arrayList = new ArrayList(length);
                for (int i = 0; i < length; i++) {
                    l lVar = new l();
                    lVar.a(this.b, optJSONArray.getJSONObject(i), str, i, length);
                    arrayList.add(new NativeAd(this.b, lVar, null));
                }
                this.I = arrayList;
            }
        } catch (JSONException e2) {
            Log.e(f2102a, "Unable to parse carousel data.", e2);
        }
        this.N = true;
        this.O = G();
    }

    private Map<String, String> c(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        if (map.containsKey(Promotion.ACTION_VIEW)) {
            hashMap.put(Promotion.ACTION_VIEW, map.get(Promotion.ACTION_VIEW));
        }
        if (map.containsKey("snapshot")) {
            hashMap.put("snapshot", map.get("snapshot"));
        }
        return hashMap;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public List<NativeAd> A() {
        if (!b()) {
            return null;
        }
        return this.I;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String B() {
        return this.L;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public AdNetwork C() {
        return AdNetwork.AN;
    }

    @Override // com.facebook.ads.internal.util.g.a
    public com.facebook.ads.internal.util.f D() {
        return this.q;
    }

    @Override // com.facebook.ads.internal.util.g.a
    public String E() {
        return this.r;
    }

    @Override // com.facebook.ads.internal.util.g.a
    public Collection<String> F() {
        return this.s;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a() {
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(int i) {
        if (b() && i == 0 && this.R > 0 && this.S != null) {
            com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(this.R, this.S, this.G));
            this.R = 0L;
            this.S = null;
        }
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(Context context, w wVar, com.facebook.ads.internal.g.f fVar, Map<String, Object> map) {
        this.b = context;
        this.c = wVar;
        this.T = fVar;
        JSONObject jSONObject = (JSONObject) map.get("data");
        a(jSONObject, com.facebook.ads.internal.util.h.a(jSONObject, "ct"));
        if (com.facebook.ads.internal.util.g.a(context, this)) {
            wVar.a(this, AdError.NO_FILL);
            return;
        }
        if (wVar != null) {
            wVar.a(this);
        }
        com.facebook.ads.internal.util.c.f2233a = this.G;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(View view, List<View> list) {
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(w wVar) {
        this.c = wVar;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(Map<String, String> map) {
        if (b() && !this.P) {
            if (this.c != null) {
                this.c.b(this);
            }
            HashMap hashMap = new HashMap();
            if (map != null) {
                hashMap.putAll(map);
            }
            if (!TextUtils.isEmpty(B())) {
                if (this.M) {
                    hashMap.put("cardind", String.valueOf(this.J));
                    hashMap.put("cardcnt", String.valueOf(this.K));
                }
                if (this.T != null) {
                    this.T.b(B(), hashMap);
                }
            } else if (this.T != null) {
                this.T.a(this.m);
            }
            if (e() || d()) {
                a(map, hashMap);
            }
            this.P = true;
        }
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void b(Map<String, String> map) {
        if (!b()) {
            return;
        }
        HashMap hashMap = new HashMap();
        if (map != null) {
            hashMap.putAll(map);
        }
        if (TextUtils.isEmpty(this.L) && this.T != null) {
            this.T.a(this.o, hashMap);
        }
        com.facebook.ads.internal.util.h.a(this.b, "Click logged");
        if (this.c != null) {
            this.c.c(this);
        }
        if (this.M) {
            hashMap.put("cardind", String.valueOf(this.J));
            hashMap.put("cardcnt", String.valueOf(this.K));
        }
        com.facebook.ads.internal.a.a a2 = com.facebook.ads.internal.a.b.a(this.b, this.L, this.d, hashMap);
        if (a2 == null) {
            return;
        }
        try {
            this.R = System.currentTimeMillis();
            this.S = a2.a();
            a2.b();
        } catch (Exception e) {
            Log.e(f2102a, "Error executing action", e);
        }
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean b() {
        return this.N && this.O;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean c() {
        return b() && this.t;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean d() {
        return b() && this.v;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean e() {
        return b() && this.u;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean f() {
        return b() && this.H != null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean g() {
        return true;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int h() {
        if (this.x < 0 || this.x > 100) {
            return 0;
        }
        return this.x;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int i() {
        return this.y;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int j() {
        return this.z;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image k() {
        if (!b()) {
            return null;
        }
        return this.j;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image l() {
        if (!b()) {
            return null;
        }
        return this.k;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAdViewAttributes m() {
        if (!b()) {
            return null;
        }
        return this.H;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String n() {
        if (!b()) {
            return null;
        }
        H();
        return this.e;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String o() {
        if (!b()) {
            return null;
        }
        H();
        return this.f;
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String p() {
        if (!b()) {
            return null;
        }
        H();
        return this.g;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String q() {
        if (!b()) {
            return null;
        }
        H();
        return this.h;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String r() {
        if (!b()) {
            return null;
        }
        H();
        return this.i;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Rating s() {
        if (!b()) {
            return null;
        }
        H();
        return this.l;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image t() {
        if (!b()) {
            return null;
        }
        return this.E;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String u() {
        if (!b()) {
            return null;
        }
        return this.F;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String v() {
        if (!b()) {
            return null;
        }
        return "AdChoices";
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String w() {
        if (!b()) {
            return null;
        }
        return this.A;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String x() {
        if (!b()) {
            return null;
        }
        return this.B;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public ak y() {
        return !b() ? ak.UNKNOWN : this.C;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String z() {
        return this.D;
    }
}
