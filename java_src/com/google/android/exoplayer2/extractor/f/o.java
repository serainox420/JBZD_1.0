package com.google.android.exoplayer2.extractor.f;

import android.util.SparseArray;
import com.flurry.android.Constants;
import com.google.android.exoplayer2.extractor.f.u;
import com.google.android.exoplayer2.extractor.m;
import java.io.IOException;
/* compiled from: PsExtractor.java */
/* loaded from: classes2.dex */
public final class o implements com.google.android.exoplayer2.extractor.f {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.i f3273a = new com.google.android.exoplayer2.extractor.i() { // from class: com.google.android.exoplayer2.extractor.f.o.1
        @Override // com.google.android.exoplayer2.extractor.i
        public com.google.android.exoplayer2.extractor.f[] a() {
            return new com.google.android.exoplayer2.extractor.f[]{new o()};
        }
    };
    private final com.google.android.exoplayer2.util.s b;
    private final SparseArray<a> c;
    private final com.google.android.exoplayer2.util.l d;
    private boolean e;
    private boolean f;
    private boolean g;
    private com.google.android.exoplayer2.extractor.h h;

    public o() {
        this(new com.google.android.exoplayer2.util.s(0L));
    }

    public o(com.google.android.exoplayer2.util.s sVar) {
        this.b = sVar;
        this.d = new com.google.android.exoplayer2.util.l(4096);
        this.c = new SparseArray<>();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        boolean z = true;
        byte[] bArr = new byte[14];
        gVar.c(bArr, 0, 14);
        if (442 == (((bArr[0] & Constants.UNKNOWN) << 24) | ((bArr[1] & Constants.UNKNOWN) << 16) | ((bArr[2] & Constants.UNKNOWN) << 8) | (bArr[3] & Constants.UNKNOWN)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            gVar.c(bArr[13] & 7);
            gVar.c(bArr, 0, 3);
            if (1 != ((bArr[2] & Constants.UNKNOWN) | ((bArr[0] & Constants.UNKNOWN) << 16) | ((bArr[1] & Constants.UNKNOWN) << 8))) {
                z = false;
            }
            return z;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(com.google.android.exoplayer2.extractor.h hVar) {
        this.h = hVar;
        hVar.a(new m.a(-9223372036854775807L));
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.b.d();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.size()) {
                this.c.valueAt(i2).a();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        if (!gVar.b(this.d.f3511a, 0, 4, true)) {
            return -1;
        }
        this.d.c(0);
        int m = this.d.m();
        if (m == 441) {
            return -1;
        }
        if (m == 442) {
            gVar.c(this.d.f3511a, 0, 10);
            this.d.c(9);
            gVar.b((this.d.f() & 7) + 14);
            return 0;
        } else if (m == 443) {
            gVar.c(this.d.f3511a, 0, 2);
            this.d.c(0);
            gVar.b(this.d.g() + 6);
            return 0;
        } else if (((m & (-256)) >> 8) != 1) {
            gVar.b(1);
            return 0;
        } else {
            int i = m & 255;
            a aVar = this.c.get(i);
            if (!this.e) {
                if (aVar == null) {
                    g gVar2 = null;
                    if (!this.f && i == 189) {
                        gVar2 = new b();
                        this.f = true;
                    } else if (!this.f && (i & 224) == 192) {
                        gVar2 = new l();
                        this.f = true;
                    } else if (!this.g && (i & 240) == 224) {
                        gVar2 = new h();
                        this.g = true;
                    }
                    if (gVar2 != null) {
                        gVar2.a(this.h, new u.c(i, 256));
                        aVar = new a(gVar2, this.b);
                        this.c.put(i, aVar);
                    }
                }
                if ((this.f && this.g) || gVar.c() > 1048576) {
                    this.e = true;
                    this.h.a();
                }
            }
            gVar.c(this.d.f3511a, 0, 2);
            this.d.c(0);
            int g = this.d.g() + 6;
            if (aVar == null) {
                gVar.b(g);
            } else {
                this.d.a(g);
                gVar.b(this.d.f3511a, 0, g);
                this.d.c(6);
                aVar.a(this.d);
                this.d.b(this.d.e());
            }
            return 0;
        }
    }

    /* compiled from: PsExtractor.java */
    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final g f3274a;
        private final com.google.android.exoplayer2.util.s b;
        private final com.google.android.exoplayer2.util.k c = new com.google.android.exoplayer2.util.k(new byte[64]);
        private boolean d;
        private boolean e;
        private boolean f;
        private int g;
        private long h;

        public a(g gVar, com.google.android.exoplayer2.util.s sVar) {
            this.f3274a = gVar;
            this.b = sVar;
        }

        public void a() {
            this.f = false;
            this.f3274a.a();
        }

        public void a(com.google.android.exoplayer2.util.l lVar) {
            lVar.a(this.c.f3510a, 0, 3);
            this.c.a(0);
            b();
            lVar.a(this.c.f3510a, 0, this.g);
            this.c.a(0);
            c();
            this.f3274a.a(this.h, true);
            this.f3274a.a(lVar);
            this.f3274a.b();
        }

        private void b() {
            this.c.b(8);
            this.d = this.c.c();
            this.e = this.c.c();
            this.c.b(6);
            this.g = this.c.c(8);
        }

        private void c() {
            this.h = 0L;
            if (this.d) {
                this.c.b(4);
                this.c.b(1);
                long c = (this.c.c(3) << 30) | (this.c.c(15) << 15);
                this.c.b(1);
                long c2 = c | this.c.c(15);
                this.c.b(1);
                if (!this.f && this.e) {
                    this.c.b(4);
                    this.c.b(1);
                    long c3 = (this.c.c(3) << 30) | (this.c.c(15) << 15);
                    this.c.b(1);
                    long c4 = c3 | this.c.c(15);
                    this.c.b(1);
                    this.b.b(c4);
                    this.f = true;
                }
                this.h = this.b.b(c2);
            }
        }
    }
}
