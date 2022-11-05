package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class bg {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2481a = bg.class.getSimpleName();
    private final kd<String, bf> b = new kd<>();

    public final synchronized void a(bf bfVar) {
        if (bfVar != null) {
            if (bfVar.f2477a != null && !TextUtils.isEmpty(bfVar.b)) {
                a(bfVar.f2477a, bfVar.b);
                if (bfVar.f != -1) {
                    this.b.a((kd<String, bf>) bfVar.b, (String) bfVar);
                }
            }
        }
    }

    public final synchronized void a(da daVar, String str) {
        bf bfVar;
        if (daVar != null) {
            if (!TextUtils.isEmpty(str)) {
                Iterator<bf> it = this.b.a((kd<String, bf>) str).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        bfVar = null;
                        break;
                    }
                    bfVar = it.next();
                    if (bfVar.f2477a.equals(daVar)) {
                        break;
                    }
                }
                if (bfVar != null) {
                    this.b.b(str, bfVar);
                }
            }
        }
    }

    public final synchronized List<bf> a(String str) {
        return new ArrayList(this.b.a((kd<String, bf>) str));
    }

    private synchronized void b(String str) {
        this.b.b(str);
    }

    public final synchronized List<bf> a() {
        return new ArrayList(this.b.d());
    }

    public final synchronized void b() {
        for (bf bfVar : a()) {
            if (a(bfVar.d)) {
                km.a(3, f2481a, "expiring freq cap for id: " + bfVar.b + " capType:" + bfVar.f2477a + " expiration: " + bfVar.d + " epoch" + System.currentTimeMillis());
                b(bfVar.b);
            }
        }
    }

    public static boolean a(long j) {
        return j <= System.currentTimeMillis();
    }
}
