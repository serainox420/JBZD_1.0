package com.google.android.exoplayer2.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* compiled from: SlidingPercentile.java */
/* loaded from: classes2.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator<a> f3515a = new Comparator<a>() { // from class: com.google.android.exoplayer2.util.q.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(a aVar, a aVar2) {
            return aVar.f3516a - aVar2.f3516a;
        }
    };
    private static final Comparator<a> b = new Comparator<a>() { // from class: com.google.android.exoplayer2.util.q.2
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(a aVar, a aVar2) {
            if (aVar.c < aVar2.c) {
                return -1;
            }
            return aVar2.c < aVar.c ? 1 : 0;
        }
    };
    private final int c;
    private int g;
    private int h;
    private int i;
    private final a[] e = new a[5];
    private final ArrayList<a> d = new ArrayList<>();
    private int f = -1;

    public q(int i) {
        this.c = i;
    }

    public void a(int i, float f) {
        a aVar;
        a();
        if (this.i > 0) {
            a[] aVarArr = this.e;
            int i2 = this.i - 1;
            this.i = i2;
            aVar = aVarArr[i2];
        } else {
            aVar = new a();
        }
        int i3 = this.g;
        this.g = i3 + 1;
        aVar.f3516a = i3;
        aVar.b = i;
        aVar.c = f;
        this.d.add(aVar);
        this.h += i;
        while (this.h > this.c) {
            int i4 = this.h - this.c;
            a aVar2 = this.d.get(0);
            if (aVar2.b <= i4) {
                this.h -= aVar2.b;
                this.d.remove(0);
                if (this.i < 5) {
                    a[] aVarArr2 = this.e;
                    int i5 = this.i;
                    this.i = i5 + 1;
                    aVarArr2[i5] = aVar2;
                }
            } else {
                aVar2.b -= i4;
                this.h -= i4;
            }
        }
    }

    public float a(float f) {
        b();
        float f2 = f * this.h;
        int i = 0;
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            a aVar = this.d.get(i2);
            i += aVar.b;
            if (i >= f2) {
                return aVar.c;
            }
        }
        if (this.d.isEmpty()) {
            return Float.NaN;
        }
        return this.d.get(this.d.size() - 1).c;
    }

    private void a() {
        if (this.f != 1) {
            Collections.sort(this.d, f3515a);
            this.f = 1;
        }
    }

    private void b() {
        if (this.f != 0) {
            Collections.sort(this.d, b);
            this.f = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SlidingPercentile.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f3516a;
        public int b;
        public float c;

        private a() {
        }
    }
}
