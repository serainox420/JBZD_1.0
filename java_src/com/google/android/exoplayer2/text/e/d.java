package com.google.android.exoplayer2.text.e;

import android.text.Layout;
import com.google.android.exoplayer2.util.v;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: WebvttCssStyle.java */
/* loaded from: classes2.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private String f3447a;
    private String b;
    private List<String> c;
    private String d;
    private String e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private float o;
    private Layout.Alignment p;

    public d() {
        a();
    }

    public void a() {
        this.f3447a = "";
        this.b = "";
        this.c = Collections.emptyList();
        this.d = "";
        this.e = null;
        this.g = false;
        this.i = false;
        this.j = -1;
        this.k = -1;
        this.l = -1;
        this.m = -1;
        this.n = -1;
        this.p = null;
    }

    public void a(String str) {
        this.f3447a = str;
    }

    public void b(String str) {
        this.b = str;
    }

    public void a(String[] strArr) {
        this.c = Arrays.asList(strArr);
    }

    public void c(String str) {
        this.d = str;
    }

    public int a(String str, String str2, String[] strArr, String str3) {
        if (this.f3447a.isEmpty() && this.b.isEmpty() && this.c.isEmpty() && this.d.isEmpty()) {
            return str2.isEmpty() ? 1 : 0;
        }
        int a2 = a(a(a(0, this.f3447a, str, 1073741824), this.b, str2, 2), this.d, str3, 4);
        if (a2 != -1 && Arrays.asList(strArr).containsAll(this.c)) {
            return (this.c.size() * 4) + a2;
        }
        return 0;
    }

    public int b() {
        int i = 0;
        if (this.l == -1 && this.m == -1) {
            return -1;
        }
        int i2 = this.l == 1 ? 1 : 0;
        if (this.m == 1) {
            i = 2;
        }
        return i2 | i;
    }

    public boolean c() {
        return this.j == 1;
    }

    public boolean d() {
        return this.k == 1;
    }

    public d a(boolean z) {
        this.k = z ? 1 : 0;
        return this;
    }

    public d b(boolean z) {
        this.l = z ? 1 : 0;
        return this;
    }

    public d c(boolean z) {
        this.m = z ? 1 : 0;
        return this;
    }

    public String e() {
        return this.e;
    }

    public d d(String str) {
        this.e = v.d(str);
        return this;
    }

    public int f() {
        if (!this.g) {
            throw new IllegalStateException("Font color not defined");
        }
        return this.f;
    }

    public d a(int i) {
        this.f = i;
        this.g = true;
        return this;
    }

    public boolean g() {
        return this.g;
    }

    public int h() {
        if (!this.i) {
            throw new IllegalStateException("Background color not defined.");
        }
        return this.h;
    }

    public d b(int i) {
        this.h = i;
        this.i = true;
        return this;
    }

    public boolean i() {
        return this.i;
    }

    public Layout.Alignment j() {
        return this.p;
    }

    public int k() {
        return this.n;
    }

    public float l() {
        return this.o;
    }

    private static int a(int i, String str, String str2, int i2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (!str.equals(str2)) {
            return -1;
        }
        return i + i2;
    }
}
