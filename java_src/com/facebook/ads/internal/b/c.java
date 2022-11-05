package com.facebook.ads.internal.b;

import java.io.Serializable;
/* loaded from: classes.dex */
public class c implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private a f2116a;
    private a b;

    /* loaded from: classes.dex */
    public static class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private double f2117a;
        private double b;
        private double c;
        private double d;
        private double e;
        private double f;
        private double g;
        private int h;
        private double i;
        private double j;
        private double k;

        public a(double d) {
            this.e = d;
        }

        public void a() {
            this.f2117a = 0.0d;
            this.c = 0.0d;
            this.d = 0.0d;
            this.f = 0.0d;
            this.h = 0;
            this.i = 0.0d;
            this.j = 1.0d;
            this.k = 0.0d;
        }

        public void a(double d, double d2) {
            this.h++;
            this.i += d;
            this.c = d2;
            this.k += d2 * d;
            this.f2117a = this.k / this.i;
            this.j = Math.min(this.j, d2);
            this.f = Math.max(this.f, d2);
            if (d2 < this.e) {
                this.b = 0.0d;
                return;
            }
            this.d += d;
            this.b += d;
            this.g = Math.max(this.g, this.b);
        }

        public double b() {
            if (this.h == 0) {
                return 0.0d;
            }
            return this.j;
        }

        public double c() {
            return this.f2117a;
        }

        public double d() {
            return this.f;
        }

        public double e() {
            return this.i;
        }

        public double f() {
            return this.d;
        }

        public double g() {
            return this.g;
        }
    }

    public c() {
        this(0.5d, 0.05d);
    }

    public c(double d) {
        this(d, 0.05d);
    }

    public c(double d, double d2) {
        this.f2116a = new a(d);
        this.b = new a(d2);
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f2116a.a();
        this.b.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(double d, double d2) {
        this.f2116a.a(d, d2);
    }

    public a b() {
        return this.f2116a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(double d, double d2) {
        this.b.a(d, d2);
    }

    public a c() {
        return this.b;
    }
}
