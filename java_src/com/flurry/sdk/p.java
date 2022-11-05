package com.flurry.sdk;

import android.content.Context;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3071a = p.class.getSimpleName();
    private final SparseArray<r> b = new SparseArray<>();
    private final kd<Context, r> c = new kd<>(new WeakHashMap());

    public final synchronized void a(Context context, r rVar) {
        if (context != null && rVar != null) {
            this.b.put(rVar.e(), rVar);
            this.c.a((kd<Context, r>) context, (Context) rVar);
        }
    }

    public final synchronized boolean b(Context context, r rVar) {
        boolean z;
        if (context == null || rVar == null) {
            z = false;
        } else {
            this.b.remove(rVar.e());
            z = this.c.b(context, rVar);
        }
        return z;
    }

    public final synchronized r a(int i) {
        return this.b.get(i);
    }

    private synchronized List<r> d(Context context) {
        return context == null ? Collections.emptyList() : new ArrayList<>(this.c.a((kd<Context, r>) context));
    }

    public final synchronized void a(Context context) {
        if (context != null) {
            for (r rVar : this.c.a((kd<Context, r>) context)) {
                rVar.c();
            }
        }
    }

    public final synchronized void b(Context context) {
        if (context != null) {
            for (r rVar : this.c.a((kd<Context, r>) context)) {
                rVar.d();
            }
        }
    }

    public final synchronized void c(Context context) {
        if (context != null) {
            for (r rVar : d(context)) {
                rVar.a();
            }
        }
    }

    public final synchronized void a() {
        for (r rVar : this.c.d()) {
            rVar.n();
        }
    }

    public final synchronized void b() {
        int i = 0;
        for (r rVar : this.c.d()) {
            i = (!(rVar instanceof x) || !rVar.t()) ? i : i + 1;
        }
        km.a(3, f3071a, "Number of expired ads: " + i);
    }
}
