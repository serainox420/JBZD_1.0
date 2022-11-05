package com.google.android.exoplayer2.source.b;

import android.text.TextUtils;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.f.t;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.source.b.a.a;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.v;
import com.loopme.common.VideoUtils;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HlsMediaChunk.java */
/* loaded from: classes2.dex */
public final class f extends com.google.android.exoplayer2.source.a.l {
    private static final AtomicInteger m = new AtomicInteger();
    private com.google.android.exoplayer2.extractor.f A;
    private int B;
    private int C;
    private boolean D;
    private j E;
    private volatile boolean F;
    private volatile boolean G;
    public final int j;
    public final int k;
    public final a.C0139a l;
    private final com.google.android.exoplayer2.upstream.e n;
    private final com.google.android.exoplayer2.upstream.g o;
    private final boolean p;
    private final boolean q;
    private final s r;
    private final String s;
    private final com.google.android.exoplayer2.extractor.f t;
    private final boolean u;
    private final boolean v;
    private final List<Format> w;
    private final boolean x;
    private final com.google.android.exoplayer2.metadata.id3.a y;
    private final com.google.android.exoplayer2.util.l z;

    public f(com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.upstream.g gVar, com.google.android.exoplayer2.upstream.g gVar2, a.C0139a c0139a, List<Format> list, int i, Object obj, long j, long j2, int i2, int i3, boolean z, s sVar, f fVar, byte[] bArr, byte[] bArr2) {
        super(a(eVar, bArr, bArr2), gVar, c0139a.b, i, obj, j, j2, i2);
        this.k = i3;
        this.o = gVar2;
        this.l = c0139a;
        this.w = list;
        this.q = z;
        this.r = sVar;
        this.p = this.h instanceof a;
        this.s = gVar.f3489a.getLastPathSegment();
        this.x = this.s.endsWith(".aac") || this.s.endsWith(".ac3") || this.s.endsWith(".ec3") || this.s.endsWith(".mp3");
        if (fVar != null) {
            this.y = fVar.y;
            this.z = fVar.z;
            this.t = fVar.A;
            this.u = fVar.l != c0139a;
            this.v = fVar.k != i3 || this.u;
        } else {
            this.y = this.x ? new com.google.android.exoplayer2.metadata.id3.a() : null;
            this.z = this.x ? new com.google.android.exoplayer2.util.l(10) : null;
            this.t = null;
            this.u = false;
            this.v = true;
        }
        this.n = eVar;
        this.j = m.getAndIncrement();
    }

    public void a(j jVar) {
        this.E = jVar;
        jVar.a(this.j, this.u);
    }

    @Override // com.google.android.exoplayer2.source.a.l
    public boolean g() {
        return this.G;
    }

    @Override // com.google.android.exoplayer2.source.a.c
    public long e() {
        return this.C;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public void a() {
        this.F = true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public boolean b() {
        return this.F;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public void c() throws IOException, InterruptedException {
        if (this.A == null && !this.x) {
            this.A = i();
        }
        d();
        if (!this.F) {
            h();
        }
    }

    private void d() throws IOException, InterruptedException {
        if (this.t != this.A && !this.D && this.o != null) {
            com.google.android.exoplayer2.upstream.g a2 = v.a(this.o, this.B);
            try {
                com.google.android.exoplayer2.extractor.b bVar = new com.google.android.exoplayer2.extractor.b(this.n, a2.c, this.n.a(a2));
                int i = 0;
                while (i == 0 && !this.F) {
                    i = this.A.a(bVar, (com.google.android.exoplayer2.extractor.l) null);
                }
                this.B = (int) (bVar.c() - this.o.c);
                v.a(this.h);
                this.D = true;
            } catch (Throwable th) {
                v.a(this.h);
                throw th;
            }
        }
    }

    private void h() throws IOException, InterruptedException {
        boolean z;
        com.google.android.exoplayer2.upstream.g a2;
        int i = 0;
        if (this.p) {
            com.google.android.exoplayer2.upstream.g gVar = this.f3344a;
            z = this.C != 0;
            a2 = gVar;
        } else {
            z = false;
            a2 = v.a(this.f3344a, this.C);
        }
        if (!this.q) {
            this.r.e();
        } else if (this.r.a() == Clock.MAX_TIME) {
            this.r.a(this.f);
        }
        try {
            com.google.android.exoplayer2.extractor.b bVar = new com.google.android.exoplayer2.extractor.b(this.h, a2.c, this.h.a(a2));
            if (this.A == null) {
                long a3 = a(bVar);
                this.A = a(a3 != -9223372036854775807L ? this.r.b(a3) : this.f);
            }
            if (z) {
                bVar.b(this.C);
            }
            while (i == 0 && !this.F) {
                i = this.A.a(bVar, (com.google.android.exoplayer2.extractor.l) null);
            }
            this.C = (int) (bVar.c() - this.f3344a.c);
            v.a(this.h);
            this.G = true;
        } catch (Throwable th) {
            v.a(this.h);
            throw th;
        }
    }

    private long a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        Metadata a2;
        gVar.a();
        if (!gVar.b(this.z.f3511a, 0, 10, true)) {
            return -9223372036854775807L;
        }
        this.z.a(10);
        if (this.z.j() != com.google.android.exoplayer2.metadata.id3.a.f3322a) {
            return -9223372036854775807L;
        }
        this.z.d(3);
        int r = this.z.r();
        int i = r + 10;
        if (i > this.z.e()) {
            byte[] bArr = this.z.f3511a;
            this.z.a(i);
            System.arraycopy(bArr, 0, this.z.f3511a, 0, 10);
        }
        if (gVar.b(this.z.f3511a, 10, r, true) && (a2 = this.y.a(this.z.f3511a, r)) != null) {
            int a3 = a2.a();
            for (int i2 = 0; i2 < a3; i2++) {
                Metadata.Entry a4 = a2.a(i2);
                if (a4 instanceof PrivFrame) {
                    PrivFrame privFrame = (PrivFrame) a4;
                    if ("com.apple.streaming.transportStreamTimestamp".equals(privFrame.f3319a)) {
                        System.arraycopy(privFrame.b, 0, this.z.f3511a, 0, 8);
                        this.z.a(8);
                        return this.z.o();
                    }
                }
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    private static com.google.android.exoplayer2.upstream.e a(com.google.android.exoplayer2.upstream.e eVar, byte[] bArr, byte[] bArr2) {
        return (bArr == null || bArr2 == null) ? eVar : new a(eVar, bArr, bArr2);
    }

    private com.google.android.exoplayer2.extractor.f i() {
        com.google.android.exoplayer2.extractor.f lVar;
        boolean z = false;
        if ("text/vtt".equals(this.l.b.f) || this.s.endsWith(".webvtt") || this.s.endsWith(".vtt")) {
            lVar = new l(this.c.x, this.r);
            z = true;
        } else if (!this.v) {
            lVar = this.t;
        } else if (this.s.endsWith(VideoUtils.MP4_FORMAT) || this.s.startsWith(".m4", this.s.length() - 4)) {
            z = true;
            lVar = new com.google.android.exoplayer2.extractor.c.e(0, this.r);
        } else {
            int i = 16;
            if (!this.w.isEmpty()) {
                i = 48;
            }
            String str = this.c.c;
            if (!TextUtils.isEmpty(str)) {
                if (!"audio/mp4a-latm".equals(com.google.android.exoplayer2.util.i.e(str))) {
                    i |= 2;
                }
                if (!"video/avc".equals(com.google.android.exoplayer2.util.i.d(str))) {
                    i |= 4;
                }
            }
            z = true;
            lVar = new t(2, this.r, new com.google.android.exoplayer2.extractor.f.e(i, this.w));
        }
        if (z) {
            lVar.a(this.E);
        }
        return lVar;
    }

    private com.google.android.exoplayer2.extractor.f a(long j) {
        com.google.android.exoplayer2.extractor.f aVar;
        if (this.s.endsWith(".aac")) {
            aVar = new com.google.android.exoplayer2.extractor.f.c(j);
        } else if (this.s.endsWith(".ac3") || this.s.endsWith(".ec3")) {
            aVar = new com.google.android.exoplayer2.extractor.f.a(j);
        } else if (this.s.endsWith(".mp3")) {
            aVar = new com.google.android.exoplayer2.extractor.b.b(0, j);
        } else {
            throw new IllegalArgumentException("Unkown extension for audio file: " + this.s);
        }
        aVar.a(this.E);
        return aVar;
    }
}
