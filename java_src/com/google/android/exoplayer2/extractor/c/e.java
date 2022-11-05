package com.google.android.exoplayer2.extractor.c;

import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.c.a;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.vision.barcode.Barcode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;
import java.util.UUID;
/* compiled from: FragmentedMp4Extractor.java */
/* loaded from: classes2.dex */
public final class e implements com.google.android.exoplayer2.extractor.f {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.i f3224a = new com.google.android.exoplayer2.extractor.i() { // from class: com.google.android.exoplayer2.extractor.c.e.1
        @Override // com.google.android.exoplayer2.extractor.i
        public com.google.android.exoplayer2.extractor.f[] a() {
            return new com.google.android.exoplayer2.extractor.f[]{new e()};
        }
    };
    private static final int b = v.g("seig");
    private static final byte[] c = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private int A;
    private int B;
    private boolean C;
    private com.google.android.exoplayer2.extractor.h D;
    private n E;
    private n[] F;
    private boolean G;
    private final int d;
    private final j e;
    private final SparseArray<b> f;
    private final com.google.android.exoplayer2.util.l g;
    private final com.google.android.exoplayer2.util.l h;
    private final com.google.android.exoplayer2.util.l i;
    private final com.google.android.exoplayer2.util.l j;
    private final s k;
    private final com.google.android.exoplayer2.util.l l;
    private final byte[] m;
    private final Stack<a.C0133a> n;
    private final LinkedList<a> o;
    private int p;
    private int q;
    private long r;
    private int s;
    private com.google.android.exoplayer2.util.l t;
    private long u;
    private int v;
    private long w;
    private long x;
    private b y;
    private int z;

    public e() {
        this(0);
    }

    public e(int i) {
        this(i, null);
    }

    public e(int i, s sVar) {
        this(i, sVar, null);
    }

    public e(int i, s sVar, j jVar) {
        this.d = (jVar != null ? 16 : 0) | i;
        this.k = sVar;
        this.e = jVar;
        this.l = new com.google.android.exoplayer2.util.l(16);
        this.g = new com.google.android.exoplayer2.util.l(com.google.android.exoplayer2.util.j.f3507a);
        this.h = new com.google.android.exoplayer2.util.l(5);
        this.i = new com.google.android.exoplayer2.util.l();
        this.j = new com.google.android.exoplayer2.util.l(1);
        this.m = new byte[16];
        this.n = new Stack<>();
        this.o = new LinkedList<>();
        this.f = new SparseArray<>();
        this.w = -9223372036854775807L;
        this.x = -9223372036854775807L;
        a();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        return i.a(gVar);
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(com.google.android.exoplayer2.extractor.h hVar) {
        this.D = hVar;
        if (this.e != null) {
            b bVar = new b(hVar.a(0, this.e.b));
            bVar.a(this.e, new c(0, 0, 0, 0));
            this.f.put(0, bVar);
            b();
            this.D.a();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            this.f.valueAt(i).a();
        }
        this.o.clear();
        this.v = 0;
        this.n.clear();
        a();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        while (true) {
            switch (this.p) {
                case 0:
                    if (b(gVar)) {
                        break;
                    } else {
                        return -1;
                    }
                case 1:
                    c(gVar);
                    break;
                case 2:
                    d(gVar);
                    break;
                default:
                    if (!e(gVar)) {
                        break;
                    } else {
                        return 0;
                    }
            }
        }
    }

    private void a() {
        this.p = 0;
        this.s = 0;
    }

    private boolean b(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        if (this.s == 0) {
            if (!gVar.a(this.l.f3511a, 0, 8, true)) {
                return false;
            }
            this.s = 8;
            this.l.c(0);
            this.r = this.l.k();
            this.q = this.l.m();
        }
        if (this.r == 1) {
            gVar.b(this.l.f3511a, 8, 8);
            this.s += 8;
            this.r = this.l.u();
        }
        if (this.r < this.s) {
            throw new ParserException("Atom size less than header length (unsupported).");
        }
        long c2 = gVar.c() - this.s;
        if (this.q == com.google.android.exoplayer2.extractor.c.a.K) {
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                l lVar = this.f.valueAt(i).f3226a;
                lVar.b = c2;
                lVar.d = c2;
                lVar.c = c2;
            }
        }
        if (this.q == com.google.android.exoplayer2.extractor.c.a.h) {
            this.y = null;
            this.u = this.r + c2;
            if (!this.G) {
                this.D.a(new m.a(this.w));
                this.G = true;
            }
            this.p = 2;
            return true;
        }
        if (b(this.q)) {
            long c3 = (gVar.c() + this.r) - 8;
            this.n.add(new a.C0133a(this.q, c3));
            if (this.r == this.s) {
                a(c3);
            } else {
                a();
            }
        } else if (a(this.q)) {
            if (this.s != 8) {
                throw new ParserException("Leaf atom defines extended atom size (unsupported).");
            }
            if (this.r > 2147483647L) {
                throw new ParserException("Leaf atom with length > 2147483647 (unsupported).");
            }
            this.t = new com.google.android.exoplayer2.util.l((int) this.r);
            System.arraycopy(this.l.f3511a, 0, this.t.f3511a, 0, 8);
            this.p = 1;
        } else if (this.r > 2147483647L) {
            throw new ParserException("Skipping atom with length > 2147483647 (unsupported).");
        } else {
            this.t = null;
            this.p = 1;
        }
        return true;
    }

    private void c(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        int i = ((int) this.r) - this.s;
        if (this.t != null) {
            gVar.b(this.t.f3511a, 8, i);
            a(new a.b(this.q, this.t), gVar.c());
        } else {
            gVar.b(i);
        }
        a(gVar.c());
    }

    private void a(long j) throws ParserException {
        while (!this.n.isEmpty() && this.n.peek().aQ == j) {
            a(this.n.pop());
        }
        a();
    }

    private void a(a.b bVar, long j) throws ParserException {
        if (!this.n.isEmpty()) {
            this.n.peek().a(bVar);
        } else if (bVar.aP == com.google.android.exoplayer2.extractor.c.a.A) {
            Pair<Long, com.google.android.exoplayer2.extractor.a> a2 = a(bVar.aQ, j);
            this.x = ((Long) a2.first).longValue();
            this.D.a((com.google.android.exoplayer2.extractor.m) a2.second);
            this.G = true;
        } else if (bVar.aP == com.google.android.exoplayer2.extractor.c.a.aG) {
            a(bVar.aQ);
        }
    }

    private void a(a.C0133a c0133a) throws ParserException {
        if (c0133a.aP == com.google.android.exoplayer2.extractor.c.a.B) {
            b(c0133a);
        } else if (c0133a.aP == com.google.android.exoplayer2.extractor.c.a.K) {
            c(c0133a);
        } else if (!this.n.isEmpty()) {
            this.n.peek().a(c0133a);
        }
    }

    private void b(a.C0133a c0133a) throws ParserException {
        j a2;
        boolean z = true;
        int i = 0;
        com.google.android.exoplayer2.util.a.b(this.e == null, "Unexpected moov box.");
        DrmInitData a3 = a(c0133a.aR);
        a.C0133a e = c0133a.e(com.google.android.exoplayer2.extractor.c.a.M);
        SparseArray sparseArray = new SparseArray();
        long j = -9223372036854775807L;
        int size = e.aR.size();
        for (int i2 = 0; i2 < size; i2++) {
            a.b bVar = e.aR.get(i2);
            if (bVar.aP == com.google.android.exoplayer2.extractor.c.a.y) {
                Pair<Integer, c> b2 = b(bVar.aQ);
                sparseArray.put(((Integer) b2.first).intValue(), b2.second);
            } else if (bVar.aP == com.google.android.exoplayer2.extractor.c.a.N) {
                j = c(bVar.aQ);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = c0133a.aS.size();
        for (int i3 = 0; i3 < size2; i3++) {
            a.C0133a c0133a2 = c0133a.aS.get(i3);
            if (c0133a2.aP == com.google.android.exoplayer2.extractor.c.a.D && (a2 = com.google.android.exoplayer2.extractor.c.b.a(c0133a2, c0133a.d(com.google.android.exoplayer2.extractor.c.a.C), j, a3, false)) != null) {
                sparseArray2.put(a2.f3231a, a2);
            }
        }
        int size3 = sparseArray2.size();
        if (this.f.size() == 0) {
            while (i < size3) {
                j jVar = (j) sparseArray2.valueAt(i);
                b bVar2 = new b(this.D.a(i, jVar.b));
                bVar2.a(jVar, (c) sparseArray.get(jVar.f3231a));
                this.f.put(jVar.f3231a, bVar2);
                this.w = Math.max(this.w, jVar.e);
                i++;
            }
            b();
            this.D.a();
            return;
        }
        if (this.f.size() != size3) {
            z = false;
        }
        com.google.android.exoplayer2.util.a.b(z);
        while (i < size3) {
            j jVar2 = (j) sparseArray2.valueAt(i);
            this.f.get(jVar2.f3231a).a(jVar2, (c) sparseArray.get(jVar2.f3231a));
            i++;
        }
    }

    private void c(a.C0133a c0133a) throws ParserException {
        a(c0133a, this.f, this.d, this.m);
        DrmInitData a2 = a(c0133a.aR);
        if (a2 != null) {
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                this.f.valueAt(i).a(a2);
            }
        }
    }

    private void b() {
        if ((this.d & 4) != 0 && this.E == null) {
            this.E = this.D.a(this.f.size(), 4);
            this.E.a(Format.a((String) null, "application/x-emsg", (long) Clock.MAX_TIME));
        }
        if ((this.d & 8) != 0 && this.F == null) {
            n a2 = this.D.a(this.f.size() + 1, 3);
            a2.a(Format.a((String) null, "application/cea-608", (String) null, -1, 0, (String) null, (DrmInitData) null));
            this.F = new n[]{a2};
        }
    }

    private void a(com.google.android.exoplayer2.util.l lVar) {
        if (this.E != null) {
            lVar.c(12);
            lVar.w();
            lVar.w();
            long a2 = v.a(lVar.k(), 1000000L, lVar.k());
            lVar.c(12);
            int b2 = lVar.b();
            this.E.a(lVar, b2);
            if (this.x != -9223372036854775807L) {
                this.E.a(a2 + this.x, 1, b2, 0, null);
                return;
            }
            this.o.addLast(new a(a2, b2));
            this.v += b2;
        }
    }

    private static Pair<Integer, c> b(com.google.android.exoplayer2.util.l lVar) {
        lVar.c(12);
        return Pair.create(Integer.valueOf(lVar.m()), new c(lVar.s() - 1, lVar.s(), lVar.s(), lVar.m()));
    }

    private static long c(com.google.android.exoplayer2.util.l lVar) {
        lVar.c(8);
        return com.google.android.exoplayer2.extractor.c.a.a(lVar.m()) == 0 ? lVar.k() : lVar.u();
    }

    private static void a(a.C0133a c0133a, SparseArray<b> sparseArray, int i, byte[] bArr) throws ParserException {
        int size = c0133a.aS.size();
        for (int i2 = 0; i2 < size; i2++) {
            a.C0133a c0133a2 = c0133a.aS.get(i2);
            if (c0133a2.aP == com.google.android.exoplayer2.extractor.c.a.L) {
                b(c0133a2, sparseArray, i, bArr);
            }
        }
    }

    private static void b(a.C0133a c0133a, SparseArray<b> sparseArray, int i, byte[] bArr) throws ParserException {
        b a2 = a(c0133a.d(com.google.android.exoplayer2.extractor.c.a.x).aQ, sparseArray, i);
        if (a2 != null) {
            l lVar = a2.f3226a;
            long j = lVar.s;
            a2.a();
            if (c0133a.d(com.google.android.exoplayer2.extractor.c.a.w) != null && (i & 2) == 0) {
                j = d(c0133a.d(com.google.android.exoplayer2.extractor.c.a.w).aQ);
            }
            a(c0133a, a2, j, i);
            a.b d = c0133a.d(com.google.android.exoplayer2.extractor.c.a.ac);
            if (d != null) {
                a(a2.c.h[lVar.f3233a.f3222a], d.aQ, lVar);
            }
            a.b d2 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.ad);
            if (d2 != null) {
                a(d2.aQ, lVar);
            }
            a.b d3 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.ah);
            if (d3 != null) {
                b(d3.aQ, lVar);
            }
            a.b d4 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.ae);
            a.b d5 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.af);
            if (d4 != null && d5 != null) {
                a(d4.aQ, d5.aQ, lVar);
            }
            int size = c0133a.aR.size();
            for (int i2 = 0; i2 < size; i2++) {
                a.b bVar = c0133a.aR.get(i2);
                if (bVar.aP == com.google.android.exoplayer2.extractor.c.a.ag) {
                    a(bVar.aQ, lVar, bArr);
                }
            }
        }
    }

    private static void a(a.C0133a c0133a, b bVar, long j, int i) {
        int i2;
        int i3;
        List<a.b> list = c0133a.aR;
        int size = list.size();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < size) {
            a.b bVar2 = list.get(i4);
            if (bVar2.aP == com.google.android.exoplayer2.extractor.c.a.z) {
                com.google.android.exoplayer2.util.l lVar = bVar2.aQ;
                lVar.c(12);
                int s = lVar.s();
                if (s > 0) {
                    i2 = s + i5;
                    i3 = i6 + 1;
                    i4++;
                    i6 = i3;
                    i5 = i2;
                }
            }
            i2 = i5;
            i3 = i6;
            i4++;
            i6 = i3;
            i5 = i2;
        }
        bVar.g = 0;
        bVar.f = 0;
        bVar.e = 0;
        bVar.f3226a.a(i6, i5);
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            a.b bVar3 = list.get(i9);
            if (bVar3.aP == com.google.android.exoplayer2.extractor.c.a.z) {
                i7 = a(bVar, i8, j, i, bVar3.aQ, i7);
                i8++;
            }
        }
    }

    private static void a(k kVar, com.google.android.exoplayer2.util.l lVar, l lVar2) throws ParserException {
        int i;
        boolean z = true;
        int i2 = kVar.b;
        lVar.c(8);
        if ((com.google.android.exoplayer2.extractor.c.a.b(lVar.m()) & 1) == 1) {
            lVar.d(8);
        }
        int f = lVar.f();
        int s = lVar.s();
        if (s != lVar2.f) {
            throw new ParserException("Length mismatch: " + s + ", " + lVar2.f);
        }
        if (f == 0) {
            boolean[] zArr = lVar2.n;
            int i3 = 0;
            i = 0;
            while (i3 < s) {
                int f2 = lVar.f();
                int i4 = i + f2;
                zArr[i3] = f2 > i2;
                i3++;
                i = i4;
            }
        } else {
            if (f <= i2) {
                z = false;
            }
            i = (f * s) + 0;
            Arrays.fill(lVar2.n, 0, s, z);
        }
        lVar2.a(i);
    }

    private static void a(com.google.android.exoplayer2.util.l lVar, l lVar2) throws ParserException {
        lVar.c(8);
        int m = lVar.m();
        if ((com.google.android.exoplayer2.extractor.c.a.b(m) & 1) == 1) {
            lVar.d(8);
        }
        int s = lVar.s();
        if (s != 1) {
            throw new ParserException("Unexpected saio entry count: " + s);
        }
        int a2 = com.google.android.exoplayer2.extractor.c.a.a(m);
        lVar2.d = (a2 == 0 ? lVar.k() : lVar.u()) + lVar2.d;
    }

    private static b a(com.google.android.exoplayer2.util.l lVar, SparseArray<b> sparseArray, int i) {
        lVar.c(8);
        int b2 = com.google.android.exoplayer2.extractor.c.a.b(lVar.m());
        int m = lVar.m();
        if ((i & 16) != 0) {
            m = 0;
        }
        b bVar = sparseArray.get(m);
        if (bVar == null) {
            return null;
        }
        if ((b2 & 1) != 0) {
            long u = lVar.u();
            bVar.f3226a.c = u;
            bVar.f3226a.d = u;
        }
        c cVar = bVar.d;
        bVar.f3226a.f3233a = new c((b2 & 2) != 0 ? lVar.s() - 1 : cVar.f3222a, (b2 & 8) != 0 ? lVar.s() : cVar.b, (b2 & 16) != 0 ? lVar.s() : cVar.c, (b2 & 32) != 0 ? lVar.s() : cVar.d);
        return bVar;
    }

    private static long d(com.google.android.exoplayer2.util.l lVar) {
        lVar.c(8);
        return com.google.android.exoplayer2.extractor.c.a.a(lVar.m()) == 1 ? lVar.u() : lVar.k();
    }

    private static int a(b bVar, int i, long j, int i2, com.google.android.exoplayer2.util.l lVar, int i3) {
        long j2;
        int m;
        lVar.c(8);
        int b2 = com.google.android.exoplayer2.extractor.c.a.b(lVar.m());
        j jVar = bVar.c;
        l lVar2 = bVar.f3226a;
        c cVar = lVar2.f3233a;
        lVar2.h[i] = lVar.s();
        lVar2.g[i] = lVar2.c;
        if ((b2 & 1) != 0) {
            long[] jArr = lVar2.g;
            jArr[i] = jArr[i] + lVar.m();
        }
        boolean z = (b2 & 4) != 0;
        int i4 = cVar.d;
        if (z) {
            i4 = lVar.s();
        }
        boolean z2 = (b2 & 256) != 0;
        boolean z3 = (b2 & 512) != 0;
        boolean z4 = (b2 & 1024) != 0;
        boolean z5 = (b2 & Barcode.PDF417) != 0;
        if (jVar.i == null || jVar.i.length != 1 || jVar.i[0] != 0) {
            j2 = 0;
        } else {
            j2 = v.a(jVar.j[0], 1000L, jVar.c);
        }
        int[] iArr = lVar2.i;
        int[] iArr2 = lVar2.j;
        long[] jArr2 = lVar2.k;
        boolean[] zArr = lVar2.l;
        boolean z6 = jVar.b == 2 && (i2 & 1) != 0;
        int i5 = i3 + lVar2.h[i];
        long j3 = jVar.c;
        if (i > 0) {
            j = lVar2.s;
        }
        long j4 = j;
        while (i3 < i5) {
            int s = z2 ? lVar.s() : cVar.b;
            int s2 = z3 ? lVar.s() : cVar.c;
            if (i3 != 0 || !z) {
                m = z4 ? lVar.m() : cVar.d;
            } else {
                m = i4;
            }
            if (z5) {
                iArr2[i3] = (int) ((lVar.m() * 1000) / j3);
            } else {
                iArr2[i3] = 0;
            }
            jArr2[i3] = v.a(j4, 1000L, j3) - j2;
            iArr[i3] = s2;
            zArr[i3] = ((m >> 16) & 1) == 0 && (!z6 || i3 == 0);
            j4 += s;
            i3++;
        }
        lVar2.s = j4;
        return i5;
    }

    private static void a(com.google.android.exoplayer2.util.l lVar, l lVar2, byte[] bArr) throws ParserException {
        lVar.c(8);
        lVar.a(bArr, 0, 16);
        if (Arrays.equals(bArr, c)) {
            a(lVar, 16, lVar2);
        }
    }

    private static void b(com.google.android.exoplayer2.util.l lVar, l lVar2) throws ParserException {
        a(lVar, 0, lVar2);
    }

    private static void a(com.google.android.exoplayer2.util.l lVar, int i, l lVar2) throws ParserException {
        lVar.c(i + 8);
        int b2 = com.google.android.exoplayer2.extractor.c.a.b(lVar.m());
        if ((b2 & 1) != 0) {
            throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (b2 & 2) != 0;
        int s = lVar.s();
        if (s != lVar2.f) {
            throw new ParserException("Length mismatch: " + s + ", " + lVar2.f);
        }
        Arrays.fill(lVar2.n, 0, s, z);
        lVar2.a(lVar.b());
        lVar2.a(lVar);
    }

    private static void a(com.google.android.exoplayer2.util.l lVar, com.google.android.exoplayer2.util.l lVar2, l lVar3) throws ParserException {
        lVar.c(8);
        int m = lVar.m();
        if (lVar.m() == b) {
            if (com.google.android.exoplayer2.extractor.c.a.a(m) == 1) {
                lVar.d(4);
            }
            if (lVar.m() != 1) {
                throw new ParserException("Entry count in sbgp != 1 (unsupported).");
            }
            lVar2.c(8);
            int m2 = lVar2.m();
            if (lVar2.m() == b) {
                int a2 = com.google.android.exoplayer2.extractor.c.a.a(m2);
                if (a2 == 1) {
                    if (lVar2.k() == 0) {
                        throw new ParserException("Variable length decription in sgpd found (unsupported)");
                    }
                } else if (a2 >= 2) {
                    lVar2.d(4);
                }
                if (lVar2.k() != 1) {
                    throw new ParserException("Entry count in sgpd != 1 (unsupported).");
                }
                lVar2.d(2);
                boolean z = lVar2.f() == 1;
                if (z) {
                    int f = lVar2.f();
                    byte[] bArr = new byte[16];
                    lVar2.a(bArr, 0, bArr.length);
                    lVar3.m = true;
                    lVar3.o = new k(z, f, bArr);
                }
            }
        }
    }

    private static Pair<Long, com.google.android.exoplayer2.extractor.a> a(com.google.android.exoplayer2.util.l lVar, long j) throws ParserException {
        long u;
        long j2;
        lVar.c(8);
        int a2 = com.google.android.exoplayer2.extractor.c.a.a(lVar.m());
        lVar.d(4);
        long k = lVar.k();
        if (a2 == 0) {
            long k2 = lVar.k();
            u = lVar.k() + j;
            j2 = k2;
        } else {
            long u2 = lVar.u();
            u = lVar.u() + j;
            j2 = u2;
        }
        long a3 = v.a(j2, 1000000L, k);
        lVar.d(2);
        int g = lVar.g();
        int[] iArr = new int[g];
        long[] jArr = new long[g];
        long[] jArr2 = new long[g];
        long[] jArr3 = new long[g];
        long j3 = u;
        int i = 0;
        long j4 = j2;
        long j5 = a3;
        while (i < g) {
            int m = lVar.m();
            if ((Integer.MIN_VALUE & m) != 0) {
                throw new ParserException("Unhandled indirect reference");
            }
            long k3 = lVar.k();
            iArr[i] = m & Integer.MAX_VALUE;
            jArr[i] = j3;
            jArr3[i] = j5;
            long j6 = j4 + k3;
            long a4 = v.a(j6, 1000000L, k);
            jArr2[i] = a4 - jArr3[i];
            lVar.d(4);
            j3 += iArr[i];
            i++;
            j4 = j6;
            j5 = a4;
        }
        return Pair.create(Long.valueOf(a3), new com.google.android.exoplayer2.extractor.a(iArr, jArr, jArr2, jArr3));
    }

    private void d(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        long j;
        b bVar;
        b bVar2 = null;
        long j2 = Clock.MAX_TIME;
        int size = this.f.size();
        int i = 0;
        while (i < size) {
            l lVar = this.f.valueAt(i).f3226a;
            if (!lVar.r || lVar.d >= j2) {
                j = j2;
                bVar = bVar2;
            } else {
                j = lVar.d;
                bVar = this.f.valueAt(i);
            }
            i++;
            bVar2 = bVar;
            j2 = j;
        }
        if (bVar2 == null) {
            this.p = 3;
            return;
        }
        int c2 = (int) (j2 - gVar.c());
        if (c2 < 0) {
            throw new ParserException("Offset to encryption data was negative.");
        }
        gVar.b(c2);
        bVar2.f3226a.a(gVar);
    }

    private boolean e(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        int a2;
        if (this.p == 3) {
            if (this.y == null) {
                b a3 = a(this.f);
                if (a3 == null) {
                    int c2 = (int) (this.u - gVar.c());
                    if (c2 < 0) {
                        throw new ParserException("Offset to end of mdat was negative.");
                    }
                    gVar.b(c2);
                    a();
                    return false;
                }
                int c3 = (int) (a3.f3226a.g[a3.g] - gVar.c());
                if (c3 < 0) {
                    Log.w("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                    c3 = 0;
                }
                gVar.b(c3);
                this.y = a3;
            }
            this.z = this.y.f3226a.i[this.y.e];
            if (this.y.f3226a.m) {
                this.A = a(this.y);
                this.z += this.A;
            } else {
                this.A = 0;
            }
            if (this.y.c.g == 1) {
                this.z -= 8;
                gVar.b(8);
            }
            this.p = 4;
            this.B = 0;
        }
        l lVar = this.y.f3226a;
        j jVar = this.y.c;
        n nVar = this.y.b;
        int i = this.y.e;
        if (jVar.k != 0) {
            byte[] bArr = this.h.f3511a;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i2 = jVar.k + 1;
            int i3 = 4 - jVar.k;
            while (this.A < this.z) {
                if (this.B == 0) {
                    gVar.b(bArr, i3, i2);
                    this.h.c(0);
                    this.B = this.h.s() - 1;
                    this.g.c(0);
                    nVar.a(this.g, 4);
                    nVar.a(this.h, 1);
                    this.C = this.F != null && com.google.android.exoplayer2.util.j.a(jVar.f.f, bArr[4]);
                    this.A += 5;
                    this.z += i3;
                } else {
                    if (this.C) {
                        this.i.a(this.B);
                        gVar.b(this.i.f3511a, 0, this.B);
                        nVar.a(this.i, this.B);
                        int i4 = this.B;
                        int a4 = com.google.android.exoplayer2.util.j.a(this.i.f3511a, this.i.c());
                        this.i.c("video/hevc".equals(jVar.f.f) ? 1 : 0);
                        this.i.b(a4);
                        com.google.android.exoplayer2.text.a.g.a(lVar.b(i) * 1000, this.i, this.F);
                        a2 = i4;
                    } else {
                        a2 = nVar.a(gVar, this.B, false);
                    }
                    this.A += a2;
                    this.B -= a2;
                }
            }
        } else {
            while (this.A < this.z) {
                this.A = nVar.a(gVar, this.z - this.A, false) + this.A;
            }
        }
        long b2 = 1000 * lVar.b(i);
        int i5 = (lVar.m ? 1073741824 : 0) | (lVar.l[i] ? 1 : 0);
        int i6 = lVar.f3233a.f3222a;
        byte[] bArr2 = null;
        if (lVar.m) {
            bArr2 = lVar.o != null ? lVar.o.c : jVar.h[i6].c;
        }
        long c4 = this.k != null ? this.k.c(b2) : b2;
        nVar.a(c4, i5, this.z, 0, bArr2);
        while (!this.o.isEmpty()) {
            a removeFirst = this.o.removeFirst();
            this.v -= removeFirst.b;
            this.E.a(removeFirst.f3225a + c4, 1, removeFirst.b, this.v, null);
        }
        this.y.e++;
        this.y.f++;
        if (this.y.f == lVar.h[this.y.g]) {
            this.y.g++;
            this.y.f = 0;
            this.y = null;
        }
        this.p = 3;
        return true;
    }

    private static b a(SparseArray<b> sparseArray) {
        b bVar;
        long j;
        b bVar2 = null;
        long j2 = Clock.MAX_TIME;
        int size = sparseArray.size();
        int i = 0;
        while (i < size) {
            b valueAt = sparseArray.valueAt(i);
            if (valueAt.g == valueAt.f3226a.e) {
                long j3 = j2;
                bVar = bVar2;
                j = j3;
            } else {
                long j4 = valueAt.f3226a.g[valueAt.g];
                if (j4 < j2) {
                    bVar = valueAt;
                    j = j4;
                } else {
                    long j5 = j2;
                    bVar = bVar2;
                    j = j5;
                }
            }
            i++;
            bVar2 = bVar;
            j2 = j;
        }
        return bVar2;
    }

    private int a(b bVar) {
        l lVar = bVar.f3226a;
        com.google.android.exoplayer2.util.l lVar2 = lVar.q;
        int i = (lVar.o != null ? lVar.o : bVar.c.h[lVar.f3233a.f3222a]).b;
        boolean z = lVar.n[bVar.e];
        this.j.f3511a[0] = (byte) ((z ? 128 : 0) | i);
        this.j.c(0);
        n nVar = bVar.b;
        nVar.a(this.j, 1);
        nVar.a(lVar2, i);
        if (!z) {
            return i + 1;
        }
        int g = lVar2.g();
        lVar2.d(-2);
        int i2 = (g * 6) + 2;
        nVar.a(lVar2, i2);
        return i + 1 + i2;
    }

    private static DrmInitData a(List<a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            a.b bVar = list.get(i);
            if (bVar.aP == com.google.android.exoplayer2.extractor.c.a.U) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = bVar.aQ.f3511a;
                UUID a2 = h.a(bArr);
                if (a2 == null) {
                    Log.w("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(a2, "video/mp4", bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private static boolean a(int i) {
        return i == com.google.android.exoplayer2.extractor.c.a.S || i == com.google.android.exoplayer2.extractor.c.a.R || i == com.google.android.exoplayer2.extractor.c.a.C || i == com.google.android.exoplayer2.extractor.c.a.A || i == com.google.android.exoplayer2.extractor.c.a.T || i == com.google.android.exoplayer2.extractor.c.a.w || i == com.google.android.exoplayer2.extractor.c.a.x || i == com.google.android.exoplayer2.extractor.c.a.O || i == com.google.android.exoplayer2.extractor.c.a.y || i == com.google.android.exoplayer2.extractor.c.a.z || i == com.google.android.exoplayer2.extractor.c.a.U || i == com.google.android.exoplayer2.extractor.c.a.ac || i == com.google.android.exoplayer2.extractor.c.a.ad || i == com.google.android.exoplayer2.extractor.c.a.ah || i == com.google.android.exoplayer2.extractor.c.a.ag || i == com.google.android.exoplayer2.extractor.c.a.ae || i == com.google.android.exoplayer2.extractor.c.a.af || i == com.google.android.exoplayer2.extractor.c.a.Q || i == com.google.android.exoplayer2.extractor.c.a.N || i == com.google.android.exoplayer2.extractor.c.a.aG;
    }

    private static boolean b(int i) {
        return i == com.google.android.exoplayer2.extractor.c.a.B || i == com.google.android.exoplayer2.extractor.c.a.D || i == com.google.android.exoplayer2.extractor.c.a.E || i == com.google.android.exoplayer2.extractor.c.a.F || i == com.google.android.exoplayer2.extractor.c.a.G || i == com.google.android.exoplayer2.extractor.c.a.K || i == com.google.android.exoplayer2.extractor.c.a.L || i == com.google.android.exoplayer2.extractor.c.a.M || i == com.google.android.exoplayer2.extractor.c.a.P;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentedMp4Extractor.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f3225a;
        public final int b;

        public a(long j, int i) {
            this.f3225a = j;
            this.b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentedMp4Extractor.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final l f3226a = new l();
        public final n b;
        public j c;
        public c d;
        public int e;
        public int f;
        public int g;

        public b(n nVar) {
            this.b = nVar;
        }

        public void a(j jVar, c cVar) {
            this.c = (j) com.google.android.exoplayer2.util.a.a(jVar);
            this.d = (c) com.google.android.exoplayer2.util.a.a(cVar);
            this.b.a(jVar.f);
            a();
        }

        public void a() {
            this.f3226a.a();
            this.e = 0;
            this.g = 0;
            this.f = 0;
        }

        public void a(DrmInitData drmInitData) {
            this.b.a(this.c.f.a(drmInitData));
        }
    }
}
