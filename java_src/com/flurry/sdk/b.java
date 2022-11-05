package com.flurry.sdk;

import android.content.Context;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final bc f2471a;
    public final Map<String, String> b;
    final Context c;
    public final r d;
    public final au e;

    public b(bc bcVar, Map<String, String> map, Context context, r rVar, au auVar) {
        this.f2471a = bcVar;
        this.b = map;
        this.c = context;
        this.d = rVar;
        this.e = auVar;
    }

    public final cs a() {
        return this.e.b.b;
    }

    public static bc a(String str) {
        bc[] values;
        for (bc bcVar : bc.values()) {
            if (bcVar.ag.equals(str)) {
                return bcVar;
            }
        }
        return bc.EV_UNKNOWN;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("event=").append(this.f2471a.toString());
        sb.append(",params=").append(this.b);
        if (this.e.i() != null) {
            sb.append(",adspace=").append(this.e.b.b.b);
        }
        return sb.toString();
    }
}
