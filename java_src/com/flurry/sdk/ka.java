package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class ka {

    /* renamed from: a  reason: collision with root package name */
    private static ka f2954a;
    private static final String b = ka.class.getSimpleName();
    private static final HashMap<String, Map<String, String>> c = new HashMap<>();

    public static synchronized ka a() {
        ka kaVar;
        synchronized (ka.class) {
            if (f2954a == null) {
                f2954a = new ka();
            }
            kaVar = f2954a;
        }
        return kaVar;
    }

    public final synchronized void a(String str, String str2, Map<String, String> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        if (map.size() >= 10) {
            km.e(b, "MaxOriginParams exceeded: " + map.size());
        } else {
            map.put("flurryOriginVersion", str2);
            synchronized (c) {
                if (c.size() >= 10 && !c.containsKey(str)) {
                    km.e(b, "MaxOrigins exceeded: " + c.size());
                } else {
                    c.put(str, map);
                }
            }
        }
    }

    public final synchronized HashMap<String, Map<String, String>> b() {
        HashMap<String, Map<String, String>> hashMap;
        synchronized (c) {
            hashMap = new HashMap<>(c);
        }
        return hashMap;
    }
}
