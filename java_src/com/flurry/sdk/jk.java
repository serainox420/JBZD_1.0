package com.flurry.sdk;

import android.content.Context;
import com.flurry.sdk.jr;
/* loaded from: classes2.dex */
public class jk implements kp {
    public static synchronized jk a() {
        jk jkVar;
        synchronized (jk.class) {
            jkVar = (jk) jy.a().a(jk.class);
        }
        return jkVar;
    }

    @Override // com.flurry.sdk.kp
    public final void a(Context context) {
        lk.a(jx.class);
        ki.a();
        lt.a();
        lp.a();
        ka.a();
        jr.a();
        jl.a();
        js.a();
        jp.a();
        jl.a();
        ju.a();
        jo.a();
        jw.a();
    }

    public static String b() {
        jx h = h();
        if (h == null) {
            return null;
        }
        return Long.toString(h.c);
    }

    public static long c() {
        jx h = h();
        if (h == null) {
            return 0L;
        }
        return h.c;
    }

    public static long d() {
        jx h = h();
        if (h == null) {
            return 0L;
        }
        return h.d;
    }

    public static long e() {
        jx h = h();
        if (h == null) {
            return -1L;
        }
        return h.e;
    }

    public static long f() {
        jx h = h();
        if (h == null) {
            return 0L;
        }
        return h.c();
    }

    public static jr.a g() {
        return jr.a().b();
    }

    public static jx h() {
        lk b = lm.a().b();
        if (b == null) {
            return null;
        }
        return (jx) b.b(jx.class);
    }
}
