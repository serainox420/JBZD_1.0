package com.adcolony.sdk;

import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class at {

    /* renamed from: a  reason: collision with root package name */
    ai f1078a;
    boolean i;
    boolean j;
    x b = new x().b();
    float[] c = new float[16];
    x d = new x().b();
    x e = new x().b();
    x f = new x().b();
    ArrayList<x> g = new ArrayList<>();
    ArrayList<x> h = new ArrayList<>();
    boolean k = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(ai aiVar) {
        this.f1078a = aiVar;
    }

    void a() {
        this.f1078a.d();
        this.e.b();
        this.i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a();
        do {
        } while (d());
    }

    x c() {
        int size = this.h.size();
        return size == 0 ? new x() : this.h.remove(size - 1);
    }

    boolean d() {
        int size = this.g.size();
        if (size == 0) {
            return false;
        }
        this.f1078a.d();
        this.j = true;
        this.h.add(this.g.remove(size - 1));
        this.e.b();
        return true;
    }

    void e() {
        this.f1078a.d();
        this.g.add(c().b(this.e));
        this.e.b();
        this.j = true;
        this.i = true;
    }

    void a(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        double d10;
        double d11;
        boolean z;
        boolean z2;
        double d12;
        double d13;
        this.f1078a.d();
        double d14 = d3 / d8;
        double d15 = d4 / d9;
        if (d14 >= 0.0d) {
            d10 = d14;
            d11 = 1.0d;
            z = false;
        } else {
            d10 = -d14;
            d11 = -1.0d;
            z = true;
        }
        if (d15 >= 0.0d) {
            z2 = false;
            d12 = d15;
            d13 = 1.0d;
        } else {
            z2 = true;
            d12 = -d15;
            d13 = -1.0d;
        }
        double d16 = d5 * d3;
        double d17 = d6 * d4;
        if (z || z2) {
            d16 -= d3 / 2.0d;
            d17 -= d4 / 2.0d;
            b((-d3) / 2.0d, (-d4) / 2.0d);
        }
        double d18 = d16;
        double cos = Math.cos(d7);
        double sin = Math.sin(d7);
        this.e.a(cos * d10 * d11, sin * d10 * d11, 0.0d, 0.0d, (-sin) * d12 * d13, d13 * cos * d12, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, (d - ((d10 * d18) * cos)) + (sin * d12 * d17), (d2 - ((d18 * d10) * sin)) - (d17 * (d12 * cos)), 0.0d, 1.0d);
    }

    void a(double d) {
        this.f1078a.d();
        this.e.b(d);
    }

    void b(double d) {
        this.f1078a.d();
        this.e.a(d);
    }

    void a(double d, double d2) {
        this.f1078a.d();
        this.e.a(d, d2, 1.0d);
    }

    void a(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
        this.f1078a.d();
        this.e.b(d, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16);
        this.i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(x xVar) {
        this.f1078a.d();
        this.d.b(xVar);
        this.k = true;
    }

    void f() {
        b();
    }

    void b(double d, double d2) {
        this.e.b(d, d2, 0.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        if (this.j || this.k) {
            this.k = false;
            if (this.j) {
                this.j = false;
                this.f.b();
                for (int size = this.g.size() - 1; size >= 0; size--) {
                    this.f.a(this.g.get(size));
                }
            }
            this.b.b();
            this.b.a(this.e);
            this.b.a(this.f);
            this.b.a(this.d);
            this.b.a(this.c);
        }
    }
}
