package com.facebook.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.support.v4.content.l;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.u;
import com.facebook.ads.internal.adapters.v;
import com.facebook.ads.internal.adapters.w;
import com.facebook.ads.internal.f.e;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.j.a;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.ah;
import com.facebook.ads.internal.util.ak;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.util.d;
import com.facebook.ads.internal.util.q;
import com.facebook.ads.internal.view.m;
import com.facebook.ads.internal.view.r;
import com.facebook.ads.internal.view.s;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class NativeAd implements Ad {
    private static final com.facebook.ads.internal.c b = com.facebook.ads.internal.c.ADS;
    private static final String c = NativeAd.class.getSimpleName();
    private static WeakHashMap<View, WeakReference<NativeAd>> d = new WeakHashMap<>();
    private long A;
    private String B;
    private boolean C;

    /* renamed from: a  reason: collision with root package name */
    protected v f2031a;
    private final Context e;
    private final String f;
    private final String g;
    private final com.facebook.ads.internal.c.b h;
    private AdListener i;
    private ImpressionListener j;
    private DisplayAdController k;
    private volatile boolean l;
    private e m;
    private View n;
    private final List<View> o;
    private View.OnTouchListener p;
    private com.facebook.ads.internal.j.a q;
    private final ah r;
    private u s;
    private a t;
    private b u;
    private s v;
    private NativeAdView.Type w;
    private boolean x;
    private boolean y;
    @Deprecated
    private boolean z;

    /* loaded from: classes.dex */
    public static class Image {

        /* renamed from: a  reason: collision with root package name */
        private final String f2039a;
        private final int b;
        private final int c;

        public Image(String str, int i, int i2) {
            this.f2039a = str;
            this.b = i;
            this.c = i2;
        }

        public static Image fromJSONObject(JSONObject jSONObject) {
            String optString;
            if (jSONObject == null || (optString = jSONObject.optString("url")) == null) {
                return null;
            }
            return new Image(optString, jSONObject.optInt("width", 0), jSONObject.optInt("height", 0));
        }

        public int getHeight() {
            return this.c;
        }

        public String getUrl() {
            return this.f2039a;
        }

        public int getWidth() {
            return this.b;
        }
    }

    /* loaded from: classes.dex */
    public enum MediaCacheFlag {
        NONE(0),
        ICON(1),
        IMAGE(2),
        VIDEO(3);
        
        public static final EnumSet<MediaCacheFlag> ALL = EnumSet.allOf(MediaCacheFlag.class);

        /* renamed from: a  reason: collision with root package name */
        private final long f2040a;

        MediaCacheFlag(long j) {
            this.f2040a = j;
        }

        public long getCacheFlagValue() {
            return this.f2040a;
        }
    }

    /* loaded from: classes.dex */
    public static class Rating {

        /* renamed from: a  reason: collision with root package name */
        private final double f2041a;
        private final double b;

        public Rating(double d, double d2) {
            this.f2041a = d;
            this.b = d2;
        }

        public static Rating fromJSONObject(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            double optDouble = jSONObject.optDouble("value", 0.0d);
            double optDouble2 = jSONObject.optDouble("scale", 0.0d);
            if (optDouble != 0.0d && optDouble2 != 0.0d) {
                return new Rating(optDouble, optDouble2);
            }
            return null;
        }

        public double getScale() {
            return this.b;
        }

        public double getValue() {
            return this.f2041a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements View.OnClickListener, View.OnTouchListener {
        private int b;
        private int c;
        private int d;
        private int e;
        private float f;
        private float g;
        private int h;
        private int i;

        private a() {
        }

        private Map<String, String> a() {
            HashMap hashMap = new HashMap();
            hashMap.put("clickX", String.valueOf(this.b));
            hashMap.put("clickY", String.valueOf(this.c));
            hashMap.put("width", String.valueOf(this.d));
            hashMap.put("height", String.valueOf(this.e));
            hashMap.put("adPositionX", String.valueOf(this.f));
            hashMap.put("adPositionY", String.valueOf(this.g));
            hashMap.put("visibleWidth", String.valueOf(this.i));
            hashMap.put("visibleHeight", String.valueOf(this.h));
            return hashMap;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!NativeAd.this.r.d()) {
                Log.e("FBAudienceNetworkLog", "No touch data recorded, please ensure touch events reach the ad View by returning false if you intercept the event.");
            }
            int g = h.g(NativeAd.this.e);
            if (g >= 0 && NativeAd.this.r.c() < g) {
                if (!NativeAd.this.r.b()) {
                    Log.e("FBAudienceNetworkLog", "Ad cannot be clicked before it is viewed.");
                } else {
                    Log.e("FBAudienceNetworkLog", "Clicks happened too fast.");
                }
            } else if (!(view instanceof AdChoicesView) && NativeAd.this.r.a(h.h(NativeAd.this.e))) {
                Log.e("FBAudienceNetworkLog", "Clicks are too close to the border of the view.");
            } else {
                Map<String, String> a2 = TextUtils.isEmpty(NativeAd.this.h()) ? a() : NativeAd.this.r.e();
                HashMap hashMap = new HashMap();
                hashMap.put("touch", com.facebook.ads.internal.util.h.a(a2));
                if (NativeAd.this.w != null) {
                    hashMap.put("nti", String.valueOf(NativeAd.this.w.getValue()));
                }
                if (NativeAd.this.x) {
                    hashMap.put("nhs", String.valueOf(NativeAd.this.x));
                }
                NativeAd.this.q.a(hashMap);
                NativeAd.this.f2031a.b(hashMap);
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            NativeAd.this.r.a(motionEvent, NativeAd.this.n, view);
            if (motionEvent.getAction() == 0 && NativeAd.this.n != null && TextUtils.isEmpty(NativeAd.this.h())) {
                this.d = NativeAd.this.n.getWidth();
                this.e = NativeAd.this.n.getHeight();
                int[] iArr = new int[2];
                NativeAd.this.n.getLocationInWindow(iArr);
                this.f = iArr[0];
                this.g = iArr[1];
                Rect rect = new Rect();
                NativeAd.this.n.getGlobalVisibleRect(rect);
                this.i = rect.width();
                this.h = rect.height();
                int[] iArr2 = new int[2];
                view.getLocationInWindow(iArr2);
                this.b = (((int) motionEvent.getX()) + iArr2[0]) - iArr[0];
                this.c = (iArr2[1] + ((int) motionEvent.getY())) - iArr[1];
            }
            return NativeAd.this.p != null && NativeAd.this.p.onTouch(view, motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends BroadcastReceiver {
        private boolean b;

        private b() {
        }

        public void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.facebook.ads.native.impression:" + NativeAd.this.g);
            intentFilter.addAction("com.facebook.ads.native.click:" + NativeAd.this.g);
            l.a(NativeAd.this.e).a(this, intentFilter);
            this.b = true;
        }

        public void b() {
            if (!this.b) {
                return;
            }
            try {
                l.a(NativeAd.this.e).a(this);
            } catch (Exception e) {
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String str = intent.getAction().split(":")[0];
            if ("com.facebook.ads.native.impression".equals(str) && NativeAd.this.s != null) {
                NativeAd.this.s.a();
            } else if (!"com.facebook.ads.native.click".equals(str) || NativeAd.this.f2031a == null) {
            } else {
                HashMap hashMap = new HashMap();
                hashMap.put("mil", String.valueOf(true));
                NativeAd.this.f2031a.b(hashMap);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends com.facebook.ads.internal.adapters.b {
        private c() {
        }

        @Override // com.facebook.ads.internal.adapters.b
        public boolean a() {
            return false;
        }

        @Override // com.facebook.ads.internal.adapters.b
        public void d() {
            if (NativeAd.this.j != null) {
                NativeAd.this.j.onLoggingImpression(NativeAd.this);
            }
            if (!(NativeAd.this.i instanceof ImpressionListener) || NativeAd.this.i == NativeAd.this.j) {
                return;
            }
            ((ImpressionListener) NativeAd.this.i).onLoggingImpression(NativeAd.this);
        }

        @Override // com.facebook.ads.internal.adapters.b
        public void e() {
        }
    }

    public NativeAd(Context context, v vVar, e eVar) {
        this(context, null);
        this.m = eVar;
        this.l = true;
        this.f2031a = vVar;
    }

    public NativeAd(Context context, String str) {
        this.g = UUID.randomUUID().toString();
        this.o = new ArrayList();
        this.r = new ah();
        this.C = false;
        this.e = context;
        this.f = str;
        this.h = new com.facebook.ads.internal.c.b(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAd(NativeAd nativeAd) {
        this(nativeAd.e, null);
        this.m = nativeAd.m;
        this.l = true;
        this.f2031a = nativeAd.f2031a;
    }

    private void a(View view) {
        this.o.add(view);
        view.setOnClickListener(this.t);
        view.setOnTouchListener(this.t);
    }

    private void a(List<View> list, View view) {
        if ((view instanceof m) || (view instanceof AdChoicesView) || (view instanceof com.facebook.ads.internal.view.hscroll.b)) {
            return;
        }
        list.add(view);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            a(list, viewGroup.getChildAt(i));
        }
    }

    public static void downloadAndDisplayImage(Image image, ImageView imageView) {
        if (image == null || imageView == null) {
            return;
        }
        new q(imageView).a(image.getUrl());
    }

    private int getMinViewabilityPercentage() {
        if (this.m != null) {
            return this.m.e();
        }
        if (this.k != null && this.k.a() != null) {
            return this.k.a().e();
        }
        return 1;
    }

    private int i() {
        if (this.m != null) {
            return this.m.f();
        }
        if (this.k != null && this.k.a() != null) {
            return this.k.a().f();
        }
        return 0;
    }

    private int j() {
        if (this.m != null) {
            return this.m.g();
        }
        if (this.f2031a != null) {
            return this.f2031a.i();
        }
        if (this.k != null && this.k.a() != null) {
            return this.k.a().g();
        }
        return 0;
    }

    private int k() {
        if (this.m != null) {
            return this.m.h();
        }
        if (this.f2031a != null) {
            return this.f2031a.j();
        }
        if (this.k != null && this.k.a() != null) {
            return this.k.a().h();
        }
        return 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l() {
        return f() == ak.UNKNOWN ? this.z : f() == ak.ON;
    }

    private void logExternalClick(String str) {
        if (this.f2031a == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("eil", String.valueOf(true));
        hashMap.put("eil_source", str);
        this.f2031a.b(hashMap);
    }

    private void logExternalImpression() {
        if (this.s == null) {
            return;
        }
        this.s.a();
    }

    private void m() {
        for (View view : this.o) {
            view.setOnClickListener(null);
            view.setOnTouchListener(null);
        }
        this.o.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.f2031a == null || !this.f2031a.c()) {
            return;
        }
        this.u = new b();
        this.u.a();
        this.s = new u(this.e, new com.facebook.ads.internal.adapters.b() { // from class: com.facebook.ads.NativeAd.4
            @Override // com.facebook.ads.internal.adapters.b
            public boolean a() {
                return true;
            }
        }, this.q, this.f2031a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.C) {
            this.s = new u(this.e, new c() { // from class: com.facebook.ads.NativeAd.5
                @Override // com.facebook.ads.internal.adapters.b
                public boolean b() {
                    return true;
                }

                @Override // com.facebook.ads.internal.adapters.b
                public String c() {
                    return NativeAd.this.B;
                }
            }, this.q, this.f2031a);
        }
    }

    private void registerExternalLogReceiver(String str) {
        this.C = true;
        this.B = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v a() {
        return this.f2031a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(NativeAdView.Type type) {
        this.w = type;
    }

    protected void a(w wVar) {
        this.f2031a.a(wVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.x = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.v();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.y = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        if (!isAdLoaded() || TextUtils.isEmpty(this.f2031a.w())) {
            return null;
        }
        return this.h.c(this.f2031a.w());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.x();
    }

    @Override // com.facebook.ads.Ad
    public void destroy() {
        if (this.u != null) {
            this.u.b();
            this.u = null;
        }
        if (this.k != null) {
            this.k.d();
            this.k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.z();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak f() {
        return !isAdLoaded() ? ak.UNKNOWN : this.f2031a.y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<NativeAd> g() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.A();
    }

    public String getAdBody() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.p();
    }

    public String getAdCallToAction() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.q();
    }

    public Image getAdChoicesIcon() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.t();
    }

    public String getAdChoicesLinkUrl() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.u();
    }

    public Image getAdCoverImage() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.l();
    }

    public Image getAdIcon() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.k();
    }

    public AdNetwork getAdNetwork() {
        if (!isAdLoaded() || this.f2031a == null) {
            return null;
        }
        return this.f2031a.C();
    }

    public String getAdSocialContext() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.r();
    }

    @Deprecated
    public Rating getAdStarRating() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.s();
    }

    public String getAdSubtitle() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.o();
    }

    public String getAdTitle() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.n();
    }

    public NativeAdViewAttributes getAdViewAttributes() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.m();
    }

    public String getId() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.g;
    }

    @Override // com.facebook.ads.Ad
    public String getPlacementId() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String h() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.f2031a.B();
    }

    public boolean isAdLoaded() {
        return this.f2031a != null && this.f2031a.b();
    }

    public boolean isNativeConfigEnabled() {
        return isAdLoaded() && this.f2031a.f();
    }

    @Override // com.facebook.ads.Ad
    public void loadAd() {
        loadAd(EnumSet.of(MediaCacheFlag.NONE));
    }

    public void loadAd(final EnumSet<MediaCacheFlag> enumSet) {
        if (this.l) {
            throw new IllegalStateException("loadAd cannot be called more than once");
        }
        this.A = System.currentTimeMillis();
        this.l = true;
        this.k = new DisplayAdController(this.e, this.f, com.facebook.ads.internal.e.NATIVE_UNKNOWN, AdPlacementType.NATIVE, null, b, 1, true);
        this.k.a(new com.facebook.ads.internal.a() { // from class: com.facebook.ads.NativeAd.1
            @Override // com.facebook.ads.internal.a
            public void a() {
                if (NativeAd.this.i != null) {
                    NativeAd.this.i.onAdClicked(NativeAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(AdAdapter adAdapter) {
                if (NativeAd.this.k != null) {
                    NativeAd.this.k.c();
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(final v vVar) {
                d.a(com.facebook.ads.internal.util.c.a(c.b.LOADING_AD, AdPlacementType.NATIVE, System.currentTimeMillis() - NativeAd.this.A, null));
                if (vVar == null) {
                    return;
                }
                if (enumSet.contains(MediaCacheFlag.ICON) && vVar.k() != null) {
                    NativeAd.this.h.a(vVar.k().getUrl());
                }
                if (enumSet.contains(MediaCacheFlag.IMAGE)) {
                    if (vVar.l() != null) {
                        NativeAd.this.h.a(vVar.l().getUrl());
                    }
                    if (vVar.A() != null) {
                        for (NativeAd nativeAd : vVar.A()) {
                            if (nativeAd.getAdCoverImage() != null) {
                                NativeAd.this.h.a(nativeAd.getAdCoverImage().getUrl());
                            }
                        }
                    }
                }
                if (enumSet.contains(MediaCacheFlag.VIDEO) && !TextUtils.isEmpty(vVar.w())) {
                    NativeAd.this.h.b(vVar.w());
                }
                NativeAd.this.h.a(new com.facebook.ads.internal.c.a() { // from class: com.facebook.ads.NativeAd.1.1
                    @Override // com.facebook.ads.internal.c.a
                    public void a() {
                        NativeAd.this.f2031a = vVar;
                        NativeAd.this.n();
                        NativeAd.this.o();
                        if (NativeAd.this.i != null) {
                            NativeAd.this.i.onAdLoaded(NativeAd.this);
                        }
                    }
                });
                if (NativeAd.this.i == null || vVar.A() == null) {
                    return;
                }
                w wVar = new w() { // from class: com.facebook.ads.NativeAd.1.2
                    @Override // com.facebook.ads.internal.adapters.w
                    public void a(v vVar2) {
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void a(v vVar2, AdError adError) {
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void b(v vVar2) {
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void c(v vVar2) {
                        if (NativeAd.this.i != null) {
                            NativeAd.this.i.onAdClicked(NativeAd.this);
                        }
                    }
                };
                for (NativeAd nativeAd2 : vVar.A()) {
                    nativeAd2.a(wVar);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(com.facebook.ads.internal.b bVar) {
                if (NativeAd.this.i != null) {
                    NativeAd.this.i.onError(NativeAd.this, bVar.b());
                }
            }

            @Override // com.facebook.ads.internal.a
            public void b() {
                throw new IllegalStateException("Native ads manager their own impressions.");
            }
        });
        this.k.b();
    }

    public void registerViewForInteraction(View view) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, view);
        registerViewForInteraction(view, arrayList);
    }

    public void registerViewForInteraction(View view, List<View> list) {
        if (view == null) {
            throw new IllegalArgumentException("Must provide a View");
        }
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("Invalid set of clickable views");
        }
        if (!isAdLoaded()) {
            Log.e(c, "Ad not loaded");
            return;
        }
        if (this.n != null) {
            Log.w(c, "Native Ad was already registered with a View. Auto unregistering and proceeding.");
            unregisterView();
        }
        if (d.containsKey(view)) {
            Log.w(c, "View already registered with a NativeAd. Auto unregistering and proceeding.");
            d.get(view).get().unregisterView();
        }
        this.t = new a();
        this.n = view;
        if (view instanceof ViewGroup) {
            this.v = new s(view.getContext(), new r() { // from class: com.facebook.ads.NativeAd.2
                @Override // com.facebook.ads.internal.view.r
                public void a(int i) {
                    if (NativeAd.this.f2031a != null) {
                        NativeAd.this.f2031a.a(i);
                    }
                }
            });
            ((ViewGroup) view).addView(this.v);
        }
        for (View view2 : list) {
            a(view2);
        }
        this.f2031a.a(view, list);
        this.q = new com.facebook.ads.internal.j.a(this.n, getMinViewabilityPercentage(), i(), true, new a.AbstractC0098a() { // from class: com.facebook.ads.NativeAd.3
            @Override // com.facebook.ads.internal.j.a.AbstractC0098a
            public void a() {
                NativeAd.this.r.a();
                NativeAd.this.q.b();
                if (NativeAd.this.s == null) {
                    if (NativeAd.this.q == null) {
                        return;
                    }
                    NativeAd.this.q.b();
                    NativeAd.this.q = null;
                    return;
                }
                NativeAd.this.s.a(NativeAd.this.n);
                NativeAd.this.s.a(NativeAd.this.w);
                NativeAd.this.s.a(NativeAd.this.x);
                NativeAd.this.s.b(NativeAd.this.y);
                NativeAd.this.s.c(NativeAd.this.l());
                NativeAd.this.s.a();
            }
        });
        this.q.a(j());
        this.q.b(k());
        this.q.a();
        this.s = new u(this.e, new c(), this.q, this.f2031a);
        this.s.a(list);
        d.put(view, new WeakReference<>(this));
    }

    public void setAdListener(AdListener adListener) {
        this.i = adListener;
    }

    @Deprecated
    public void setImpressionListener(ImpressionListener impressionListener) {
        this.j = impressionListener;
    }

    @Deprecated
    public void setMediaViewAutoplay(boolean z) {
        this.z = z;
    }

    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.p = onTouchListener;
    }

    public void unregisterView() {
        if (this.n == null) {
            return;
        }
        if (!d.containsKey(this.n) || d.get(this.n).get() != this) {
            throw new IllegalStateException("View not registered with this NativeAd");
        }
        if ((this.n instanceof ViewGroup) && this.v != null) {
            ((ViewGroup) this.n).removeView(this.v);
            this.v = null;
        }
        if (this.f2031a != null) {
            this.f2031a.a();
        }
        d.remove(this.n);
        m();
        this.n = null;
        if (this.q != null) {
            this.q.b();
            this.q = null;
        }
        this.s = null;
    }
}
