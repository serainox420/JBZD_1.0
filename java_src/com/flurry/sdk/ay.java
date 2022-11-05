package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ay {
    private static int k;

    /* renamed from: a  reason: collision with root package name */
    public final int f2466a;
    public final cs b;
    public int e;
    public String i;
    public final List<av> c = new ArrayList();
    private final Map<String, aw> l = new HashMap();
    final LinkedList<hh> d = new LinkedList<>();
    public boolean f = false;
    public boolean g = false;
    public boolean h = true;
    public HashMap<String, Object> j = null;

    public ay(cs csVar) {
        int i = 0;
        int i2 = k + 1;
        k = i2;
        this.f2466a = i2;
        this.b = csVar;
        while (true) {
            int i3 = i;
            if (i3 < csVar.f.size()) {
                this.c.add(new av());
                String str = csVar.f.get(i3).f;
                this.l.put(str, new aw(str));
                i = i3 + 1;
            } else {
                return;
            }
        }
    }

    public final az a(String str) {
        return this.l.get(str).f2462a;
    }

    public final cn a(int i) {
        List<cn> list = this.b.f;
        if (list == null || list.size() <= i) {
            return null;
        }
        return list.get(i);
    }

    public final bd b(int i) {
        bd[] values;
        for (bd bdVar : bd.values()) {
            String bdVar2 = bdVar.toString();
            cn a2 = a(i);
            if (bdVar2.equals(a2 != null ? a2.d.d : null)) {
                return bdVar;
            }
        }
        return bd.UNKNOWN;
    }

    public final String a() {
        return this.b.f.get(this.e).f;
    }

    public final fr c(int i) {
        if (i < 0 || i >= this.c.size()) {
            return null;
        }
        return this.c.get(i).f2461a;
    }

    public final List<de> b() {
        return this.b.z != null ? this.b.z.f : Collections.emptyList();
    }

    public final bd c() {
        return this.b != null ? b(this.e) : bd.UNKNOWN;
    }

    public final List<String> d(int i) {
        if (i < 0 || i >= this.c.size()) {
            return Collections.emptyList();
        }
        av avVar = this.c.get(i);
        if (avVar.c == null) {
            return Collections.emptyList();
        }
        return avVar.c;
    }

    public final boolean e(int i) {
        return !d(i).isEmpty();
    }

    public final synchronized hh d() {
        hh pop;
        synchronized (this.d) {
            pop = this.d.size() > 0 ? this.d.pop() : null;
        }
        return pop;
    }

    public final synchronized hh e() {
        hh peek;
        synchronized (this.d) {
            peek = this.d.size() > 0 ? this.d.peek() : null;
        }
        return peek;
    }
}
