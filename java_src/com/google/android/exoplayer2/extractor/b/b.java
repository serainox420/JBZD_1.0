package com.google.android.exoplayer2.extractor.b;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.f;
import com.google.android.exoplayer2.extractor.g;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.drive.MetadataChangeSet;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: Mp3Extractor.java */
/* loaded from: classes2.dex */
public final class b implements f {

    /* renamed from: a  reason: collision with root package name */
    public static final i f3211a = new i() { // from class: com.google.android.exoplayer2.extractor.b.b.1
        @Override // com.google.android.exoplayer2.extractor.i
        public f[] a() {
            return new f[]{new b()};
        }
    };
    private static final int b = v.g("Xing");
    private static final int c = v.g("Info");
    private static final int d = v.g("VBRI");
    private final int e;
    private final long f;
    private final l g;
    private final k h;
    private final j i;
    private h j;
    private n k;
    private int l;
    private Metadata m;
    private a n;
    private long o;
    private long p;
    private int q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mp3Extractor.java */
    /* loaded from: classes2.dex */
    public interface a extends m {
        long a(long j);
    }

    public b() {
        this(0);
    }

    public b(int i) {
        this(i, -9223372036854775807L);
    }

    public b(int i, long j) {
        this.e = i;
        this.f = j;
        this.g = new l(10);
        this.h = new k();
        this.i = new j();
        this.o = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(g gVar) throws IOException, InterruptedException {
        return a(gVar, true);
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(h hVar) {
        this.j = hVar;
        this.k = this.j.a(0, 1);
        this.j.a();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.l = 0;
        this.o = -9223372036854775807L;
        this.p = 0L;
        this.q = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        if (this.l == 0) {
            try {
                a(gVar, false);
            } catch (EOFException e) {
                return -1;
            }
        }
        if (this.n == null) {
            this.n = d(gVar);
            this.j.a(this.n);
            this.k.a(Format.a(null, this.h.b, null, -1, 4096, this.h.e, this.h.d, -1, this.i.b, this.i.c, null, null, 0, null, (this.e & 2) != 0 ? null : this.m));
        }
        return b(gVar);
    }

    private int b(g gVar) throws IOException, InterruptedException {
        if (this.q == 0) {
            gVar.a();
            if (!gVar.b(this.g.f3511a, 0, 4, true)) {
                return -1;
            }
            this.g.c(0);
            int m = this.g.m();
            if ((m & (-128000)) != (this.l & (-128000)) || k.a(m) == -1) {
                gVar.b(1);
                this.l = 0;
                return 0;
            }
            k.a(m, this.h);
            if (this.o == -9223372036854775807L) {
                this.o = this.n.a(gVar.c());
                if (this.f != -9223372036854775807L) {
                    this.o = (this.f - this.n.a(0L)) + this.o;
                }
            }
            this.q = this.h.c;
        }
        int a2 = this.k.a(gVar, this.q, true);
        if (a2 == -1) {
            return -1;
        }
        this.q -= a2;
        if (this.q > 0) {
            return 0;
        }
        this.k.a(((this.p * 1000000) / this.h.d) + this.o, 1, this.h.c, 0, null);
        this.p += this.h.g;
        this.q = 0;
        return 0;
    }

    private boolean a(g gVar, boolean z) throws IOException, InterruptedException {
        int i;
        int i2;
        int i3;
        int i4;
        int a2;
        int i5 = z ? 4096 : MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES;
        gVar.a();
        if (gVar.c() == 0) {
            c(gVar);
            int b2 = (int) gVar.b();
            if (!z) {
                gVar.b(b2);
            }
            i2 = b2;
            i3 = 0;
            i4 = 0;
            i = 0;
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        while (true) {
            if (!gVar.b(this.g.f3511a, 0, 4, i4 > 0)) {
                break;
            }
            this.g.c(0);
            int m = this.g.m();
            if ((i3 != 0 && (m & (-128000)) != (i3 & (-128000))) || (a2 = k.a(m)) == -1) {
                int i6 = i + 1;
                if (i == i5) {
                    if (z) {
                        return false;
                    }
                    throw new ParserException("Searched too many bytes.");
                } else if (z) {
                    gVar.a();
                    gVar.c(i2 + i6);
                    i = i6;
                    i4 = 0;
                    i3 = 0;
                } else {
                    gVar.b(1);
                    i = i6;
                    i4 = 0;
                    i3 = 0;
                }
            } else {
                i4++;
                if (i4 == 1) {
                    k.a(m, this.h);
                    i3 = m;
                } else if (i4 == 4) {
                    break;
                }
                gVar.c(a2 - 4);
            }
        }
        if (z) {
            gVar.b(i2 + i);
        } else {
            gVar.a();
        }
        this.l = i3;
        return true;
    }

    private void c(g gVar) throws IOException, InterruptedException {
        int i = 0;
        while (true) {
            gVar.c(this.g.f3511a, 0, 10);
            this.g.c(0);
            if (this.g.j() == com.google.android.exoplayer2.metadata.id3.a.f3322a) {
                this.g.d(3);
                int r = this.g.r();
                int i2 = r + 10;
                if (this.m == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.g.f3511a, 0, bArr, 0, 10);
                    gVar.c(bArr, 10, r);
                    this.m = new com.google.android.exoplayer2.metadata.id3.a((this.e & 2) != 0 ? j.f3288a : null).a(bArr, i2);
                    if (this.m != null) {
                        this.i.a(this.m);
                    }
                } else {
                    gVar.c(r);
                }
                i += i2;
            } else {
                gVar.a();
                gVar.c(i);
                return;
            }
        }
    }

    private a d(g gVar) throws IOException, InterruptedException {
        int i;
        a a2;
        int i2 = 21;
        l lVar = new l(this.h.c);
        gVar.c(lVar.f3511a, 0, this.h.c);
        long c2 = gVar.c();
        long d2 = gVar.d();
        if ((this.h.f3289a & 1) != 0) {
            if (this.h.e != 1) {
                i2 = 36;
            }
        } else if (this.h.e == 1) {
            i2 = 13;
        }
        if (lVar.c() >= i2 + 4) {
            lVar.c(i2);
            i = lVar.m();
        } else {
            i = 0;
        }
        if (i == b || i == c) {
            a2 = d.a(this.h, lVar, c2, d2);
            if (a2 != null && !this.i.a()) {
                gVar.a();
                gVar.c(i2 + 141);
                gVar.c(this.g.f3511a, 0, 3);
                this.g.c(0);
                this.i.a(this.g.j());
            }
            gVar.b(this.h.c);
        } else {
            if (lVar.c() >= 40) {
                lVar.c(36);
                if (lVar.m() == d) {
                    a2 = c.a(this.h, lVar, c2, d2);
                    gVar.b(this.h.c);
                }
            }
            a2 = null;
        }
        if (a2 == null || (!a2.a() && (this.e & 1) != 0)) {
            gVar.a();
            gVar.c(this.g.f3511a, 0, 4);
            this.g.c(0);
            k.a(this.g.m(), this.h);
            return new com.google.android.exoplayer2.extractor.b.a(gVar.c(), this.h.f, d2);
        }
        return a2;
    }
}
