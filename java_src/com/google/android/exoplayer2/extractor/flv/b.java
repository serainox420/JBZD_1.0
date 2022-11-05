package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.extractor.f;
import com.google.android.exoplayer2.extractor.g;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
/* compiled from: FlvExtractor.java */
/* loaded from: classes2.dex */
public final class b implements f, m {

    /* renamed from: a  reason: collision with root package name */
    public static final i f3284a = new i() { // from class: com.google.android.exoplayer2.extractor.flv.b.1
        @Override // com.google.android.exoplayer2.extractor.i
        public f[] a() {
            return new f[]{new b()};
        }
    };
    private static final int e = v.g("FLV");
    public int b;
    public int c;
    public long d;
    private h j;
    private int l;
    private a m;
    private d n;
    private c o;
    private final l f = new l(4);
    private final l g = new l(9);
    private final l h = new l(11);
    private final l i = new l();
    private int k = 1;

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(g gVar) throws IOException, InterruptedException {
        gVar.c(this.f.f3511a, 0, 3);
        this.f.c(0);
        if (this.f.j() != e) {
            return false;
        }
        gVar.c(this.f.f3511a, 0, 2);
        this.f.c(0);
        if ((this.f.g() & 250) != 0) {
            return false;
        }
        gVar.c(this.f.f3511a, 0, 4);
        this.f.c(0);
        int m = this.f.m();
        gVar.a();
        gVar.c(m);
        gVar.c(this.f.f3511a, 0, 4);
        this.f.c(0);
        return this.f.m() == 0;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(h hVar) {
        this.j = hVar;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.k = 1;
        this.l = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        while (true) {
            switch (this.k) {
                case 1:
                    if (b(gVar)) {
                        break;
                    } else {
                        return -1;
                    }
                case 2:
                    c(gVar);
                    break;
                case 3:
                    if (d(gVar)) {
                        break;
                    } else {
                        return -1;
                    }
                case 4:
                    if (!e(gVar)) {
                        break;
                    } else {
                        return 0;
                    }
            }
        }
    }

    private boolean b(g gVar) throws IOException, InterruptedException {
        boolean z = false;
        if (!gVar.a(this.g.f3511a, 0, 9, true)) {
            return false;
        }
        this.g.c(0);
        this.g.d(4);
        int f = this.g.f();
        boolean z2 = (f & 4) != 0;
        if ((f & 1) != 0) {
            z = true;
        }
        if (z2 && this.m == null) {
            this.m = new a(this.j.a(8, 1));
        }
        if (z && this.n == null) {
            this.n = new d(this.j.a(9, 2));
        }
        if (this.o == null) {
            this.o = new c(null);
        }
        this.j.a();
        this.j.a(this);
        this.l = (this.g.m() - 9) + 4;
        this.k = 2;
        return true;
    }

    private void c(g gVar) throws IOException, InterruptedException {
        gVar.b(this.l);
        this.l = 0;
        this.k = 3;
    }

    private boolean d(g gVar) throws IOException, InterruptedException {
        if (!gVar.a(this.h.f3511a, 0, 11, true)) {
            return false;
        }
        this.h.c(0);
        this.b = this.h.f();
        this.c = this.h.j();
        this.d = this.h.j();
        this.d = ((this.h.f() << 24) | this.d) * 1000;
        this.h.d(3);
        this.k = 4;
        return true;
    }

    private boolean e(g gVar) throws IOException, InterruptedException {
        boolean z = true;
        if (this.b == 8 && this.m != null) {
            this.m.b(f(gVar), this.d);
        } else if (this.b == 9 && this.n != null) {
            this.n.b(f(gVar), this.d);
        } else if (this.b == 18 && this.o != null) {
            this.o.b(f(gVar), this.d);
        } else {
            gVar.b(this.c);
            z = false;
        }
        this.l = 4;
        this.k = 2;
        return z;
    }

    private l f(g gVar) throws IOException, InterruptedException {
        if (this.c > this.i.e()) {
            this.i.a(new byte[Math.max(this.i.e() * 2, this.c)], 0);
        } else {
            this.i.c(0);
        }
        this.i.b(this.c);
        gVar.b(this.i.f3511a, 0, this.c);
        return this.i;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public boolean a() {
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b() {
        return this.o.a();
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b(long j) {
        return 0L;
    }
}
