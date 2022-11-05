package com.google.android.exoplayer2.source.b;

import android.os.Handler;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.d;
import com.google.android.exoplayer2.source.a;
import com.google.android.exoplayer2.source.b.a.a;
import com.google.android.exoplayer2.source.b.c;
import com.google.android.exoplayer2.source.j;
import com.google.android.exoplayer2.source.m;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.IOException;
import java.util.LinkedList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HlsSampleStreamWrapper.java */
/* loaded from: classes2.dex */
public final class j implements d.c, com.google.android.exoplayer2.extractor.h, com.google.android.exoplayer2.source.j, Loader.a<com.google.android.exoplayer2.source.a.c> {

    /* renamed from: a  reason: collision with root package name */
    private final int f3367a;
    private final a b;
    private final c c;
    private final com.google.android.exoplayer2.upstream.b d;
    private final Format e;
    private final int f;
    private final a.C0138a h;
    private boolean n;
    private boolean o;
    private int p;
    private Format q;
    private int r;
    private boolean s;
    private m t;
    private int u;
    private boolean[] v;
    private long w;
    private long x;
    private boolean y;
    private final Loader g = new Loader("Loader:HlsSampleStreamWrapper");
    private final c.b i = new c.b();
    private final SparseArray<com.google.android.exoplayer2.extractor.d> j = new SparseArray<>();
    private final LinkedList<f> k = new LinkedList<>();
    private final Runnable l = new Runnable() { // from class: com.google.android.exoplayer2.source.b.j.1
        @Override // java.lang.Runnable
        public void run() {
            j.this.h();
        }
    };
    private final Handler m = new Handler();

    /* compiled from: HlsSampleStreamWrapper.java */
    /* loaded from: classes2.dex */
    public interface a extends j.a<j> {
        void a(a.C0139a c0139a);

        void g();
    }

    public j(int i, a aVar, c cVar, com.google.android.exoplayer2.upstream.b bVar, long j, Format format, int i2, a.C0138a c0138a) {
        this.f3367a = i;
        this.b = aVar;
        this.c = cVar;
        this.d = bVar;
        this.e = format;
        this.f = i2;
        this.h = c0138a;
        this.w = j;
        this.x = j;
    }

    public void b() {
        if (!this.o) {
            a(this.w);
        }
    }

    public void b(Format format) {
        a(0, -1).a(format);
        this.n = true;
        h();
    }

    public void c() throws IOException {
        g();
    }

    public m d() {
        return this.t;
    }

    public boolean a(com.google.android.exoplayer2.b.f[] fVarArr, boolean[] zArr, com.google.android.exoplayer2.source.i[] iVarArr, boolean[] zArr2, boolean z) {
        boolean z2;
        com.google.android.exoplayer2.util.a.b(this.o);
        for (int i = 0; i < fVarArr.length; i++) {
            if (iVarArr[i] != null && (fVarArr[i] == null || !zArr[i])) {
                int i2 = ((i) iVarArr[i]).f3366a;
                b(i2, false);
                this.j.valueAt(i2).c();
                iVarArr[i] = null;
            }
        }
        int i3 = 0;
        boolean z3 = false;
        com.google.android.exoplayer2.b.f fVar = null;
        while (i3 < fVarArr.length) {
            if (iVarArr[i3] != null || fVarArr[i3] == null) {
                z2 = z3;
            } else {
                com.google.android.exoplayer2.b.f fVar2 = fVarArr[i3];
                int a2 = this.t.a(fVar2.d());
                b(a2, true);
                if (a2 == this.u) {
                    this.c.a(fVar2);
                } else {
                    fVar2 = fVar;
                }
                iVarArr[i3] = new i(this, a2);
                zArr2[i3] = true;
                fVar = fVar2;
                z2 = true;
            }
            i3++;
            z3 = z2;
        }
        if (z) {
            int size = this.j.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (!this.v[i4]) {
                    this.j.valueAt(i4).c();
                }
            }
            if (fVar != null && !this.k.isEmpty()) {
                fVar.a(0L);
                if (fVar.g() != this.c.b().a(this.k.getLast().c)) {
                    b(this.w);
                }
            }
        }
        if (this.p == 0) {
            this.c.c();
            this.q = null;
            this.k.clear();
            if (this.g.a()) {
                this.g.b();
            }
        }
        return z3;
    }

    public void b(long j) {
        this.w = j;
        this.x = j;
        this.y = false;
        this.k.clear();
        if (this.g.a()) {
            this.g.b();
            return;
        }
        int size = this.j.size();
        for (int i = 0; i < size; i++) {
            this.j.valueAt(i).a(this.v[i]);
        }
    }

    public long e() {
        if (this.y) {
            return Long.MIN_VALUE;
        }
        if (j()) {
            return this.x;
        }
        long j = this.w;
        f last = this.k.getLast();
        if (!last.g()) {
            last = this.k.size() > 1 ? this.k.get(this.k.size() - 2) : null;
        }
        long max = last != null ? Math.max(j, last.g) : j;
        int size = this.j.size();
        long j2 = max;
        for (int i = 0; i < size; i++) {
            j2 = Math.max(j2, this.j.valueAt(i).h());
        }
        return j2;
    }

    public void f() {
        int size = this.j.size();
        for (int i = 0; i < size; i++) {
            this.j.valueAt(i).c();
        }
        this.g.c();
        this.m.removeCallbacksAndMessages(null);
        this.s = true;
    }

    public void a(boolean z) {
        this.c.a(z);
    }

    public void a(a.C0139a c0139a, long j) {
        this.c.a(c0139a, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i) {
        return this.y || (!j() && !this.j.valueAt(i).d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() throws IOException {
        this.g.d();
        this.c.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i, com.google.android.exoplayer2.h hVar, com.google.android.exoplayer2.a.e eVar, boolean z) {
        if (j()) {
            return -3;
        }
        while (this.k.size() > 1 && a(this.k.getFirst())) {
            this.k.removeFirst();
        }
        f first = this.k.getFirst();
        Format format = first.c;
        if (!format.equals(this.q)) {
            this.h.a(this.f3367a, format, first.d, first.e, first.f);
        }
        this.q = format;
        return this.j.valueAt(i).a(hVar, eVar, z, this.y, this.w);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, long j) {
        this.j.valueAt(i).a(j);
    }

    private boolean a(f fVar) {
        int i = fVar.j;
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            if (this.v[i2] && this.j.valueAt(i2).f() == i) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.source.j
    public boolean a(long j) {
        if (this.y || this.g.a()) {
            return false;
        }
        c cVar = this.c;
        f last = this.k.isEmpty() ? null : this.k.getLast();
        if (this.x != -9223372036854775807L) {
            j = this.x;
        }
        cVar.a(last, j, this.i);
        boolean z = this.i.b;
        com.google.android.exoplayer2.source.a.c cVar2 = this.i.f3362a;
        a.C0139a c0139a = this.i.c;
        this.i.a();
        if (z) {
            this.y = true;
            return true;
        } else if (cVar2 == null) {
            if (c0139a != null) {
                this.b.a(c0139a);
            }
            return false;
        } else {
            if (a(cVar2)) {
                this.x = -9223372036854775807L;
                f fVar = (f) cVar2;
                fVar.a(this);
                this.k.add(fVar);
            }
            this.h.a(cVar2.f3344a, cVar2.b, this.f3367a, cVar2.c, cVar2.d, cVar2.e, cVar2.f, cVar2.g, this.g.a(cVar2, this, this.f));
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.source.j
    public long b_() {
        if (j()) {
            return this.x;
        }
        if (!this.y) {
            return this.k.getLast().g;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public void a(com.google.android.exoplayer2.source.a.c cVar, long j, long j2) {
        this.c.a(cVar);
        this.h.a(cVar.f3344a, cVar.b, this.f3367a, cVar.c, cVar.d, cVar.e, cVar.f, cVar.g, j, j2, cVar.e());
        if (!this.o) {
            a(this.w);
        } else {
            this.b.a((a) this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public void a(com.google.android.exoplayer2.source.a.c cVar, long j, long j2, boolean z) {
        this.h.b(cVar.f3344a, cVar.b, this.f3367a, cVar.c, cVar.d, cVar.e, cVar.f, cVar.g, j, j2, cVar.e());
        if (!z) {
            int size = this.j.size();
            for (int i = 0; i < size; i++) {
                this.j.valueAt(i).a(this.v[i]);
            }
            this.b.a((a) this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public int a(com.google.android.exoplayer2.source.a.c cVar, long j, long j2, IOException iOException) {
        long e = cVar.e();
        boolean a2 = a(cVar);
        boolean z = false;
        if (this.c.a(cVar, !a2 || e == 0, iOException)) {
            if (a2) {
                com.google.android.exoplayer2.util.a.b(this.k.removeLast() == cVar);
                if (this.k.isEmpty()) {
                    this.x = this.w;
                }
            }
            z = true;
        }
        this.h.a(cVar.f3344a, cVar.b, this.f3367a, cVar.c, cVar.d, cVar.e, cVar.f, cVar.g, j, j2, cVar.e(), iOException, z);
        if (z) {
            if (!this.o) {
                a(this.w);
            } else {
                this.b.a((a) this);
            }
            return 2;
        }
        return 0;
    }

    public void a(int i, boolean z) {
        this.r = i;
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            this.j.valueAt(i2).a(i);
        }
        if (z) {
            for (int i3 = 0; i3 < this.j.size(); i3++) {
                this.j.valueAt(i3).a();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    /* renamed from: b */
    public com.google.android.exoplayer2.extractor.d a(int i, int i2) {
        if (this.j.indexOfKey(i) >= 0) {
            return this.j.get(i);
        }
        com.google.android.exoplayer2.extractor.d dVar = new com.google.android.exoplayer2.extractor.d(this.d);
        dVar.a(this);
        dVar.a(this.r);
        this.j.put(i, dVar);
        return dVar;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public void a() {
        this.n = true;
        this.m.post(this.l);
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public void a(com.google.android.exoplayer2.extractor.m mVar) {
    }

    @Override // com.google.android.exoplayer2.extractor.d.c
    public void a(Format format) {
        this.m.post(this.l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (!this.s && !this.o && this.n) {
            int size = this.j.size();
            for (int i = 0; i < size; i++) {
                if (this.j.valueAt(i).g() == null) {
                    return;
                }
            }
            i();
            this.o = true;
            this.b.g();
        }
    }

    private void i() {
        char c;
        int i;
        char c2;
        int size = this.j.size();
        int i2 = 0;
        int i3 = -1;
        char c3 = 0;
        while (i2 < size) {
            String str = this.j.valueAt(i2).g().f;
            if (com.google.android.exoplayer2.util.i.b(str)) {
                c = 3;
            } else if (com.google.android.exoplayer2.util.i.a(str)) {
                c = 2;
            } else {
                c = com.google.android.exoplayer2.util.i.c(str) ? (char) 1 : (char) 0;
            }
            if (c > c3) {
                c2 = c;
                i = i2;
            } else if (c != c3 || i3 == -1) {
                i = i3;
                c2 = c3;
            } else {
                i = -1;
                c2 = c3;
            }
            i2++;
            c3 = c2;
            i3 = i;
        }
        com.google.android.exoplayer2.source.l b = this.c.b();
        int i4 = b.f3407a;
        this.u = -1;
        this.v = new boolean[size];
        com.google.android.exoplayer2.source.l[] lVarArr = new com.google.android.exoplayer2.source.l[size];
        for (int i5 = 0; i5 < size; i5++) {
            Format g = this.j.valueAt(i5).g();
            if (i5 == i3) {
                Format[] formatArr = new Format[i4];
                for (int i6 = 0; i6 < i4; i6++) {
                    formatArr[i6] = a(b.a(i6), g);
                }
                lVarArr[i5] = new com.google.android.exoplayer2.source.l(formatArr);
                this.u = i5;
            } else {
                lVarArr[i5] = new com.google.android.exoplayer2.source.l(a((c3 != 3 || !com.google.android.exoplayer2.util.i.a(g.f)) ? null : this.e, g));
            }
        }
        this.t = new m(lVarArr);
    }

    private void b(int i, boolean z) {
        int i2 = 1;
        com.google.android.exoplayer2.util.a.b(this.v[i] != z);
        this.v[i] = z;
        int i3 = this.p;
        if (!z) {
            i2 = -1;
        }
        this.p = i3 + i2;
    }

    private static Format a(Format format, Format format2) {
        if (format != null) {
            String str = null;
            int g = com.google.android.exoplayer2.util.i.g(format2.f);
            if (g == 1) {
                str = a(format.c);
            } else if (g == 2) {
                str = b(format.c);
            }
            return format2.a(format.f3143a, str, format.b, format.j, format.k, format.w, format.x);
        }
        return format2;
    }

    private boolean a(com.google.android.exoplayer2.source.a.c cVar) {
        return cVar instanceof f;
    }

    private boolean j() {
        return this.x != -9223372036854775807L;
    }

    private static String a(String str) {
        return a(str, 1);
    }

    private static String b(String str) {
        return a(str, 2);
    }

    private static String a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("(\\s*,\\s*)|(\\s*$)");
        StringBuilder sb = new StringBuilder();
        for (String str2 : split) {
            if (i == com.google.android.exoplayer2.util.i.h(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() <= 0) {
            return null;
        }
        return sb.toString();
    }
}
