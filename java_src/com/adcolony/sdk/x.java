package com.adcolony.sdk;
/* loaded from: classes.dex */
class x {

    /* renamed from: a  reason: collision with root package name */
    static float[] f1503a = new float[16];
    static x b = new x();
    double[] c;
    boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x() {
        this.c = new double[16];
        b();
    }

    x(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
        this.c = new double[16];
        b(d, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16);
    }

    x a() {
        x xVar = new x();
        xVar.b(this);
        return xVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x a(x xVar) {
        return xVar.d ? this : a(xVar.c[0], xVar.c[1], xVar.c[2], xVar.c[3], xVar.c[4], xVar.c[5], xVar.c[6], xVar.c[7], xVar.c[8], xVar.c[9], xVar.c[10], xVar.c[11], xVar.c[12], xVar.c[13], xVar.c[14], xVar.c[15]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x a(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
        return a(d, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, this);
    }

    x a(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12, double d13, double d14, double d15, double d16, x xVar) {
        if (this.d) {
            return xVar.b(d, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16);
        }
        double d17 = this.c[0];
        double d18 = this.c[1];
        double d19 = this.c[2];
        double d20 = this.c[3];
        double d21 = this.c[4];
        double d22 = this.c[5];
        double d23 = this.c[6];
        double d24 = this.c[7];
        double d25 = this.c[8];
        double d26 = this.c[9];
        double d27 = this.c[10];
        double d28 = this.c[11];
        double d29 = this.c[12];
        double d30 = this.c[13];
        double d31 = this.c[14];
        double d32 = this.c[15];
        xVar.c[0] = (d17 * d) + (d18 * d5) + (d19 * d9) + (d20 * d13);
        xVar.c[1] = (d17 * d2) + (d18 * d6) + (d19 * d10) + (d20 * d14);
        xVar.c[2] = (d17 * d3) + (d18 * d7) + (d19 * d11) + (d20 * d15);
        xVar.c[3] = (d17 * d4) + (d18 * d8) + (d19 * d12) + (d20 * d16);
        xVar.c[4] = (d21 * d) + (d22 * d5) + (d23 * d9) + (d24 * d13);
        xVar.c[5] = (d21 * d2) + (d22 * d6) + (d23 * d10) + (d24 * d14);
        xVar.c[6] = (d21 * d3) + (d22 * d7) + (d23 * d11) + (d24 * d15);
        xVar.c[7] = (d21 * d4) + (d22 * d8) + (d23 * d12) + (d24 * d16);
        xVar.c[8] = (d25 * d) + (d26 * d5) + (d27 * d9) + (d28 * d13);
        xVar.c[9] = (d25 * d2) + (d26 * d6) + (d27 * d10) + (d28 * d14);
        xVar.c[10] = (d25 * d3) + (d26 * d7) + (d27 * d11) + (d28 * d15);
        xVar.c[11] = (d25 * d4) + (d26 * d8) + (d27 * d12) + (d28 * d16);
        xVar.c[12] = (d29 * d) + (d30 * d5) + (d31 * d9) + (d32 * d13);
        xVar.c[13] = (d29 * d2) + (d30 * d6) + (d31 * d10) + (d32 * d14);
        xVar.c[14] = (d29 * d3) + (d30 * d7) + (d31 * d11) + (d32 * d15);
        xVar.c[15] = (d29 * d4) + (d30 * d8) + (d31 * d12) + (d32 * d16);
        this.d = false;
        return xVar;
    }

    x a(x xVar, x xVar2) {
        return xVar.d ? xVar2.b(this) : a(xVar.c[0], xVar.c[1], xVar.c[2], xVar.c[3], xVar.c[4], xVar.c[5], xVar.c[6], xVar.c[7], xVar.c[8], xVar.c[9], xVar.c[10], xVar.c[11], xVar.c[12], xVar.c[13], xVar.c[14], xVar.c[15], xVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x a(double d) {
        b.b();
        double cos = Math.cos(d);
        double sin = Math.sin(d);
        b.c[0] = cos;
        b.c[1] = sin;
        b.c[4] = -sin;
        b.c[5] = cos;
        b.d = false;
        return a(b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x b(double d) {
        return a((3.141592653589793d * d) / 180.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x a(double d, double d2, double d3) {
        b.b();
        b.c[0] = d;
        b.c[5] = d2;
        b.c[10] = d3;
        b.d = false;
        return a(b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x b(x xVar) {
        for (int i = 15; i >= 0; i--) {
            this.c[i] = xVar.c[i];
        }
        this.d = xVar.d;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x b(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
        this.d = false;
        this.c[0] = d;
        this.c[1] = d2;
        this.c[2] = d3;
        this.c[3] = d4;
        this.c[4] = d5;
        this.c[5] = d6;
        this.c[6] = d7;
        this.c[7] = d8;
        this.c[8] = d9;
        this.c[9] = d10;
        this.c[10] = d11;
        this.c[11] = d12;
        this.c[12] = d13;
        this.c[13] = d14;
        this.c[14] = d15;
        this.c[15] = d16;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x b() {
        for (int i = 15; i >= 0; i--) {
            this.c[i] = 0.0d;
        }
        this.c[0] = 1.0d;
        this.c[5] = 1.0d;
        this.c[10] = 1.0d;
        this.c[15] = 1.0d;
        this.d = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x a(int i, int i2, double d) {
        b();
        this.c[0] = 2.0d / i;
        this.c[5] = (-2.0d) / i2;
        this.c[10] = (-2.0d) / d;
        this.c[12] = -1.0d;
        this.c[13] = 1.0d;
        this.c[14] = -1.0d;
        this.d = false;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x b(double d, double d2, double d3) {
        b.b();
        b.c[12] = d;
        b.c[13] = d2;
        b.c[14] = d3;
        b.d = false;
        return a(b);
    }

    x c(double d) {
        for (int i = 15; i >= 0; i--) {
            this.c[i] = d;
        }
        this.d = false;
        return this;
    }

    float[] c() {
        return a(f1503a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float[] a(float[] fArr) {
        for (int i = 15; i >= 0; i--) {
            fArr[i] = (float) this.c[i];
        }
        return fArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c[0]);
        sb.append(' ');
        sb.append(this.c[1]);
        sb.append(' ');
        sb.append(this.c[2]);
        sb.append(' ');
        sb.append(this.c[3]);
        sb.append('\n');
        sb.append(this.c[4]);
        sb.append(' ');
        sb.append(this.c[5]);
        sb.append(' ');
        sb.append(this.c[6]);
        sb.append(' ');
        sb.append(this.c[7]);
        sb.append('\n');
        sb.append(this.c[8]);
        sb.append(' ');
        sb.append(this.c[9]);
        sb.append(' ');
        sb.append(this.c[10]);
        sb.append(' ');
        sb.append(this.c[11]);
        sb.append('\n');
        sb.append(this.c[12]);
        sb.append(' ');
        sb.append(this.c[13]);
        sb.append(' ');
        sb.append(this.c[14]);
        sb.append(' ');
        sb.append(this.c[15]);
        sb.append('\n');
        return sb.toString();
    }
}
