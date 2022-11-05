package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ko {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2975a = ko.class.getSimpleName();
    private static final Map<Class<? extends kp>, kn> b = new LinkedHashMap();
    private final Map<Class<? extends kp>, kp> c = new LinkedHashMap();

    public static void a(Class<? extends kp> cls) {
        if (cls != null) {
            synchronized (b) {
                b.put(cls, new kn(cls));
            }
        }
    }

    public final synchronized void a(Context context) {
        ArrayList<kn> arrayList;
        if (context == null) {
            km.a(5, f2975a, "Null context.");
        } else {
            synchronized (b) {
                arrayList = new ArrayList(b.values());
            }
            for (kn knVar : arrayList) {
                try {
                    if (knVar.f2974a != null && Build.VERSION.SDK_INT >= knVar.b) {
                        kp newInstance = knVar.f2974a.newInstance();
                        newInstance.a(context);
                        this.c.put(knVar.f2974a, newInstance);
                    }
                } catch (Exception e) {
                    km.a(5, f2975a, "Flurry Module for class " + knVar.f2974a + " is not available:", e);
                }
            }
            lm.a().a(context);
            kc.a();
        }
    }

    public final kp b(Class<? extends kp> cls) {
        kp kpVar;
        if (cls == null) {
            return null;
        }
        synchronized (this.c) {
            kpVar = this.c.get(cls);
        }
        if (kpVar == null) {
            throw new IllegalStateException("Module was not registered/initialized. " + cls);
        }
        return kpVar;
    }
}
