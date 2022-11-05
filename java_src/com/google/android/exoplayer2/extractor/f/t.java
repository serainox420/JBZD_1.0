package com.google.android.exoplayer2.extractor.f;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.facebook.internal.Utility;
import com.google.android.exoplayer2.extractor.f.u;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: TsExtractor.java */
/* loaded from: classes2.dex */
public final class t implements com.google.android.exoplayer2.extractor.f {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.i f3278a = new com.google.android.exoplayer2.extractor.i() { // from class: com.google.android.exoplayer2.extractor.f.t.1
        @Override // com.google.android.exoplayer2.extractor.i
        public com.google.android.exoplayer2.extractor.f[] a() {
            return new com.google.android.exoplayer2.extractor.f[]{new t()};
        }
    };
    private static final long b = v.g("AC-3");
    private static final long c = v.g("EAC3");
    private static final long d = v.g("HEVC");
    private final int e;
    private final List<com.google.android.exoplayer2.util.s> f;
    private final com.google.android.exoplayer2.util.l g;
    private final com.google.android.exoplayer2.util.k h;
    private final SparseIntArray i;
    private final u.b j;
    private final SparseArray<u> k;
    private final SparseBooleanArray l;
    private com.google.android.exoplayer2.extractor.h m;
    private int n;
    private boolean o;
    private u p;

    static /* synthetic */ int b(t tVar) {
        int i = tVar.n;
        tVar.n = i + 1;
        return i;
    }

    public t() {
        this(0, new com.google.android.exoplayer2.util.s(0L), new e());
    }

    public t(int i, com.google.android.exoplayer2.util.s sVar, u.b bVar) {
        this.j = (u.b) com.google.android.exoplayer2.util.a.a(bVar);
        this.e = i;
        if (i == 1 || i == 2) {
            this.f = Collections.singletonList(sVar);
        } else {
            this.f = new ArrayList();
            this.f.add(sVar);
        }
        this.g = new com.google.android.exoplayer2.util.l(940);
        this.h = new com.google.android.exoplayer2.util.k(new byte[3]);
        this.l = new SparseBooleanArray();
        this.k = new SparseArray<>();
        this.i = new SparseIntArray();
        e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
        r2 = r2 + 1;
     */
    @Override // com.google.android.exoplayer2.extractor.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        byte[] bArr = this.g.f3511a;
        gVar.c(bArr, 0, 940);
        int i = 0;
        while (i < 188) {
            for (int i2 = 0; i2 != 5; i2++) {
                if (bArr[(i2 * 188) + i] != 71) {
                    break;
                }
            }
            gVar.b(i);
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(com.google.android.exoplayer2.extractor.h hVar) {
        this.m = hVar;
        hVar.a(new m.a(-9223372036854775807L));
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            this.f.get(i).d();
        }
        this.g.a();
        this.i.clear();
        e();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0112  */
    @Override // com.google.android.exoplayer2.extractor.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int a(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        boolean z;
        u uVar;
        byte[] bArr = this.g.f3511a;
        if (940 - this.g.d() < 188) {
            int b2 = this.g.b();
            if (b2 > 0) {
                System.arraycopy(bArr, this.g.d(), bArr, 0, b2);
            }
            this.g.a(bArr, b2);
        }
        while (this.g.b() < 188) {
            int c2 = this.g.c();
            int a2 = gVar.a(bArr, c2, 940 - c2);
            if (a2 == -1) {
                return -1;
            }
            this.g.b(c2 + a2);
        }
        int c3 = this.g.c();
        int d2 = this.g.d();
        while (d2 < c3 && bArr[d2] != 71) {
            d2++;
        }
        this.g.c(d2);
        int i = d2 + 188;
        if (i <= c3) {
            this.g.d(1);
            this.g.a(this.h, 3);
            if (this.h.c()) {
                this.g.c(i);
                return 0;
            }
            boolean c4 = this.h.c();
            this.h.b(1);
            int c5 = this.h.c(13);
            this.h.b(2);
            boolean c6 = this.h.c();
            boolean c7 = this.h.c();
            int c8 = this.h.c(4);
            if (this.e != 2) {
                int i2 = this.i.get(c5, c8 - 1);
                this.i.put(c5, c8);
                if (i2 == c8) {
                    if (c7) {
                        this.g.c(i);
                        return 0;
                    }
                } else if (c8 != (i2 + 1) % 16) {
                    z = true;
                    if (c6) {
                        this.g.d(this.g.f());
                    }
                    if (c7 && (uVar = this.k.get(c5)) != null) {
                        if (z) {
                            uVar.a();
                        }
                        this.g.b(i);
                        uVar.a(this.g, c4);
                        com.google.android.exoplayer2.util.a.b(this.g.d() > i);
                        this.g.b(c3);
                    }
                    this.g.c(i);
                    return 0;
                }
            }
            z = false;
            if (c6) {
            }
            if (c7) {
                if (z) {
                }
                this.g.b(i);
                uVar.a(this.g, c4);
                com.google.android.exoplayer2.util.a.b(this.g.d() > i);
                this.g.b(c3);
            }
            this.g.c(i);
            return 0;
        }
        return 0;
    }

    private void e() {
        this.l.clear();
        this.k.clear();
        SparseArray<u> a2 = this.j.a();
        int size = a2.size();
        for (int i = 0; i < size; i++) {
            this.k.put(a2.keyAt(i), a2.valueAt(i));
        }
        this.k.put(0, new q(new a()));
        this.p = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TsExtractor.java */
    /* loaded from: classes2.dex */
    public class a implements p {
        private final com.google.android.exoplayer2.util.k b = new com.google.android.exoplayer2.util.k(new byte[4]);

        public a() {
        }

        @Override // com.google.android.exoplayer2.extractor.f.p
        public void a(com.google.android.exoplayer2.util.s sVar, com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        }

        @Override // com.google.android.exoplayer2.extractor.f.p
        public void a(com.google.android.exoplayer2.util.l lVar) {
            if (lVar.f() == 0) {
                lVar.d(7);
                int b = lVar.b() / 4;
                for (int i = 0; i < b; i++) {
                    lVar.a(this.b, 4);
                    int c = this.b.c(16);
                    this.b.b(3);
                    if (c == 0) {
                        this.b.b(13);
                    } else {
                        int c2 = this.b.c(13);
                        t.this.k.put(c2, new q(new b(c2)));
                        t.b(t.this);
                    }
                }
                if (t.this.e != 2) {
                    t.this.k.remove(0);
                }
            }
        }
    }

    /* compiled from: TsExtractor.java */
    /* loaded from: classes2.dex */
    private class b implements p {
        private final com.google.android.exoplayer2.util.k b = new com.google.android.exoplayer2.util.k(new byte[5]);
        private final int c;

        public b(int i) {
            this.c = i;
        }

        @Override // com.google.android.exoplayer2.extractor.f.p
        public void a(com.google.android.exoplayer2.util.s sVar, com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        }

        @Override // com.google.android.exoplayer2.extractor.f.p
        public void a(com.google.android.exoplayer2.util.l lVar) {
            com.google.android.exoplayer2.util.s sVar;
            u a2;
            if (lVar.f() == 2) {
                if (t.this.e == 1 || t.this.e == 2 || t.this.n == 1) {
                    sVar = (com.google.android.exoplayer2.util.s) t.this.f.get(0);
                } else {
                    com.google.android.exoplayer2.util.s sVar2 = new com.google.android.exoplayer2.util.s(((com.google.android.exoplayer2.util.s) t.this.f.get(0)).a());
                    t.this.f.add(sVar2);
                    sVar = sVar2;
                }
                lVar.d(2);
                int g = lVar.g();
                lVar.d(5);
                lVar.a(this.b, 2);
                this.b.b(4);
                lVar.d(this.b.c(12));
                if (t.this.e == 2 && t.this.p == null) {
                    t.this.p = t.this.j.a(21, new u.a(21, null, new byte[0]));
                    t.this.p.a(sVar, t.this.m, new u.c(g, 21, Utility.DEFAULT_STREAM_BUFFER_SIZE));
                }
                int b = lVar.b();
                while (b > 0) {
                    lVar.a(this.b, 5);
                    int c = this.b.c(8);
                    this.b.b(3);
                    int c2 = this.b.c(13);
                    this.b.b(4);
                    int c3 = this.b.c(12);
                    u.a a3 = a(lVar, c3);
                    if (c == 6) {
                        c = a3.f3281a;
                    }
                    int i = b - (c3 + 5);
                    int i2 = t.this.e == 2 ? c : c2;
                    if (t.this.l.get(i2)) {
                        b = i;
                    } else {
                        t.this.l.put(i2, true);
                        if (t.this.e != 2 || c != 21) {
                            a2 = t.this.j.a(c, a3);
                            if (a2 != null) {
                                a2.a(sVar, t.this.m, new u.c(g, i2, Utility.DEFAULT_STREAM_BUFFER_SIZE));
                            }
                        } else {
                            a2 = t.this.p;
                        }
                        if (a2 != null) {
                            t.this.k.put(c2, a2);
                        }
                        b = i;
                    }
                }
                if (t.this.e == 2) {
                    if (!t.this.o) {
                        t.this.m.a();
                        t.this.n = 0;
                        t.this.o = true;
                        return;
                    }
                    return;
                }
                t.this.k.remove(this.c);
                t.this.n = t.this.e == 1 ? 0 : t.this.n - 1;
                if (t.this.n == 0) {
                    t.this.m.a();
                    t.this.o = true;
                }
            }
        }

        private u.a a(com.google.android.exoplayer2.util.l lVar, int i) {
            int d = lVar.d();
            int i2 = d + i;
            int i3 = -1;
            String str = null;
            while (lVar.d() < i2) {
                int f = lVar.f();
                int f2 = lVar.f() + lVar.d();
                if (f == 5) {
                    long k = lVar.k();
                    if (k == t.b) {
                        i3 = 129;
                    } else if (k == t.c) {
                        i3 = 135;
                    } else if (k == t.d) {
                        i3 = 36;
                    }
                } else if (f == 106) {
                    i3 = 129;
                } else if (f == 122) {
                    i3 = 135;
                } else if (f == 123) {
                    i3 = 138;
                } else if (f == 10) {
                    str = new String(lVar.f3511a, lVar.d(), 3).trim();
                }
                lVar.d(f2 - lVar.d());
            }
            lVar.c(i2);
            return new u.a(i3, str, Arrays.copyOfRange(lVar.f3511a, d, i2));
        }
    }
}
