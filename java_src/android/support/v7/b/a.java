package android.support.v7.b;

import android.graphics.Color;
import android.support.v7.b.b;
import android.util.TimingLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ColorCutQuantizer.java */
/* loaded from: classes.dex */
public final class a {
    private static final Comparator<C0037a> g = new Comparator<C0037a>() { // from class: android.support.v7.b.a.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(C0037a c0037a, C0037a c0037a2) {
            return c0037a2.a() - c0037a.a();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final int[] f629a;
    final int[] b;
    final List<b.c> c;
    final b.InterfaceC0038b[] e;
    private final float[] f = new float[3];
    final TimingLogger d = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int[] iArr, int i, b.InterfaceC0038b[] interfaceC0038bArr) {
        this.e = interfaceC0038bArr;
        int[] iArr2 = new int[32768];
        this.b = iArr2;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int f = f(iArr[i2]);
            iArr[i2] = f;
            iArr2[f] = iArr2[f] + 1;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < iArr2.length; i4++) {
            if (iArr2[i4] > 0 && e(i4)) {
                iArr2[i4] = 0;
            }
            if (iArr2[i4] > 0) {
                i3++;
            }
        }
        int[] iArr3 = new int[i3];
        this.f629a = iArr3;
        int i5 = 0;
        for (int i6 = 0; i6 < iArr2.length; i6++) {
            if (iArr2[i6] > 0) {
                iArr3[i5] = i6;
                i5++;
            }
        }
        if (i3 <= i) {
            this.c = new ArrayList();
            for (int i7 : iArr3) {
                this.c.add(new b.c(g(i7), iArr2[i7]));
            }
            return;
        }
        this.c = d(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<b.c> a() {
        return this.c;
    }

    private List<b.c> d(int i) {
        PriorityQueue<C0037a> priorityQueue = new PriorityQueue<>(i, g);
        priorityQueue.offer(new C0037a(0, this.f629a.length - 1));
        a(priorityQueue, i);
        return a(priorityQueue);
    }

    private void a(PriorityQueue<C0037a> priorityQueue, int i) {
        C0037a poll;
        while (priorityQueue.size() < i && (poll = priorityQueue.poll()) != null && poll.b()) {
            priorityQueue.offer(poll.e());
            priorityQueue.offer(poll);
        }
    }

    private List<b.c> a(Collection<C0037a> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (C0037a c0037a : collection) {
            b.c h = c0037a.h();
            if (!a(h)) {
                arrayList.add(h);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColorCutQuantizer.java */
    /* renamed from: android.support.v7.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0037a {
        private int b;
        private int c;
        private int d;
        private int e;
        private int f;
        private int g;
        private int h;
        private int i;
        private int j;

        C0037a(int i, int i2) {
            this.b = i;
            this.c = i2;
            d();
        }

        final int a() {
            return ((this.f - this.e) + 1) * ((this.h - this.g) + 1) * ((this.j - this.i) + 1);
        }

        final boolean b() {
            return c() > 1;
        }

        final int c() {
            return (this.c + 1) - this.b;
        }

        final void d() {
            int[] iArr = a.this.f629a;
            int[] iArr2 = a.this.b;
            int i = Integer.MIN_VALUE;
            int i2 = 0;
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MIN_VALUE;
            for (int i8 = this.b; i8 <= this.c; i8++) {
                int i9 = iArr[i8];
                i2 += iArr2[i9];
                int a2 = a.a(i9);
                int b = a.b(i9);
                int c = a.c(i9);
                if (a2 > i3) {
                    i3 = a2;
                }
                if (a2 < i6) {
                    i6 = a2;
                }
                if (b > i7) {
                    i7 = b;
                }
                if (b < i5) {
                    i5 = b;
                }
                if (c > i) {
                    i = c;
                }
                if (c < i4) {
                    i4 = c;
                }
            }
            this.e = i6;
            this.f = i3;
            this.g = i5;
            this.h = i7;
            this.i = i4;
            this.j = i;
            this.d = i2;
        }

        final C0037a e() {
            if (!b()) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int g = g();
            C0037a c0037a = new C0037a(g + 1, this.c);
            this.c = g;
            d();
            return c0037a;
        }

        final int f() {
            int i = this.f - this.e;
            int i2 = this.h - this.g;
            int i3 = this.j - this.i;
            if (i >= i2 && i >= i3) {
                return -3;
            }
            if (i2 >= i && i2 >= i3) {
                return -2;
            }
            return -1;
        }

        final int g() {
            int f = f();
            int[] iArr = a.this.f629a;
            int[] iArr2 = a.this.b;
            a.a(iArr, f, this.b, this.c);
            Arrays.sort(iArr, this.b, this.c + 1);
            a.a(iArr, f, this.b, this.c);
            int i = this.d / 2;
            int i2 = 0;
            for (int i3 = this.b; i3 <= this.c; i3++) {
                i2 += iArr2[iArr[i3]];
                if (i2 >= i) {
                    return i3;
                }
            }
            return this.b;
        }

        final b.c h() {
            int i = 0;
            int[] iArr = a.this.f629a;
            int[] iArr2 = a.this.b;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = this.b; i5 <= this.c; i5++) {
                int i6 = iArr[i5];
                int i7 = iArr2[i6];
                i += i7;
                i4 += a.a(i6) * i7;
                i3 += a.b(i6) * i7;
                i2 += a.c(i6) * i7;
            }
            return new b.c(a.a(Math.round(i4 / i), Math.round(i3 / i), Math.round(i2 / i)), i);
        }
    }

    static void a(int[] iArr, int i, int i2, int i3) {
        switch (i) {
            case -3:
            default:
                return;
            case -2:
                while (i2 <= i3) {
                    int i4 = iArr[i2];
                    iArr[i2] = c(i4) | (b(i4) << 10) | (a(i4) << 5);
                    i2++;
                }
                return;
            case -1:
                while (i2 <= i3) {
                    int i5 = iArr[i2];
                    iArr[i2] = a(i5) | (c(i5) << 10) | (b(i5) << 5);
                    i2++;
                }
                return;
        }
    }

    private boolean e(int i) {
        int g2 = g(i);
        android.support.v4.b.a.a(g2, this.f);
        return a(g2, this.f);
    }

    private boolean a(b.c cVar) {
        return a(cVar.a(), cVar.b());
    }

    private boolean a(int i, float[] fArr) {
        if (this.e == null || this.e.length <= 0) {
            return false;
        }
        int length = this.e.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (!this.e[i2].a(i, fArr)) {
                return true;
            }
        }
        return false;
    }

    private static int f(int i) {
        return (b(Color.red(i), 8, 5) << 10) | (b(Color.green(i), 8, 5) << 5) | b(Color.blue(i), 8, 5);
    }

    static int a(int i, int i2, int i3) {
        return Color.rgb(b(i, 5, 8), b(i2, 5, 8), b(i3, 5, 8));
    }

    private static int g(int i) {
        return a(a(i), b(i), c(i));
    }

    static int a(int i) {
        return (i >> 10) & 31;
    }

    static int b(int i) {
        return (i >> 5) & 31;
    }

    static int c(int i) {
        return i & 31;
    }

    private static int b(int i, int i2, int i3) {
        int i4;
        if (i3 > i2) {
            i4 = i << (i3 - i2);
        } else {
            i4 = i >> (i2 - i3);
        }
        return i4 & ((1 << i3) - 1);
    }
}
