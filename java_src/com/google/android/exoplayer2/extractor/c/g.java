package com.google.android.exoplayer2.extractor.c;

import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.c.a;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
/* compiled from: Mp4Extractor.java */
/* loaded from: classes2.dex */
public final class g implements com.google.android.exoplayer2.extractor.f, com.google.android.exoplayer2.extractor.m {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.i f3228a = new com.google.android.exoplayer2.extractor.i() { // from class: com.google.android.exoplayer2.extractor.c.g.1
        @Override // com.google.android.exoplayer2.extractor.i
        public com.google.android.exoplayer2.extractor.f[] a() {
            return new com.google.android.exoplayer2.extractor.f[]{new g()};
        }
    };
    private static final int b = v.g("qt  ");
    private int g;
    private int h;
    private long i;
    private int j;
    private com.google.android.exoplayer2.util.l k;
    private int l;
    private int m;
    private com.google.android.exoplayer2.extractor.h n;
    private a[] o;
    private long p;
    private boolean q;
    private final com.google.android.exoplayer2.util.l e = new com.google.android.exoplayer2.util.l(16);
    private final Stack<a.C0133a> f = new Stack<>();
    private final com.google.android.exoplayer2.util.l c = new com.google.android.exoplayer2.util.l(com.google.android.exoplayer2.util.j.f3507a);
    private final com.google.android.exoplayer2.util.l d = new com.google.android.exoplayer2.util.l(4);

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        return i.b(gVar);
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(com.google.android.exoplayer2.extractor.h hVar) {
        this.n = hVar;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.f.clear();
        this.j = 0;
        this.l = 0;
        this.m = 0;
        if (j == 0) {
            d();
        } else if (this.o != null) {
            c(j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        while (true) {
            switch (this.g) {
                case 0:
                    if (b(gVar)) {
                        break;
                    } else {
                        return -1;
                    }
                case 1:
                    if (!b(gVar, lVar)) {
                        break;
                    } else {
                        return 1;
                    }
                case 2:
                    return c(gVar, lVar);
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b() {
        return this.p;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b(long j) {
        long j2 = Clock.MAX_TIME;
        a[] aVarArr = this.o;
        int length = aVarArr.length;
        int i = 0;
        while (i < length) {
            m mVar = aVarArr[i].b;
            int a2 = mVar.a(j);
            if (a2 == -1) {
                a2 = mVar.b(j);
            }
            long j3 = mVar.b[a2];
            if (j3 >= j2) {
                j3 = j2;
            }
            i++;
            j2 = j3;
        }
        return j2;
    }

    private void d() {
        this.g = 0;
        this.j = 0;
    }

    private boolean b(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        if (this.j == 0) {
            if (!gVar.a(this.e.f3511a, 0, 8, true)) {
                return false;
            }
            this.j = 8;
            this.e.c(0);
            this.i = this.e.k();
            this.h = this.e.m();
        }
        if (this.i == 1) {
            gVar.b(this.e.f3511a, 8, 8);
            this.j += 8;
            this.i = this.e.u();
        }
        if (b(this.h)) {
            long c = (gVar.c() + this.i) - this.j;
            this.f.add(new a.C0133a(this.h, c));
            if (this.i == this.j) {
                a(c);
            } else {
                d();
            }
        } else if (a(this.h)) {
            com.google.android.exoplayer2.util.a.b(this.j == 8);
            com.google.android.exoplayer2.util.a.b(this.i <= 2147483647L);
            this.k = new com.google.android.exoplayer2.util.l((int) this.i);
            System.arraycopy(this.e.f3511a, 0, this.k.f3511a, 0, 8);
            this.g = 1;
        } else {
            this.k = null;
            this.g = 1;
        }
        return true;
    }

    private boolean b(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        boolean z;
        long j = this.i - this.j;
        long c = gVar.c() + j;
        if (this.k != null) {
            gVar.b(this.k.f3511a, this.j, (int) j);
            if (this.h == com.google.android.exoplayer2.extractor.c.a.f3215a) {
                this.q = a(this.k);
                z = false;
            } else if (!this.f.isEmpty()) {
                this.f.peek().a(new a.b(this.h, this.k));
                z = false;
            } else {
                z = false;
            }
        } else if (j < 262144) {
            gVar.b((int) j);
            z = false;
        } else {
            lVar.f3290a = j + gVar.c();
            z = true;
        }
        a(c);
        return z && this.g != 2;
    }

    private void a(long j) throws ParserException {
        while (!this.f.isEmpty() && this.f.peek().aQ == j) {
            a.C0133a pop = this.f.pop();
            if (pop.aP == com.google.android.exoplayer2.extractor.c.a.B) {
                a(pop);
                this.f.clear();
                this.g = 2;
            } else if (!this.f.isEmpty()) {
                this.f.peek().a(pop);
            }
        }
        if (this.g != 2) {
            d();
        }
    }

    private static boolean a(com.google.android.exoplayer2.util.l lVar) {
        lVar.c(8);
        if (lVar.m() == b) {
            return true;
        }
        lVar.d(4);
        while (lVar.b() > 0) {
            if (lVar.m() == b) {
                return true;
            }
        }
        return false;
    }

    private void a(a.C0133a c0133a) throws ParserException {
        Metadata metadata;
        long j = -9223372036854775807L;
        ArrayList arrayList = new ArrayList();
        long j2 = Clock.MAX_TIME;
        com.google.android.exoplayer2.extractor.j jVar = new com.google.android.exoplayer2.extractor.j();
        a.b d = c0133a.d(com.google.android.exoplayer2.extractor.c.a.aA);
        if (d == null) {
            metadata = null;
        } else {
            Metadata a2 = b.a(d, this.q);
            if (a2 != null) {
                jVar.a(a2);
            }
            metadata = a2;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            long j3 = j2;
            long j4 = j;
            if (i2 < c0133a.aS.size()) {
                a.C0133a c0133a2 = c0133a.aS.get(i2);
                if (c0133a2.aP != com.google.android.exoplayer2.extractor.c.a.D) {
                    j2 = j3;
                } else {
                    j a3 = b.a(c0133a2, c0133a.d(com.google.android.exoplayer2.extractor.c.a.C), -9223372036854775807L, (DrmInitData) null, this.q);
                    if (a3 == null) {
                        j2 = j3;
                    } else {
                        m a4 = b.a(a3, c0133a2.e(com.google.android.exoplayer2.extractor.c.a.E).e(com.google.android.exoplayer2.extractor.c.a.F).e(com.google.android.exoplayer2.extractor.c.a.G), jVar);
                        if (a4.f3234a == 0) {
                            j2 = j3;
                        } else {
                            a aVar = new a(a3, a4, this.n.a(i2, a3.b));
                            Format a5 = a3.f.a(a4.d + 30);
                            if (a3.b == 1) {
                                if (jVar.a()) {
                                    a5 = a5.a(jVar.b, jVar.c);
                                }
                                if (metadata != null) {
                                    a5 = a5.a(metadata);
                                }
                            }
                            aVar.c.a(a5);
                            j4 = Math.max(j4, a3.e);
                            arrayList.add(aVar);
                            j2 = a4.b[0];
                            if (j2 >= j3) {
                                j2 = j3;
                            }
                        }
                    }
                }
                j = j4;
                i = i2 + 1;
            } else {
                this.p = j4;
                this.o = (a[]) arrayList.toArray(new a[arrayList.size()]);
                this.n.a();
                this.n.a(this);
                return;
            }
        }
    }

    private int c(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        int i;
        int e = e();
        if (e == -1) {
            return -1;
        }
        a aVar = this.o[e];
        n nVar = aVar.c;
        int i2 = aVar.d;
        long j = aVar.b.b[i2];
        int i3 = aVar.b.c[i2];
        if (aVar.f3229a.g == 1) {
            j += 8;
            i3 -= 8;
        }
        long c = (j - gVar.c()) + this.l;
        if (c < 0 || c >= 262144) {
            lVar.f3290a = j;
            return 1;
        }
        gVar.b((int) c);
        if (aVar.f3229a.k != 0) {
            byte[] bArr = this.d.f3511a;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i4 = aVar.f3229a.k;
            int i5 = 4 - aVar.f3229a.k;
            while (this.l < i3) {
                if (this.m == 0) {
                    gVar.b(this.d.f3511a, i5, i4);
                    this.d.c(0);
                    this.m = this.d.s();
                    this.c.c(0);
                    nVar.a(this.c, 4);
                    this.l += 4;
                    i3 += i5;
                } else {
                    int a2 = nVar.a(gVar, this.m, false);
                    this.l += a2;
                    this.m -= a2;
                }
            }
            i = i3;
        } else {
            while (this.l < i3) {
                int a3 = nVar.a(gVar, i3 - this.l, false);
                this.l += a3;
                this.m -= a3;
            }
            i = i3;
        }
        nVar.a(aVar.b.e[i2], aVar.b.f[i2], i, 0, null);
        aVar.d++;
        this.l = 0;
        this.m = 0;
        return 0;
    }

    private int e() {
        int i = -1;
        long j = Clock.MAX_TIME;
        for (int i2 = 0; i2 < this.o.length; i2++) {
            a aVar = this.o[i2];
            int i3 = aVar.d;
            if (i3 != aVar.b.f3234a) {
                long j2 = aVar.b.b[i3];
                if (j2 < j) {
                    j = j2;
                    i = i2;
                }
            }
        }
        return i;
    }

    private void c(long j) {
        a[] aVarArr;
        for (a aVar : this.o) {
            m mVar = aVar.b;
            int a2 = mVar.a(j);
            if (a2 == -1) {
                a2 = mVar.b(j);
            }
            aVar.d = a2;
        }
    }

    private static boolean a(int i) {
        return i == com.google.android.exoplayer2.extractor.c.a.R || i == com.google.android.exoplayer2.extractor.c.a.C || i == com.google.android.exoplayer2.extractor.c.a.S || i == com.google.android.exoplayer2.extractor.c.a.T || i == com.google.android.exoplayer2.extractor.c.a.am || i == com.google.android.exoplayer2.extractor.c.a.an || i == com.google.android.exoplayer2.extractor.c.a.ao || i == com.google.android.exoplayer2.extractor.c.a.Q || i == com.google.android.exoplayer2.extractor.c.a.ap || i == com.google.android.exoplayer2.extractor.c.a.aq || i == com.google.android.exoplayer2.extractor.c.a.ar || i == com.google.android.exoplayer2.extractor.c.a.as || i == com.google.android.exoplayer2.extractor.c.a.at || i == com.google.android.exoplayer2.extractor.c.a.O || i == com.google.android.exoplayer2.extractor.c.a.f3215a || i == com.google.android.exoplayer2.extractor.c.a.aA;
    }

    private static boolean b(int i) {
        return i == com.google.android.exoplayer2.extractor.c.a.B || i == com.google.android.exoplayer2.extractor.c.a.D || i == com.google.android.exoplayer2.extractor.c.a.E || i == com.google.android.exoplayer2.extractor.c.a.F || i == com.google.android.exoplayer2.extractor.c.a.G || i == com.google.android.exoplayer2.extractor.c.a.P;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mp4Extractor.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final j f3229a;
        public final m b;
        public final n c;
        public int d;

        public a(j jVar, m mVar, n nVar) {
            this.f3229a = jVar;
            this.b = mVar;
            this.c = nVar;
        }
    }
}
