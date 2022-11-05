package com.google.android.exoplayer2.source.a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.a;
import com.google.android.exoplayer2.source.a.g;
import com.google.android.exoplayer2.source.j;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
/* compiled from: ChunkSampleStream.java */
/* loaded from: classes2.dex */
public class f<T extends g> implements com.google.android.exoplayer2.source.i, com.google.android.exoplayer2.source.j, Loader.a<c> {

    /* renamed from: a  reason: collision with root package name */
    long f3348a;
    boolean b;
    private final int c;
    private final int[] d;
    private final boolean[] e;
    private final T f;
    private final j.a<f<T>> g;
    private final a.C0138a h;
    private final int i;
    private final Loader j = new Loader("Loader:ChunkSampleStream");
    private final e k = new e();
    private final LinkedList<com.google.android.exoplayer2.source.a.a> l = new LinkedList<>();
    private final List<com.google.android.exoplayer2.source.a.a> m = Collections.unmodifiableList(this.l);
    private final com.google.android.exoplayer2.extractor.d n;
    private final com.google.android.exoplayer2.extractor.d[] o;
    private final b p;
    private Format q;
    private long r;

    public f(int i, int[] iArr, T t, j.a<f<T>> aVar, com.google.android.exoplayer2.upstream.b bVar, long j, int i2, a.C0138a c0138a) {
        this.c = i;
        this.d = iArr;
        this.f = t;
        this.g = aVar;
        this.h = c0138a;
        this.i = i2;
        int length = iArr == null ? 0 : iArr.length;
        this.o = new com.google.android.exoplayer2.extractor.d[length];
        this.e = new boolean[length];
        int[] iArr2 = new int[length + 1];
        com.google.android.exoplayer2.extractor.d[] dVarArr = new com.google.android.exoplayer2.extractor.d[length + 1];
        this.n = new com.google.android.exoplayer2.extractor.d(bVar);
        iArr2[0] = i;
        dVarArr[0] = this.n;
        for (int i3 = 0; i3 < length; i3++) {
            com.google.android.exoplayer2.extractor.d dVar = new com.google.android.exoplayer2.extractor.d(bVar);
            this.o[i3] = dVar;
            dVarArr[i3 + 1] = dVar;
            iArr2[i3 + 1] = iArr[i3];
        }
        this.p = new b(iArr2, dVarArr);
        this.r = j;
        this.f3348a = j;
    }

    public void b(long j) {
        for (int i = 0; i < this.o.length; i++) {
            if (!this.e[i]) {
                this.o[i].a(j, true);
            }
        }
    }

    public f<T>.a a(long j, int i) {
        boolean z = false;
        for (int i2 = 0; i2 < this.o.length; i2++) {
            if (this.d[i2] == i) {
                if (!this.e[i2]) {
                    z = true;
                }
                com.google.android.exoplayer2.util.a.b(z);
                this.e[i2] = true;
                this.o[i2].a(j, true);
                return new a(this, this.o[i2], i2);
            }
        }
        throw new IllegalStateException();
    }

    public T c() {
        return this.f;
    }

    public long d() {
        if (this.b) {
            return Long.MIN_VALUE;
        }
        if (f()) {
            return this.r;
        }
        long j = this.f3348a;
        com.google.android.exoplayer2.source.a.a last = this.l.getLast();
        if (!last.g()) {
            last = this.l.size() > 1 ? this.l.get(this.l.size() - 2) : null;
        }
        return Math.max(last != null ? Math.max(j, last.g) : j, this.n.h());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e A[LOOP:0: B:11:0x001e->B:15:0x003a, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c(long j) {
        boolean z;
        int i = 0;
        this.f3348a = j;
        if (!f()) {
            if (this.n.a(j, j < b_())) {
                z = true;
                if (!z) {
                    while (this.l.size() > 1 && this.l.get(1).a(0) <= this.n.e()) {
                        this.l.removeFirst();
                    }
                    com.google.android.exoplayer2.extractor.d[] dVarArr = this.o;
                    int length = dVarArr.length;
                    while (i < length) {
                        dVarArr[i].a(j);
                        i++;
                    }
                    return;
                }
                this.r = j;
                this.b = false;
                this.l.clear();
                if (this.j.a()) {
                    this.j.b();
                    return;
                }
                this.n.a(true);
                com.google.android.exoplayer2.extractor.d[] dVarArr2 = this.o;
                int length2 = dVarArr2.length;
                while (i < length2) {
                    dVarArr2[i].a(true);
                    i++;
                }
                return;
            }
        }
        z = false;
        if (!z) {
        }
    }

    public void e() {
        this.n.c();
        for (com.google.android.exoplayer2.extractor.d dVar : this.o) {
            dVar.c();
        }
        this.j.c();
    }

    @Override // com.google.android.exoplayer2.source.i
    public boolean a() {
        return this.b || (!f() && !this.n.d());
    }

    @Override // com.google.android.exoplayer2.source.i
    public void b() throws IOException {
        this.j.d();
        if (!this.j.a()) {
            this.f.a();
        }
    }

    @Override // com.google.android.exoplayer2.source.i
    public int a(com.google.android.exoplayer2.h hVar, com.google.android.exoplayer2.a.e eVar, boolean z) {
        if (f()) {
            return -3;
        }
        a(this.n.e());
        return this.n.a(hVar, eVar, z, this.b, this.f3348a);
    }

    @Override // com.google.android.exoplayer2.source.i
    public void a_(long j) {
        this.n.a(j);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public void a(c cVar, long j, long j2) {
        this.f.a(cVar);
        this.h.a(cVar.f3344a, cVar.b, this.c, cVar.c, cVar.d, cVar.e, cVar.f, cVar.g, j, j2, cVar.e());
        this.g.a(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public void a(c cVar, long j, long j2, boolean z) {
        this.h.b(cVar.f3344a, cVar.b, this.c, cVar.c, cVar.d, cVar.e, cVar.f, cVar.g, j, j2, cVar.e());
        if (!z) {
            this.n.a(true);
            for (com.google.android.exoplayer2.extractor.d dVar : this.o) {
                dVar.a(true);
            }
            this.g.a(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public int a(c cVar, long j, long j2, IOException iOException) {
        long e = cVar.e();
        boolean a2 = a(cVar);
        boolean z = false;
        if (this.f.a(cVar, !a2 || e == 0 || this.l.size() > 1, iOException)) {
            z = true;
            if (a2) {
                com.google.android.exoplayer2.source.a.a removeLast = this.l.removeLast();
                com.google.android.exoplayer2.util.a.b(removeLast == cVar);
                this.n.b(removeLast.a(0));
                for (int i = 0; i < this.o.length; i++) {
                    this.o[i].b(removeLast.a(i + 1));
                }
                if (this.l.isEmpty()) {
                    this.r = this.f3348a;
                }
            }
        }
        this.h.a(cVar.f3344a, cVar.b, this.c, cVar.c, cVar.d, cVar.e, cVar.f, cVar.g, j, j2, e, iOException, z);
        if (z) {
            this.g.a(this);
            return 2;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.source.j
    public boolean a(long j) {
        if (this.b || this.j.a()) {
            return false;
        }
        T t = this.f;
        com.google.android.exoplayer2.source.a.a last = this.l.isEmpty() ? null : this.l.getLast();
        if (this.r != -9223372036854775807L) {
            j = this.r;
        }
        t.a(last, j, this.k);
        boolean z = this.k.b;
        c cVar = this.k.f3347a;
        this.k.a();
        if (z) {
            this.b = true;
            return true;
        } else if (cVar == null) {
            return false;
        } else {
            if (a(cVar)) {
                this.r = -9223372036854775807L;
                com.google.android.exoplayer2.source.a.a aVar = (com.google.android.exoplayer2.source.a.a) cVar;
                aVar.a(this.p);
                this.l.add(aVar);
            }
            this.h.a(cVar.f3344a, cVar.b, this.c, cVar.c, cVar.d, cVar.e, cVar.f, cVar.g, this.j.a(cVar, this, this.i));
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.source.j
    public long b_() {
        if (f()) {
            return this.r;
        }
        if (!this.b) {
            return this.l.getLast().g;
        }
        return Long.MIN_VALUE;
    }

    private boolean a(c cVar) {
        return cVar instanceof com.google.android.exoplayer2.source.a.a;
    }

    boolean f() {
        return this.r != -9223372036854775807L;
    }

    private void a(int i) {
        while (this.l.size() > 1 && this.l.get(1).a(0) <= i) {
            this.l.removeFirst();
        }
        com.google.android.exoplayer2.source.a.a first = this.l.getFirst();
        Format format = first.c;
        if (!format.equals(this.q)) {
            this.h.a(this.c, format, first.d, first.e, first.f);
        }
        this.q = format;
    }

    /* compiled from: ChunkSampleStream.java */
    /* loaded from: classes2.dex */
    public final class a implements com.google.android.exoplayer2.source.i {

        /* renamed from: a  reason: collision with root package name */
        public final f<T> f3349a;
        private final com.google.android.exoplayer2.extractor.d c;
        private final int d;

        public a(f<T> fVar, com.google.android.exoplayer2.extractor.d dVar, int i) {
            this.f3349a = fVar;
            this.c = dVar;
            this.d = i;
        }

        @Override // com.google.android.exoplayer2.source.i
        public boolean a() {
            return f.this.b || (!f.this.f() && !this.c.d());
        }

        @Override // com.google.android.exoplayer2.source.i
        public void a_(long j) {
            this.c.a(j);
        }

        @Override // com.google.android.exoplayer2.source.i
        public void b() throws IOException {
        }

        @Override // com.google.android.exoplayer2.source.i
        public int a(com.google.android.exoplayer2.h hVar, com.google.android.exoplayer2.a.e eVar, boolean z) {
            if (f.this.f()) {
                return -3;
            }
            return this.c.a(hVar, eVar, z, f.this.b, f.this.f3348a);
        }

        public void c() {
            com.google.android.exoplayer2.util.a.b(f.this.e[this.d]);
            f.this.e[this.d] = false;
        }
    }
}
