package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<v> f3095a = new SparseArray<>();
    private final kd<String, v> b = new kd<>();

    public final synchronized void a(Context context, String str, v vVar) {
        if (context != null) {
            if (!TextUtils.isEmpty(str) && vVar != null) {
                this.f3095a.put(vVar.b, vVar);
                this.b.a((kd<String, v>) str, (String) vVar);
            }
        }
    }

    public final synchronized boolean a(String str, v vVar) {
        boolean z;
        if (TextUtils.isEmpty(str) || vVar == null) {
            z = false;
        } else {
            this.f3095a.remove(vVar.b);
            z = this.b.b(str, vVar);
        }
        return z;
    }

    public final synchronized v a(int i) {
        return this.f3095a.get(i);
    }

    public final synchronized v a(String str) {
        v vVar = null;
        synchronized (this) {
            if (!TextUtils.isEmpty(str)) {
                List<v> a2 = this.b.a((kd<String, v>) str);
                if (!a2.isEmpty()) {
                    vVar = a2.get(a2.size() - 1);
                }
            }
        }
        return vVar;
    }

    public final synchronized v a(Context context, String str) {
        v vVar;
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                Iterator<v> it = this.b.a((kd<String, v>) str).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        vVar = null;
                        break;
                    }
                    vVar = it.next();
                    if (context.equals(vVar.f())) {
                        break;
                    }
                }
                if (vVar != null) {
                    this.b.b(str, vVar);
                    this.b.a((kd<String, v>) str, (String) vVar);
                }
            }
        }
        vVar = null;
        return vVar;
    }

    public final synchronized void b(Context context, String str) {
        v a2;
        if (context != null) {
            if (!TextUtils.isEmpty(str) && (a2 = a(context, str)) != null) {
                this.b.b(str, a2);
                a2.a();
            }
        }
    }

    public final synchronized void a(Context context) {
        if (context != null) {
            for (v vVar : this.b.d()) {
                if (context.equals(vVar.f())) {
                    vVar.c();
                }
            }
        }
    }

    public final synchronized void b(Context context) {
        if (context != null) {
            for (v vVar : this.b.d()) {
                if (context.equals(vVar.f())) {
                    vVar.d();
                }
            }
        }
    }

    public final synchronized void c(Context context) {
        if (context != null) {
            Iterator<v> it = this.b.d().iterator();
            while (it.hasNext()) {
                v next = it.next();
                if (context.equals(next.f())) {
                    it.remove();
                    next.a();
                }
            }
        }
    }

    public final synchronized void a() {
        for (v vVar : this.b.d()) {
            vVar.e.c();
        }
    }
}
