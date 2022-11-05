package com.facebook.ads.internal.util;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Long> f2237a = new ConcurrentHashMap();
    private static Map<String, Long> b = new ConcurrentHashMap();
    private static Map<String, String> c = new ConcurrentHashMap();

    private static long a(String str, com.facebook.ads.internal.f.c cVar) {
        if (f2237a.containsKey(str)) {
            return f2237a.get(str).longValue();
        }
        switch (cVar) {
            case BANNER:
                return 15000L;
            case INTERSTITIAL:
            case NATIVE:
            default:
                return -1000L;
        }
    }

    public static void a(long j, com.facebook.ads.internal.f.f fVar) {
        f2237a.put(d(fVar), Long.valueOf(j));
    }

    public static void a(String str, com.facebook.ads.internal.f.f fVar) {
        c.put(d(fVar), str);
    }

    public static boolean a(com.facebook.ads.internal.f.f fVar) {
        String d = d(fVar);
        if (!b.containsKey(d)) {
            return false;
        }
        return System.currentTimeMillis() - b.get(d).longValue() < a(d, fVar.b());
    }

    public static void b(com.facebook.ads.internal.f.f fVar) {
        b.put(d(fVar), Long.valueOf(System.currentTimeMillis()));
    }

    public static String c(com.facebook.ads.internal.f.f fVar) {
        return c.get(d(fVar));
    }

    private static String d(com.facebook.ads.internal.f.f fVar) {
        int i = 0;
        Object[] objArr = new Object[6];
        objArr[0] = fVar.a();
        objArr[1] = fVar.b();
        objArr[2] = fVar.e;
        objArr[3] = Integer.valueOf(fVar.c() == null ? 0 : fVar.c().getHeight());
        if (fVar.c() != null) {
            i = fVar.c().getWidth();
        }
        objArr[4] = Integer.valueOf(i);
        objArr[5] = Integer.valueOf(fVar.d());
        return String.format("%s:%s:%s:%d:%d:%d", objArr);
    }
}
