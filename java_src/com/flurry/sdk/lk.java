package com.flurry.sdk;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class lk {
    private static final List<Class<?>> b = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    private final String f3026a = lk.class.getSimpleName();
    private final Map<Class<?>, Object> c = new LinkedHashMap();

    public static void a(Class<?> cls) {
        synchronized (b) {
            b.add(cls);
        }
    }

    public lk() {
        ArrayList<Class<?>> arrayList;
        synchronized (b) {
            arrayList = new ArrayList(b);
        }
        for (Class<?> cls : arrayList) {
            try {
                Object newInstance = cls.newInstance();
                synchronized (this.c) {
                    this.c.put(cls, newInstance);
                }
            } catch (Exception e) {
                km.a(5, this.f3026a, "Module data " + cls + " is not available:", e);
            }
        }
    }

    public final Object b(Class<?> cls) {
        Object obj;
        synchronized (this.c) {
            obj = this.c.get(cls);
        }
        return obj;
    }
}
