package com.facebook.ads.internal.adapters;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final b f2076a;
    protected final com.facebook.ads.internal.j.a b;
    private final Context c;
    private boolean d;

    public a(Context context, b bVar, com.facebook.ads.internal.j.a aVar) {
        this.c = context;
        this.f2076a = bVar;
        this.b = aVar;
    }

    public final void a() {
        if (this.d) {
            return;
        }
        if (this.f2076a != null) {
            this.f2076a.d();
        }
        HashMap hashMap = new HashMap();
        if (this.b != null) {
            this.b.a(hashMap);
        }
        a(hashMap);
        this.d = true;
        com.facebook.ads.internal.util.h.a(this.c, "Impression logged");
        if (this.f2076a == null) {
            return;
        }
        this.f2076a.e();
    }

    protected abstract void a(Map<String, String> map);
}
