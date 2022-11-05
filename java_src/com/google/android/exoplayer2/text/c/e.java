package com.google.android.exoplayer2.text.c;

import android.text.Layout;
/* compiled from: TtmlStyle.java */
/* loaded from: classes2.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private String f3440a;
    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private int f = -1;
    private int g = -1;
    private int h = -1;
    private int i = -1;
    private int j = -1;
    private float k;
    private String l;
    private e m;
    private Layout.Alignment n;

    public int a() {
        int i = 0;
        if (this.h == -1 && this.i == -1) {
            return -1;
        }
        int i2 = this.h == 1 ? 1 : 0;
        if (this.i == 1) {
            i = 2;
        }
        return i2 | i;
    }

    public boolean b() {
        return this.f == 1;
    }

    public e a(boolean z) {
        int i = 1;
        com.google.android.exoplayer2.util.a.b(this.m == null);
        if (!z) {
            i = 0;
        }
        this.f = i;
        return this;
    }

    public boolean c() {
        return this.g == 1;
    }

    public e b(boolean z) {
        int i = 1;
        com.google.android.exoplayer2.util.a.b(this.m == null);
        if (!z) {
            i = 0;
        }
        this.g = i;
        return this;
    }

    public e c(boolean z) {
        int i = 1;
        com.google.android.exoplayer2.util.a.b(this.m == null);
        if (!z) {
            i = 0;
        }
        this.h = i;
        return this;
    }

    public e d(boolean z) {
        int i = 1;
        com.google.android.exoplayer2.util.a.b(this.m == null);
        if (!z) {
            i = 0;
        }
        this.i = i;
        return this;
    }

    public String d() {
        return this.f3440a;
    }

    public e a(String str) {
        com.google.android.exoplayer2.util.a.b(this.m == null);
        this.f3440a = str;
        return this;
    }

    public int e() {
        if (!this.c) {
            throw new IllegalStateException("Font color has not been defined.");
        }
        return this.b;
    }

    public e a(int i) {
        com.google.android.exoplayer2.util.a.b(this.m == null);
        this.b = i;
        this.c = true;
        return this;
    }

    public boolean f() {
        return this.c;
    }

    public int g() {
        if (!this.e) {
            throw new IllegalStateException("Background color has not been defined.");
        }
        return this.d;
    }

    public e b(int i) {
        this.d = i;
        this.e = true;
        return this;
    }

    public boolean h() {
        return this.e;
    }

    public e a(e eVar) {
        return a(eVar, true);
    }

    private e a(e eVar, boolean z) {
        if (eVar != null) {
            if (!this.c && eVar.c) {
                a(eVar.b);
            }
            if (this.h == -1) {
                this.h = eVar.h;
            }
            if (this.i == -1) {
                this.i = eVar.i;
            }
            if (this.f3440a == null) {
                this.f3440a = eVar.f3440a;
            }
            if (this.f == -1) {
                this.f = eVar.f;
            }
            if (this.g == -1) {
                this.g = eVar.g;
            }
            if (this.n == null) {
                this.n = eVar.n;
            }
            if (this.j == -1) {
                this.j = eVar.j;
                this.k = eVar.k;
            }
            if (z && !this.e && eVar.e) {
                b(eVar.d);
            }
        }
        return this;
    }

    public e b(String str) {
        this.l = str;
        return this;
    }

    public String i() {
        return this.l;
    }

    public Layout.Alignment j() {
        return this.n;
    }

    public e a(Layout.Alignment alignment) {
        this.n = alignment;
        return this;
    }

    public e a(float f) {
        this.k = f;
        return this;
    }

    public e c(int i) {
        this.j = i;
        return this;
    }

    public int k() {
        return this.j;
    }

    public float l() {
        return this.k;
    }
}
