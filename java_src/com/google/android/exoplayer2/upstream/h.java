package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.v;
import java.util.Arrays;
/* compiled from: DefaultAllocator.java */
/* loaded from: classes2.dex */
public final class h implements b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f3490a;
    private final int b;
    private final byte[] c;
    private final a[] d;
    private int e;
    private int f;
    private int g;
    private a[] h;

    public h(boolean z, int i) {
        this(z, i, 0);
    }

    public h(boolean z, int i, int i2) {
        com.google.android.exoplayer2.util.a.a(i > 0);
        com.google.android.exoplayer2.util.a.a(i2 >= 0);
        this.f3490a = z;
        this.b = i;
        this.g = i2;
        this.h = new a[i2 + 100];
        if (i2 > 0) {
            this.c = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.h[i3] = new a(this.c, i3 * i);
            }
        } else {
            this.c = null;
        }
        this.d = new a[1];
    }

    public synchronized void d() {
        if (this.f3490a) {
            a(0);
        }
    }

    public synchronized void a(int i) {
        boolean z = i < this.e;
        this.e = i;
        if (z) {
            b();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized a a() {
        a aVar;
        this.f++;
        if (this.g > 0) {
            a[] aVarArr = this.h;
            int i = this.g - 1;
            this.g = i;
            aVar = aVarArr[i];
            this.h[this.g] = null;
        } else {
            aVar = new a(new byte[this.b], 0);
        }
        return aVar;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void a(a aVar) {
        this.d[0] = aVar;
        a(this.d);
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void a(a[] aVarArr) {
        if (this.g + aVarArr.length >= this.h.length) {
            this.h = (a[]) Arrays.copyOf(this.h, Math.max(this.h.length * 2, this.g + aVarArr.length));
        }
        for (a aVar : aVarArr) {
            com.google.android.exoplayer2.util.a.a(aVar.f3477a == this.c || aVar.f3477a.length == this.b);
            a[] aVarArr2 = this.h;
            int i = this.g;
            this.g = i + 1;
            aVarArr2[i] = aVar;
        }
        this.f -= aVarArr.length;
        notifyAll();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
        if (r0 < r7.g) goto L31;
     */
    @Override // com.google.android.exoplayer2.upstream.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void b() {
        int i;
        int i2 = 0;
        synchronized (this) {
            int max = Math.max(0, v.a(this.e, this.b) - this.f);
            if (max < this.g) {
                if (this.c != null) {
                    int i3 = this.g - 1;
                    while (i2 <= i3) {
                        a aVar = this.h[i2];
                        if (aVar.f3477a == this.c) {
                            i2++;
                        } else {
                            a aVar2 = this.h[i3];
                            if (aVar2.f3477a != this.c) {
                                i3--;
                            } else {
                                this.h[i2] = aVar2;
                                this.h[i3] = aVar;
                                i3--;
                                i2++;
                            }
                        }
                    }
                    i = Math.max(max, i2);
                } else {
                    i = max;
                }
                Arrays.fill(this.h, i, this.g, (Object) null);
                this.g = i;
            }
        }
    }

    public synchronized int e() {
        return this.f * this.b;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public int c() {
        return this.b;
    }
}
