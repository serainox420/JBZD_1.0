package com.flurry.sdk;

import android.content.Context;
import android.os.SystemClock;
import com.flurry.sdk.ll;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class jx {

    /* renamed from: a  reason: collision with root package name */
    static final String f2942a = jx.class.getSimpleName();
    WeakReference<lk> b;
    private String i;
    private String j;
    private Map<String, String> k;
    private final kh<ll> g = new kh<ll>() { // from class: com.flurry.sdk.jx.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ll llVar) {
            ll llVar2 = llVar;
            if (jx.this.b == null || llVar2.b == jx.this.b.get()) {
                switch (AnonymousClass4.f2946a[llVar2.c - 1]) {
                    case 1:
                        final jx jxVar = jx.this;
                        lk lkVar = llVar2.b;
                        Context context = llVar2.f3027a.get();
                        jxVar.b = new WeakReference<>(lkVar);
                        jxVar.c = System.currentTimeMillis();
                        jxVar.d = SystemClock.elapsedRealtime();
                        if (lkVar == null || context == null) {
                            km.a(3, jx.f2942a, "Flurry session id cannot be created.");
                        } else {
                            km.a(3, jx.f2942a, "Flurry session id started:" + jxVar.c);
                            ll llVar3 = new ll();
                            llVar3.f3027a = new WeakReference<>(context);
                            llVar3.b = lkVar;
                            llVar3.c = ll.a.b;
                            llVar3.b();
                        }
                        jy.a().b(new ma() { // from class: com.flurry.sdk.jx.3
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                jp.a().e();
                            }
                        });
                        return;
                    case 2:
                        jx jxVar2 = jx.this;
                        llVar2.f3027a.get();
                        jxVar2.a();
                        return;
                    case 3:
                        jx jxVar3 = jx.this;
                        llVar2.f3027a.get();
                        jxVar3.e = SystemClock.elapsedRealtime() - jxVar3.d;
                        return;
                    case 4:
                        ki.a().b("com.flurry.android.sdk.FlurrySessionEvent", jx.this.g);
                        jx.b();
                        return;
                    default:
                        return;
                }
            }
        }
    };
    public volatile long c = 0;
    public volatile long d = 0;
    public volatile long e = -1;
    public volatile long f = 0;
    private volatile long h = 0;

    /* renamed from: com.flurry.sdk.jx$4  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2946a = new int[ll.a.a().length];

        static {
            try {
                f2946a[ll.a.f3028a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2946a[ll.a.c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2946a[ll.a.d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2946a[ll.a.e - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public jx() {
        ki.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.g);
        this.k = new LinkedHashMap<String, String>() { // from class: com.flurry.sdk.jx.2
            @Override // java.util.LinkedHashMap
            protected final boolean removeEldestEntry(Map.Entry<String, String> entry) {
                return size() > 10;
            }
        };
    }

    public final synchronized void a() {
        long j = lm.a().f3029a;
        if (j > 0) {
            this.f = (System.currentTimeMillis() - j) + this.f;
        }
    }

    public static void b() {
    }

    public final synchronized long c() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.d;
        if (elapsedRealtime <= this.h) {
            elapsedRealtime = this.h + 1;
            this.h = elapsedRealtime;
        }
        this.h = elapsedRealtime;
        return this.h;
    }

    public final synchronized void a(String str) {
        this.i = str;
    }

    public final synchronized void b(String str) {
        this.j = str;
    }

    public final synchronized String d() {
        return this.i;
    }

    public final synchronized String e() {
        return this.j;
    }

    public final synchronized void a(String str, String str2) {
        this.k.put(str, str2);
    }

    public final synchronized Map<String, String> f() {
        return this.k;
    }
}
