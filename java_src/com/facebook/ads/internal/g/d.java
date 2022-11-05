package com.facebook.ads.internal.g;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    protected final String f2158a;
    protected final double b;
    protected final double c;
    protected final String d;
    protected final Map<String, String> e;

    public d(Context context, String str, double d, String str2, Map<String, String> map) {
        this.f2158a = str;
        this.b = System.currentTimeMillis() / 1000.0d;
        this.c = d;
        this.d = str2;
        HashMap hashMap = new HashMap();
        if (map != null && !map.isEmpty()) {
            hashMap.putAll(map);
        }
        if (c()) {
            hashMap.put("analog", com.facebook.ads.internal.util.h.a(com.facebook.ads.internal.util.a.a()));
        }
        if (context != null) {
            hashMap.put("kgr", String.valueOf(com.facebook.ads.internal.util.h.b(context)));
        }
        this.e = a(hashMap);
    }

    public d(String str, double d, String str2, Map<String, String> map) {
        this(null, str, d, str2, map);
    }

    private static Map<String, String> a(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (value != null) {
                hashMap.put(key, value);
            }
        }
        return hashMap;
    }

    public abstract h a();

    public abstract String b();

    public abstract boolean c();

    public String d() {
        return this.f2158a;
    }

    public double e() {
        return this.b;
    }

    public double f() {
        return this.c;
    }

    public String g() {
        return this.d;
    }

    public Map<String, String> h() {
        return this.e;
    }

    public final boolean i() {
        return a() == h.IMMEDIATE;
    }
}
