package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class au implements Comparable<au> {
    private static final String f = au.class.getName();
    private static int g;

    /* renamed from: a  reason: collision with root package name */
    public kd<String, ay> f2460a;
    public ay b;
    public String c;
    public String d;
    public gq e;
    private final int h;

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(au auVar) {
        au auVar2 = auVar;
        if (auVar2 == null) {
            throw new NullPointerException("another cannot be null");
        }
        if (this.h > auVar2.h) {
            return 1;
        }
        if (this.h < auVar2.h) {
            return -1;
        }
        return 0;
    }

    public au(kd<String, ay> kdVar) {
        this.f2460a = new kd<>();
        if (kdVar.e() == 0) {
            throw new IllegalArgumentException("Ad units map is empty. Cannot create ad controller.");
        }
        int i = g + 1;
        g = i;
        this.h = i;
        this.f2460a = kdVar;
        Iterator<String> it = kdVar.c().iterator();
        if (it.hasNext()) {
            this.b = this.f2460a.a((kd<String, ay>) it.next()).get(0);
            this.e = new gq(this.b.b.p);
        }
    }

    public au(cs csVar) {
        this.f2460a = new kd<>();
        int i = g + 1;
        g = i;
        this.h = i;
        ay ayVar = new ay(csVar);
        this.f2460a.a((kd<String, ay>) csVar.b, (String) ayVar);
        this.b = ayVar;
        this.e = new gq(csVar.p);
    }

    public final void a(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            for (ay ayVar : this.f2460a.a((kd<String, ay>) str)) {
                if (ayVar.f2466a == i) {
                    this.b = ayVar;
                    return;
                }
            }
        }
    }

    public final synchronized hh k() {
        return this.b.d();
    }

    public final synchronized hh l() {
        return this.b.e();
    }

    public final az a() {
        ay ayVar = this.b;
        return ayVar.a(ayVar.a());
    }

    public final void a(int i) {
        this.b.e = i;
    }

    public final bd b() {
        ay ayVar = this.b;
        return ayVar.b(ayVar.e);
    }

    public final fr c() {
        ay ayVar = this.b;
        return ayVar.c(ayVar.e);
    }

    public final fr b(int i) {
        return this.b.c(i);
    }

    public final void a(int i, fr frVar) {
        ay ayVar = this.b;
        if (i < 0 || i >= ayVar.c.size()) {
            return;
        }
        ayVar.c.get(i).f2461a = frVar;
    }

    public final cn d() {
        ay ayVar = this.b;
        if (ayVar.b != null) {
            return ayVar.a(ayVar.e);
        }
        return null;
    }

    public final boolean e() {
        if (this.b.c().equals(bd.TAKEOVER)) {
            return true;
        }
        return false;
    }

    public final gp f() {
        ay ayVar = this.b;
        int i = ayVar.e;
        if (i < 0 || i >= ayVar.c.size()) {
            return null;
        }
        return ayVar.c.get(i).b;
    }

    public final void a(gp gpVar) {
        ay ayVar = this.b;
        int i = ayVar.e;
        if (i < 0 || i >= ayVar.c.size()) {
            return;
        }
        ayVar.c.get(i).b = gpVar;
    }

    public final List<String> c(int i) {
        return this.b.d(i);
    }

    public final boolean g() {
        ay ayVar = this.b;
        List<cn> list = ayVar.b.f;
        for (int i = 0; i < list.size(); i++) {
            ah a2 = ah.a(list.get(i).g);
            if ((ah.CACHE_ONLY.equals(a2) || ah.CACHE_OR_STREAM.equals(a2)) && ayVar.e(i)) {
                return true;
            }
        }
        return false;
    }

    public final boolean h() {
        ay ayVar = this.b;
        List<cn> list = ayVar.b.f;
        for (int i = 0; i < list.size(); i++) {
            if (ah.CACHE_ONLY.equals(ah.a(list.get(i).g)) && ayVar.e(i)) {
                return true;
            }
        }
        return false;
    }

    public final String i() {
        return this.b.b.b;
    }

    public final void j() {
        this.b.f = true;
    }

    public final void a(boolean z) {
        this.b.g = z;
    }

    public final void m() {
        ay ayVar = this.b;
        synchronized (ayVar.d) {
            ayVar.d.clear();
        }
        ayVar.e = 0;
    }

    public final void a(hh hhVar) {
        boolean z;
        hh peek;
        ay ayVar = this.b;
        synchronized (ayVar.d) {
            if (ayVar.d.size() > 0 && (peek = ayVar.d.peek()) != null && peek.equals(hhVar)) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                ayVar.d.push(hhVar);
            }
        }
    }

    public final boolean n() {
        ay ayVar = this.b;
        return ayVar.b.d > 0 && System.currentTimeMillis() >= ayVar.b.d;
    }

    public final boolean a(String str) {
        ay ayVar = this.b;
        av avVar = ayVar.c.get(ayVar.e);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return !avVar.e.containsKey(str) || !avVar.e.get(str).equals(Boolean.TRUE);
    }

    public final void b(String str) {
        ay ayVar = this.b;
        av avVar = ayVar.c.get(ayVar.e);
        if (TextUtils.isEmpty(str) || !avVar.e.containsKey(str)) {
            return;
        }
        avVar.e.put(str, Boolean.TRUE);
    }

    public final void c(String str) {
        ay ayVar = this.b;
        av avVar = ayVar.c.get(ayVar.e);
        if (TextUtils.isEmpty(str) || !avVar.e.containsKey(str)) {
            return;
        }
        avVar.e.put(str, Boolean.FALSE);
    }

    public final void b(boolean z) {
        this.b.h = z;
    }
}
