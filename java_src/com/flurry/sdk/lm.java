package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import com.flurry.sdk.kb;
import com.flurry.sdk.ll;
import com.flurry.sdk.lq;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class lm implements lq.a {
    private static final String b = lm.class.getSimpleName();
    private static lm f;

    /* renamed from: a  reason: collision with root package name */
    public long f3029a;
    private long g;
    private lk h;
    private final Map<Context, lk> c = new WeakHashMap();
    private final ln d = new ln();
    private final Object e = new Object();
    private kh<lo> i = new kh<lo>() { // from class: com.flurry.sdk.lm.1
        @Override // com.flurry.sdk.kh
        public final /* bridge */ /* synthetic */ void a(lo loVar) {
            lm.this.g();
        }
    };
    private kh<kb> j = new kh<kb>() { // from class: com.flurry.sdk.lm.2
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(kb kbVar) {
            kb kbVar2 = kbVar;
            Activity activity = kbVar2.f2955a.get();
            if (activity == null) {
                km.a(lm.b, "Activity has been destroyed, can't pass ActivityLifecycleEvent to adobject.");
                return;
            }
            switch (AnonymousClass5.f3034a[kbVar2.b.ordinal()]) {
                case 1:
                    km.a(3, lm.b, "Automatic onStartSession for context:" + kbVar2.f2955a);
                    lm.this.e(activity);
                    return;
                case 2:
                    km.a(3, lm.b, "Automatic onEndSession for context:" + kbVar2.f2955a);
                    lm.this.d(activity);
                    return;
                case 3:
                    km.a(3, lm.b, "Automatic onEndSession (destroyed) for context:" + kbVar2.f2955a);
                    lm.this.d(activity);
                    return;
                default:
                    return;
            }
        }
    };

    public static synchronized lm a() {
        lm lmVar;
        synchronized (lm.class) {
            if (f == null) {
                f = new lm();
            }
            lmVar = f;
        }
        return lmVar;
    }

    /* renamed from: com.flurry.sdk.lm$5  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3034a = new int[kb.a.values().length];

        static {
            try {
                f3034a[kb.a.kStarted.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3034a[kb.a.kStopped.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3034a[kb.a.kDestroyed.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private lm() {
        lp a2 = lp.a();
        this.f3029a = 0L;
        this.g = ((Long) a2.a("ContinueSessionMillis")).longValue();
        a2.a("ContinueSessionMillis", (lq.a) this);
        km.a(4, b, "initSettings, ContinueSessionMillis = " + this.g);
        ki.a().a("com.flurry.android.sdk.ActivityLifecycleEvent", this.j);
        ki.a().a("com.flurry.android.sdk.FlurrySessionTimerEvent", this.i);
    }

    private synchronized int f() {
        return this.c.size();
    }

    public final lk b() {
        lk lkVar;
        synchronized (this.e) {
            lkVar = this.h;
        }
        return lkVar;
    }

    public final synchronized void a(Context context) {
        if ((context instanceof Activity) && kc.a().b()) {
            km.a(3, b, "bootstrap for context:" + context);
            e(context);
        }
    }

    public final synchronized void b(Context context) {
        if (!kc.a().b() || !(context instanceof Activity)) {
            km.a(3, b, "Manual onStartSession for context:" + context);
            e(context);
        }
    }

    public final synchronized void c(Context context) {
        if (!kc.a().b() || !(context instanceof Activity)) {
            km.a(3, b, "Manual onEndSession for context:" + context);
            d(context);
        }
    }

    public final synchronized boolean c() {
        boolean z;
        if (b() == null) {
            km.a(2, b, "Session not found. No active session");
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    public final synchronized void d() {
        for (Map.Entry<Context, lk> entry : this.c.entrySet()) {
            ll llVar = new ll();
            llVar.f3027a = new WeakReference<>(entry.getKey());
            llVar.b = entry.getValue();
            llVar.c = ll.a.d;
            jk.a();
            llVar.d = jk.c();
            llVar.b();
        }
        this.c.clear();
        jy.a().b(new ma() { // from class: com.flurry.sdk.lm.3
            @Override // com.flurry.sdk.ma
            public final void a() {
                lm.this.g();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e(Context context) {
        if (this.c.get(context) != null) {
            if (kc.a().b()) {
                km.a(3, b, "Session already started with context:" + context);
            } else {
                km.e(b, "Session already started with context:" + context);
            }
        } else {
            this.d.a();
            lk b2 = b();
            if (b2 == null) {
                b2 = new lk();
                km.e(b, "Flurry session started for context:" + context);
                ll llVar = new ll();
                llVar.f3027a = new WeakReference<>(context);
                llVar.b = b2;
                llVar.c = ll.a.f3028a;
                llVar.b();
            }
            this.c.put(context, b2);
            synchronized (this.e) {
                this.h = b2;
            }
            km.e(b, "Flurry session resumed for context:" + context);
            ll llVar2 = new ll();
            llVar2.f3027a = new WeakReference<>(context);
            llVar2.b = b2;
            llVar2.c = ll.a.c;
            llVar2.b();
            this.f3029a = 0L;
        }
    }

    final synchronized void d(Context context) {
        lk remove = this.c.remove(context);
        if (remove == null) {
            if (kc.a().b()) {
                km.a(3, b, "Session cannot be ended, session not found for context:" + context);
            } else {
                km.e(b, "Session cannot be ended, session not found for context:" + context);
            }
        } else {
            km.e(b, "Flurry session paused for context:" + context);
            ll llVar = new ll();
            llVar.f3027a = new WeakReference<>(context);
            llVar.b = remove;
            jk.a();
            llVar.d = jk.c();
            llVar.c = ll.a.d;
            llVar.b();
            if (f() == 0) {
                this.d.a(this.g);
                this.f3029a = System.currentTimeMillis();
            } else {
                this.f3029a = 0L;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g() {
        int f2 = f();
        if (f2 > 0) {
            km.a(5, b, "Session cannot be finalized, sessionContextCount:" + f2);
        } else {
            final lk b2 = b();
            if (b2 == null) {
                km.a(5, b, "Session cannot be finalized, current session not found");
            } else {
                km.e(b, "Flurry session ended");
                ll llVar = new ll();
                llVar.b = b2;
                llVar.c = ll.a.e;
                jk.a();
                llVar.d = jk.c();
                llVar.b();
                jy.a().b(new ma() { // from class: com.flurry.sdk.lm.4
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        lm.a(lm.this, b2);
                    }
                });
            }
        }
    }

    @Override // com.flurry.sdk.lq.a
    public final void a(String str, Object obj) {
        if (str.equals("ContinueSessionMillis")) {
            this.g = ((Long) obj).longValue();
            km.a(4, b, "onSettingUpdate, ContinueSessionMillis = " + this.g);
            return;
        }
        km.a(6, b, "onSettingUpdate internal error!");
    }

    static /* synthetic */ void a(lm lmVar, lk lkVar) {
        synchronized (lmVar.e) {
            if (lmVar.h == lkVar) {
                lmVar.h = null;
            }
        }
    }
}
