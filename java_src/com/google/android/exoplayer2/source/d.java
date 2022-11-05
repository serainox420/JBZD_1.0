package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.d;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.source.e;
import com.google.android.exoplayer2.source.f;
import com.google.android.exoplayer2.source.g;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: ExtractorMediaPeriod.java */
/* loaded from: classes2.dex */
final class d implements d.c, com.google.android.exoplayer2.extractor.h, f, Loader.a<a> {
    private boolean A;
    private long C;
    private int E;
    private boolean F;
    private boolean G;

    /* renamed from: a  reason: collision with root package name */
    private final Uri f3371a;
    private final com.google.android.exoplayer2.upstream.e b;
    private final int c;
    private final Handler d;
    private final e.a e;
    private final g.a f;
    private final com.google.android.exoplayer2.upstream.b g;
    private final String h;
    private final b j;
    private f.a p;
    private com.google.android.exoplayer2.extractor.m q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private int v;
    private m w;
    private long x;
    private boolean[] y;
    private boolean[] z;
    private final Loader i = new Loader("Loader:ExtractorMediaPeriod");
    private final com.google.android.exoplayer2.util.e k = new com.google.android.exoplayer2.util.e();
    private final Runnable l = new Runnable() { // from class: com.google.android.exoplayer2.source.d.1
        @Override // java.lang.Runnable
        public void run() {
            d.this.h();
        }
    };
    private final Runnable m = new Runnable() { // from class: com.google.android.exoplayer2.source.d.2
        @Override // java.lang.Runnable
        public void run() {
            if (!d.this.G) {
                d.this.p.a((f.a) d.this);
            }
        }
    };
    private final Handler n = new Handler();
    private long D = -9223372036854775807L;
    private final SparseArray<com.google.android.exoplayer2.extractor.d> o = new SparseArray<>();
    private long B = -1;

    public d(Uri uri, com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.extractor.f[] fVarArr, int i, Handler handler, e.a aVar, g.a aVar2, com.google.android.exoplayer2.upstream.b bVar, String str) {
        this.f3371a = uri;
        this.b = eVar;
        this.c = i;
        this.d = handler;
        this.e = aVar;
        this.f = aVar2;
        this.g = bVar;
        this.h = str;
        this.j = new b(fVarArr, this);
    }

    public void b() {
        final b bVar = this.j;
        this.i.a(new Runnable() { // from class: com.google.android.exoplayer2.source.d.3
            @Override // java.lang.Runnable
            public void run() {
                bVar.a();
                int size = d.this.o.size();
                for (int i = 0; i < size; i++) {
                    ((com.google.android.exoplayer2.extractor.d) d.this.o.valueAt(i)).c();
                }
            }
        });
        this.n.removeCallbacksAndMessages(null);
        this.G = true;
    }

    @Override // com.google.android.exoplayer2.source.f
    public void a(f.a aVar) {
        this.p = aVar;
        this.k.a();
        i();
    }

    @Override // com.google.android.exoplayer2.source.f
    public void c() throws IOException {
        g();
    }

    @Override // com.google.android.exoplayer2.source.f
    public m d() {
        return this.w;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long a(com.google.android.exoplayer2.b.f[] fVarArr, boolean[] zArr, i[] iVarArr, boolean[] zArr2, long j) {
        com.google.android.exoplayer2.util.a.b(this.s);
        for (int i = 0; i < fVarArr.length; i++) {
            if (iVarArr[i] != null && (fVarArr[i] == null || !zArr[i])) {
                int i2 = ((c) iVarArr[i]).b;
                com.google.android.exoplayer2.util.a.b(this.y[i2]);
                this.v--;
                this.y[i2] = false;
                this.o.valueAt(i2).c();
                iVarArr[i] = null;
            }
        }
        boolean z = false;
        for (int i3 = 0; i3 < fVarArr.length; i3++) {
            if (iVarArr[i3] == null && fVarArr[i3] != null) {
                com.google.android.exoplayer2.b.f fVar = fVarArr[i3];
                com.google.android.exoplayer2.util.a.b(fVar.e() == 1);
                com.google.android.exoplayer2.util.a.b(fVar.b(0) == 0);
                int a2 = this.w.a(fVar.d());
                com.google.android.exoplayer2.util.a.b(!this.y[a2]);
                this.v++;
                this.y[a2] = true;
                iVarArr[i3] = new c(a2);
                zArr2[i3] = true;
                z = true;
            }
        }
        if (!this.t) {
            int size = this.o.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (!this.y[i4]) {
                    this.o.valueAt(i4).c();
                }
            }
        }
        if (this.v == 0) {
            this.u = false;
            if (this.i.a()) {
                this.i.b();
            }
        } else if (!this.t ? j != 0 : z) {
            j = c(j);
            for (int i5 = 0; i5 < iVarArr.length; i5++) {
                if (iVarArr[i5] != null) {
                    zArr2[i5] = true;
                }
            }
        }
        this.t = true;
        return j;
    }

    @Override // com.google.android.exoplayer2.source.f
    public void b(long j) {
    }

    @Override // com.google.android.exoplayer2.source.f, com.google.android.exoplayer2.source.j
    public boolean a(long j) {
        if (this.F || (this.s && this.v == 0)) {
            return false;
        }
        boolean a2 = this.k.a();
        if (!this.i.a()) {
            i();
            return true;
        }
        return a2;
    }

    @Override // com.google.android.exoplayer2.source.f, com.google.android.exoplayer2.source.j
    public long b_() {
        if (this.v == 0) {
            return Long.MIN_VALUE;
        }
        return f();
    }

    @Override // com.google.android.exoplayer2.source.f
    public long e() {
        if (this.u) {
            this.u = false;
            return this.C;
        }
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long f() {
        long k;
        if (this.F) {
            return Long.MIN_VALUE;
        }
        if (l()) {
            return this.D;
        }
        if (this.A) {
            long j = Clock.MAX_TIME;
            int size = this.o.size();
            int i = 0;
            while (i < size) {
                long min = this.z[i] ? Math.min(j, this.o.valueAt(i).h()) : j;
                i++;
                j = min;
            }
            k = j;
        } else {
            k = k();
        }
        return k == Long.MIN_VALUE ? this.C : k;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long c(long j) {
        if (!this.q.a()) {
            j = 0;
        }
        this.C = j;
        int size = this.o.size();
        boolean z = !l();
        for (int i = 0; z && i < size; i++) {
            if (this.y[i]) {
                z = this.o.valueAt(i).a(j);
            }
        }
        if (!z) {
            this.D = j;
            this.F = false;
            if (this.i.a()) {
                this.i.b();
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.o.valueAt(i2).a(this.y[i2]);
                }
            }
        }
        this.u = false;
        return j;
    }

    boolean a(int i) {
        return this.F || (!l() && !this.o.valueAt(i).d());
    }

    void g() throws IOException {
        this.i.d();
    }

    int a(int i, com.google.android.exoplayer2.h hVar, com.google.android.exoplayer2.a.e eVar, boolean z) {
        if (this.u || l()) {
            return -3;
        }
        return this.o.valueAt(i).a(hVar, eVar, z, this.F, this.C);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public void a(a aVar, long j, long j2) {
        a(aVar);
        this.F = true;
        if (this.x == -9223372036854775807L) {
            long k = k();
            this.x = k == Long.MIN_VALUE ? 0L : k + NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
            this.f.a(new k(this.x, this.q.a()), null);
        }
        this.p.a((f.a) this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public void a(a aVar, long j, long j2, boolean z) {
        a(aVar);
        if (!z && this.v > 0) {
            int size = this.o.size();
            for (int i = 0; i < size; i++) {
                this.o.valueAt(i).a(this.y[i]);
            }
            this.p.a((f.a) this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public int a(a aVar, long j, long j2, IOException iOException) {
        a(aVar);
        b(iOException);
        if (a(iOException)) {
            return 3;
        }
        boolean z = j() > this.E;
        b(aVar);
        this.E = j();
        return !z ? 0 : 1;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public n a(int i, int i2) {
        com.google.android.exoplayer2.extractor.d dVar = this.o.get(i);
        if (dVar == null) {
            com.google.android.exoplayer2.extractor.d dVar2 = new com.google.android.exoplayer2.extractor.d(this.g);
            dVar2.a(this);
            this.o.put(i, dVar2);
            return dVar2;
        }
        return dVar;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public void a() {
        this.r = true;
        this.n.post(this.l);
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public void a(com.google.android.exoplayer2.extractor.m mVar) {
        this.q = mVar;
        this.n.post(this.l);
    }

    @Override // com.google.android.exoplayer2.extractor.d.c
    public void a(Format format) {
        this.n.post(this.l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (!this.G && !this.s && this.q != null && this.r) {
            int size = this.o.size();
            for (int i = 0; i < size; i++) {
                if (this.o.valueAt(i).g() == null) {
                    return;
                }
            }
            this.k.b();
            l[] lVarArr = new l[size];
            this.z = new boolean[size];
            this.y = new boolean[size];
            this.x = this.q.b();
            for (int i2 = 0; i2 < size; i2++) {
                Format g = this.o.valueAt(i2).g();
                lVarArr[i2] = new l(g);
                String str = g.f;
                boolean z = com.google.android.exoplayer2.util.i.b(str) || com.google.android.exoplayer2.util.i.a(str);
                this.z[i2] = z;
                this.A = z | this.A;
            }
            this.w = new m(lVarArr);
            this.s = true;
            this.f.a(new k(this.x, this.q.a()), null);
            this.p.a((f) this);
        }
    }

    private void a(a aVar) {
        if (this.B != -1) {
            return;
        }
        this.B = aVar.j;
    }

    private void i() {
        a aVar = new a(this.f3371a, this.b, this.j, this.k);
        if (this.s) {
            com.google.android.exoplayer2.util.a.b(l());
            if (this.x != -9223372036854775807L && this.D >= this.x) {
                this.F = true;
                this.D = -9223372036854775807L;
                return;
            }
            aVar.a(this.q.b(this.D), this.D);
            this.D = -9223372036854775807L;
        }
        this.E = j();
        int i = this.c;
        if (i == -1) {
            i = (this.s && this.B == -1 && (this.q == null || this.q.b() == -9223372036854775807L)) ? 6 : 3;
        }
        this.i.a(aVar, this, i);
    }

    private void b(a aVar) {
        if (this.B == -1) {
            if (this.q == null || this.q.b() == -9223372036854775807L) {
                this.C = 0L;
                this.u = this.s;
                int size = this.o.size();
                for (int i = 0; i < size; i++) {
                    this.o.valueAt(i).a(!this.s || this.y[i]);
                }
                aVar.a(0L, 0L);
            }
        }
    }

    private int j() {
        int size = this.o.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.o.valueAt(i2).b();
        }
        return i;
    }

    private long k() {
        long j = Long.MIN_VALUE;
        int size = this.o.size();
        for (int i = 0; i < size; i++) {
            j = Math.max(j, this.o.valueAt(i).h());
        }
        return j;
    }

    private boolean l() {
        return this.D != -9223372036854775807L;
    }

    private boolean a(IOException iOException) {
        return iOException instanceof UnrecognizedInputFormatException;
    }

    private void b(final IOException iOException) {
        if (this.d != null && this.e != null) {
            this.d.post(new Runnable() { // from class: com.google.android.exoplayer2.source.d.4
                @Override // java.lang.Runnable
                public void run() {
                    d.this.e.a(iOException);
                }
            });
        }
    }

    /* compiled from: ExtractorMediaPeriod.java */
    /* loaded from: classes2.dex */
    private final class c implements i {
        private final int b;

        public c(int i) {
            this.b = i;
        }

        @Override // com.google.android.exoplayer2.source.i
        public boolean a() {
            return d.this.a(this.b);
        }

        @Override // com.google.android.exoplayer2.source.i
        public void b() throws IOException {
            d.this.g();
        }

        @Override // com.google.android.exoplayer2.source.i
        public int a(com.google.android.exoplayer2.h hVar, com.google.android.exoplayer2.a.e eVar, boolean z) {
            return d.this.a(this.b, hVar, eVar, z);
        }

        @Override // com.google.android.exoplayer2.source.i
        public void a_(long j) {
            ((com.google.android.exoplayer2.extractor.d) d.this.o.valueAt(this.b)).a(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExtractorMediaPeriod.java */
    /* loaded from: classes2.dex */
    public final class a implements Loader.c {
        private final Uri b;
        private final com.google.android.exoplayer2.upstream.e c;
        private final b d;
        private final com.google.android.exoplayer2.util.e e;
        private volatile boolean g;
        private long i;
        private final com.google.android.exoplayer2.extractor.l f = new com.google.android.exoplayer2.extractor.l();
        private boolean h = true;
        private long j = -1;

        public a(Uri uri, com.google.android.exoplayer2.upstream.e eVar, b bVar, com.google.android.exoplayer2.util.e eVar2) {
            this.b = (Uri) com.google.android.exoplayer2.util.a.a(uri);
            this.c = (com.google.android.exoplayer2.upstream.e) com.google.android.exoplayer2.util.a.a(eVar);
            this.d = (b) com.google.android.exoplayer2.util.a.a(bVar);
            this.e = eVar2;
        }

        public void a(long j, long j2) {
            this.f.f3290a = j;
            this.i = j2;
            this.h = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.c
        public void a() {
            this.g = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.c
        public boolean b() {
            return this.g;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.c
        public void c() throws IOException, InterruptedException {
            com.google.android.exoplayer2.extractor.b bVar;
            int i;
            int i2;
            int i3 = 0;
            while (i3 == 0 && !this.g) {
                try {
                    long j = this.f.f3290a;
                    this.j = this.c.a(new com.google.android.exoplayer2.upstream.g(this.b, j, -1L, d.this.h));
                    if (this.j != -1) {
                        this.j += j;
                    }
                    com.google.android.exoplayer2.extractor.b bVar2 = new com.google.android.exoplayer2.extractor.b(this.c, j, this.j);
                    try {
                        com.google.android.exoplayer2.extractor.f a2 = this.d.a(bVar2, this.c.b());
                        if (this.h) {
                            a2.a(j, this.i);
                            this.h = false;
                        }
                        long j2 = j;
                        int i4 = i3;
                        while (i4 == 0) {
                            try {
                                if (this.g) {
                                    break;
                                }
                                this.e.c();
                                i = a2.a(bVar2, this.f);
                                try {
                                    if (bVar2.c() > 1048576 + j2) {
                                        j2 = bVar2.c();
                                        this.e.b();
                                        d.this.n.post(d.this.m);
                                        i4 = i;
                                    } else {
                                        i4 = i;
                                    }
                                } catch (Throwable th) {
                                    bVar = bVar2;
                                    th = th;
                                    if (i != 1 && bVar != null) {
                                        this.f.f3290a = bVar.c();
                                    }
                                    v.a(this.c);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                i = i4;
                                bVar = bVar2;
                                th = th2;
                            }
                        }
                        if (i4 == 1) {
                            i2 = 0;
                        } else {
                            if (bVar2 != null) {
                                this.f.f3290a = bVar2.c();
                            }
                            i2 = i4;
                        }
                        v.a(this.c);
                        i3 = i2;
                    } catch (Throwable th3) {
                        i = i3;
                        th = th3;
                        bVar = bVar2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    bVar = null;
                    i = i3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExtractorMediaPeriod.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.f[] f3377a;
        private final com.google.android.exoplayer2.extractor.h b;
        private com.google.android.exoplayer2.extractor.f c;

        public b(com.google.android.exoplayer2.extractor.f[] fVarArr, com.google.android.exoplayer2.extractor.h hVar) {
            this.f3377a = fVarArr;
            this.b = hVar;
        }

        public com.google.android.exoplayer2.extractor.f a(com.google.android.exoplayer2.extractor.g gVar, Uri uri) throws IOException, InterruptedException {
            if (this.c != null) {
                return this.c;
            }
            com.google.android.exoplayer2.extractor.f[] fVarArr = this.f3377a;
            int length = fVarArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                com.google.android.exoplayer2.extractor.f fVar = fVarArr[i];
                try {
                } catch (EOFException e) {
                } finally {
                    gVar.a();
                }
                if (!fVar.a(gVar)) {
                    i++;
                } else {
                    this.c = fVar;
                    break;
                }
            }
            if (this.c == null) {
                throw new UnrecognizedInputFormatException("None of the available extractors (" + v.a(this.f3377a) + ") could read the stream.", uri);
            }
            this.c.a(this.b);
            return this.c;
        }

        public void a() {
            if (this.c != null) {
                this.c.c();
                this.c = null;
            }
        }
    }
}
