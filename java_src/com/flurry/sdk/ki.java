package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class ki {

    /* renamed from: a  reason: collision with root package name */
    private static ki f2962a = null;
    private final kd<String, kv<kh<?>>> b = new kd<>();
    private final kd<kv<kh<?>>, String> c = new kd<>();

    public static synchronized ki a() {
        ki kiVar;
        synchronized (ki.class) {
            if (f2962a == null) {
                f2962a = new ki();
            }
            kiVar = f2962a;
        }
        return kiVar;
    }

    private ki() {
    }

    public final synchronized void a(String str, kh<?> khVar) {
        boolean z = false;
        synchronized (this) {
            if (!TextUtils.isEmpty(str) && khVar != null) {
                kv<kh<?>> kvVar = new kv<>(khVar);
                List<kv<kh<?>>> a2 = this.b.a((kd<String, kv<kh<?>>>) str, false);
                if (a2 != null) {
                    z = a2.contains(kvVar);
                }
                if (!z) {
                    this.b.a((kd<String, kv<kh<?>>>) str, (String) kvVar);
                    this.c.a((kd<kv<kh<?>>, String>) kvVar, (kv<kh<?>>) str);
                }
            }
        }
    }

    public final synchronized void b(String str, kh<?> khVar) {
        if (!TextUtils.isEmpty(str)) {
            kv<kh<?>> kvVar = new kv<>(khVar);
            this.b.b(str, kvVar);
            this.c.b(kvVar, str);
        }
    }

    public final synchronized void a(kh<?> khVar) {
        if (khVar != null) {
            kv<kh<?>> kvVar = new kv<>(khVar);
            for (String str : this.c.a((kd<kv<kh<?>>, String>) kvVar)) {
                this.b.b(str, kvVar);
            }
            this.c.b(kvVar);
        }
    }

    public final synchronized int a(String str) {
        return TextUtils.isEmpty(str) ? 0 : this.b.a((kd<String, kv<kh<?>>>) str).size();
    }

    private synchronized List<kh<?>> b(String str) {
        List<kh<?>> list;
        if (TextUtils.isEmpty(str)) {
            list = Collections.emptyList();
        } else {
            ArrayList arrayList = new ArrayList();
            Iterator<kv<kh<?>>> it = this.b.a((kd<String, kv<kh<?>>>) str).iterator();
            while (it.hasNext()) {
                kh khVar = (kh) it.next().get();
                if (khVar == null) {
                    it.remove();
                } else {
                    arrayList.add(khVar);
                }
            }
            list = arrayList;
        }
        return list;
    }

    public final void a(final kg kgVar) {
        if (kgVar != null) {
            for (final kh<?> khVar : b(kgVar.a())) {
                jy.a().b(new ma() { // from class: com.flurry.sdk.ki.1
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        khVar.a(kgVar);
                    }
                });
            }
        }
    }
}
