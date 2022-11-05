package com.google.android.exoplayer2.extractor.f;

import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.f.u;
import com.google.android.exoplayer2.util.j;
import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: H264Reader.java */
/* loaded from: classes2.dex */
public final class i implements g {

    /* renamed from: a  reason: collision with root package name */
    private final r f3264a;
    private final boolean b;
    private final boolean c;
    private long g;
    private String i;
    private com.google.android.exoplayer2.extractor.n j;
    private a k;
    private boolean l;
    private long m;
    private final boolean[] h = new boolean[3];
    private final m d = new m(7, 128);
    private final m e = new m(8, 128);
    private final m f = new m(6, 128);
    private final com.google.android.exoplayer2.util.l n = new com.google.android.exoplayer2.util.l();

    public i(r rVar, boolean z, boolean z2) {
        this.f3264a = rVar;
        this.b = z;
        this.c = z2;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a() {
        com.google.android.exoplayer2.util.j.a(this.h);
        this.d.a();
        this.e.a();
        this.f.a();
        this.k.b();
        this.g = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        cVar.a();
        this.i = cVar.c();
        this.j = hVar.a(cVar.b(), 2);
        this.k = new a(this.j, this.b, this.c);
        this.f3264a.a(hVar, cVar);
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(long j, boolean z) {
        this.m = j;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.util.l lVar) {
        int d = lVar.d();
        int c = lVar.c();
        byte[] bArr = lVar.f3511a;
        this.g += lVar.b();
        this.j.a(lVar, lVar.b());
        while (true) {
            int a2 = com.google.android.exoplayer2.util.j.a(bArr, d, c, this.h);
            if (a2 == c) {
                a(bArr, d, c);
                return;
            }
            int b = com.google.android.exoplayer2.util.j.b(bArr, a2);
            int i = a2 - d;
            if (i > 0) {
                a(bArr, d, a2);
            }
            int i2 = c - a2;
            long j = this.g - i2;
            a(j, i2, i < 0 ? -i : 0, this.m);
            a(j, b, this.m);
            d = a2 + 3;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void b() {
    }

    private void a(long j, int i, long j2) {
        if (!this.l || this.k.a()) {
            this.d.a(i);
            this.e.a(i);
        }
        this.f.a(i);
        this.k.a(j, i, j2);
    }

    private void a(byte[] bArr, int i, int i2) {
        if (!this.l || this.k.a()) {
            this.d.a(bArr, i, i2);
            this.e.a(bArr, i, i2);
        }
        this.f.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    private void a(long j, int i, int i2, long j2) {
        if (!this.l || this.k.a()) {
            this.d.b(i2);
            this.e.b(i2);
            if (!this.l) {
                if (this.d.b() && this.e.b()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Arrays.copyOf(this.d.f3271a, this.d.b));
                    arrayList.add(Arrays.copyOf(this.e.f3271a, this.e.b));
                    j.b a2 = com.google.android.exoplayer2.util.j.a(this.d.f3271a, 3, this.d.b);
                    j.a b = com.google.android.exoplayer2.util.j.b(this.e.f3271a, 3, this.e.b);
                    this.j.a(Format.a(this.i, "video/avc", (String) null, -1, -1, a2.b, a2.c, -1.0f, arrayList, -1, a2.d, (DrmInitData) null));
                    this.l = true;
                    this.k.a(a2);
                    this.k.a(b);
                    this.d.a();
                    this.e.a();
                }
            } else if (this.d.b()) {
                this.k.a(com.google.android.exoplayer2.util.j.a(this.d.f3271a, 3, this.d.b));
                this.d.a();
            } else if (this.e.b()) {
                this.k.a(com.google.android.exoplayer2.util.j.b(this.e.f3271a, 3, this.e.b));
                this.e.a();
            }
        }
        if (this.f.b(i2)) {
            this.n.a(this.f.f3271a, com.google.android.exoplayer2.util.j.a(this.f.f3271a, this.f.b));
            this.n.c(4);
            this.f3264a.a(j2, this.n);
        }
        this.k.a(j, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H264Reader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.n f3265a;
        private final boolean b;
        private final boolean c;
        private int h;
        private int i;
        private long j;
        private boolean k;
        private long l;
        private boolean o;
        private long p;
        private long q;
        private boolean r;
        private final SparseArray<j.b> d = new SparseArray<>();
        private final SparseArray<j.a> e = new SparseArray<>();
        private C0136a m = new C0136a();
        private C0136a n = new C0136a();
        private byte[] g = new byte[128];
        private final com.google.android.exoplayer2.util.m f = new com.google.android.exoplayer2.util.m(this.g, 0, 0);

        public a(com.google.android.exoplayer2.extractor.n nVar, boolean z, boolean z2) {
            this.f3265a = nVar;
            this.b = z;
            this.c = z2;
            b();
        }

        public boolean a() {
            return this.c;
        }

        public void a(j.b bVar) {
            this.d.append(bVar.f3509a, bVar);
        }

        public void a(j.a aVar) {
            this.e.append(aVar.f3508a, aVar);
        }

        public void b() {
            this.k = false;
            this.o = false;
            this.n.a();
        }

        public void a(long j, int i, long j2) {
            this.i = i;
            this.l = j2;
            this.j = j;
            if (!this.b || this.i != 1) {
                if (!this.c) {
                    return;
                }
                if (this.i != 5 && this.i != 1 && this.i != 2) {
                    return;
                }
            }
            C0136a c0136a = this.m;
            this.m = this.n;
            this.n = c0136a;
            this.n.a();
            this.h = 0;
            this.k = true;
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.k) {
                int i3 = i2 - i;
                if (this.g.length < this.h + i3) {
                    this.g = Arrays.copyOf(this.g, (this.h + i3) * 2);
                }
                System.arraycopy(bArr, i, this.g, this.h, i3);
                this.h = i3 + this.h;
                this.f.a(this.g, 0, this.h);
                if (this.f.b(8)) {
                    this.f.a(1);
                    int c = this.f.c(2);
                    this.f.a(5);
                    if (this.f.b()) {
                        this.f.c();
                        if (this.f.b()) {
                            int c2 = this.f.c();
                            if (!this.c) {
                                this.k = false;
                                this.n.a(c2);
                            } else if (this.f.b()) {
                                int c3 = this.f.c();
                                if (this.e.indexOfKey(c3) < 0) {
                                    this.k = false;
                                    return;
                                }
                                j.a aVar = this.e.get(c3);
                                j.b bVar = this.d.get(aVar.b);
                                if (bVar.e) {
                                    if (this.f.b(2)) {
                                        this.f.a(2);
                                    } else {
                                        return;
                                    }
                                }
                                if (this.f.b(bVar.g)) {
                                    boolean z = false;
                                    boolean z2 = false;
                                    boolean z3 = false;
                                    int c4 = this.f.c(bVar.g);
                                    if (!bVar.f) {
                                        if (this.f.b(1)) {
                                            z = this.f.a();
                                            if (z) {
                                                if (this.f.b(1)) {
                                                    z3 = this.f.a();
                                                    z2 = true;
                                                } else {
                                                    return;
                                                }
                                            }
                                        } else {
                                            return;
                                        }
                                    }
                                    boolean z4 = this.i == 5;
                                    int i4 = 0;
                                    if (z4) {
                                        if (this.f.b()) {
                                            i4 = this.f.c();
                                        } else {
                                            return;
                                        }
                                    }
                                    int i5 = 0;
                                    int i6 = 0;
                                    int i7 = 0;
                                    int i8 = 0;
                                    if (bVar.h == 0) {
                                        if (this.f.b(bVar.i)) {
                                            i5 = this.f.c(bVar.i);
                                            if (aVar.c && !z) {
                                                if (this.f.b()) {
                                                    i6 = this.f.d();
                                                } else {
                                                    return;
                                                }
                                            }
                                        } else {
                                            return;
                                        }
                                    } else if (bVar.h == 1 && !bVar.j) {
                                        if (this.f.b()) {
                                            i7 = this.f.d();
                                            if (aVar.c && !z) {
                                                if (this.f.b()) {
                                                    i8 = this.f.d();
                                                } else {
                                                    return;
                                                }
                                            }
                                        } else {
                                            return;
                                        }
                                    }
                                    this.n.a(bVar, c, c2, c4, c3, z, z2, z3, z4, i4, i5, i6, i7, i8);
                                    this.k = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public void a(long j, int i) {
            boolean z = false;
            if (this.i == 9 || (this.c && this.n.a(this.m))) {
                if (this.o) {
                    a(((int) (j - this.j)) + i);
                }
                this.p = this.j;
                this.q = this.l;
                this.r = false;
                this.o = true;
            }
            boolean z2 = this.r;
            if (this.i == 5 || (this.b && this.i == 1 && this.n.b())) {
                z = true;
            }
            this.r = z | z2;
        }

        private void a(int i) {
            this.f3265a.a(this.q, this.r ? 1 : 0, (int) (this.j - this.p), i, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: H264Reader.java */
        /* renamed from: com.google.android.exoplayer2.extractor.f.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0136a {

            /* renamed from: a  reason: collision with root package name */
            private boolean f3266a;
            private boolean b;
            private j.b c;
            private int d;
            private int e;
            private int f;
            private int g;
            private boolean h;
            private boolean i;
            private boolean j;
            private boolean k;
            private int l;
            private int m;
            private int n;
            private int o;
            private int p;

            private C0136a() {
            }

            public void a() {
                this.b = false;
                this.f3266a = false;
            }

            public void a(int i) {
                this.e = i;
                this.b = true;
            }

            public void a(j.b bVar, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.c = bVar;
                this.d = i;
                this.e = i2;
                this.f = i3;
                this.g = i4;
                this.h = z;
                this.i = z2;
                this.j = z3;
                this.k = z4;
                this.l = i5;
                this.m = i6;
                this.n = i7;
                this.o = i8;
                this.p = i9;
                this.f3266a = true;
                this.b = true;
            }

            public boolean b() {
                return this.b && (this.e == 7 || this.e == 2);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean a(C0136a c0136a) {
                if (this.f3266a) {
                    if (!c0136a.f3266a || this.f != c0136a.f || this.g != c0136a.g || this.h != c0136a.h) {
                        return true;
                    }
                    if (this.i && c0136a.i && this.j != c0136a.j) {
                        return true;
                    }
                    if (this.d != c0136a.d && (this.d == 0 || c0136a.d == 0)) {
                        return true;
                    }
                    if (this.c.h == 0 && c0136a.c.h == 0 && (this.m != c0136a.m || this.n != c0136a.n)) {
                        return true;
                    }
                    if ((this.c.h == 1 && c0136a.c.h == 1 && (this.o != c0136a.o || this.p != c0136a.p)) || this.k != c0136a.k) {
                        return true;
                    }
                    if (this.k && c0136a.k && this.l != c0136a.l) {
                        return true;
                    }
                }
                return false;
            }
        }
    }
}
