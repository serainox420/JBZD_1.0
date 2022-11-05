package com.google.android.exoplayer2.source.dash;

import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.a.h;
import com.google.android.exoplayer2.source.a.i;
import com.google.android.exoplayer2.source.a.k;
import com.google.android.exoplayer2.source.a.l;
import com.google.android.exoplayer2.source.dash.a;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.upstream.g;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
import java.util.List;
/* compiled from: DefaultDashChunkSource.java */
/* loaded from: classes2.dex */
public class f implements com.google.android.exoplayer2.source.dash.a {

    /* renamed from: a  reason: collision with root package name */
    private final o f3388a;
    private final int b;
    private final com.google.android.exoplayer2.b.f c;
    private final b[] d;
    private final com.google.android.exoplayer2.upstream.e e;
    private final long f;
    private final int g;
    private com.google.android.exoplayer2.source.dash.manifest.b h;
    private int i;
    private IOException j;
    private boolean k;

    /* compiled from: DefaultDashChunkSource.java */
    /* loaded from: classes2.dex */
    public static final class a implements a.InterfaceC0141a {

        /* renamed from: a  reason: collision with root package name */
        private final e.a f3389a;
        private final int b;

        public a(e.a aVar) {
            this(aVar, 1);
        }

        public a(e.a aVar, int i) {
            this.f3389a = aVar;
            this.b = i;
        }

        @Override // com.google.android.exoplayer2.source.dash.a.InterfaceC0141a
        public com.google.android.exoplayer2.source.dash.a a(o oVar, com.google.android.exoplayer2.source.dash.manifest.b bVar, int i, int i2, com.google.android.exoplayer2.b.f fVar, long j, boolean z, boolean z2) {
            return new f(oVar, bVar, i, i2, fVar, this.f3389a.a(), j, this.b, z, z2);
        }
    }

    public f(o oVar, com.google.android.exoplayer2.source.dash.manifest.b bVar, int i, int i2, com.google.android.exoplayer2.b.f fVar, com.google.android.exoplayer2.upstream.e eVar, long j, int i3, boolean z, boolean z2) {
        this.f3388a = oVar;
        this.h = bVar;
        this.b = i2;
        this.c = fVar;
        this.e = eVar;
        this.i = i;
        this.f = j;
        this.g = i3;
        long c = bVar.c(i);
        com.google.android.exoplayer2.source.dash.manifest.a b2 = b();
        List<com.google.android.exoplayer2.source.dash.manifest.f> list = b2.c;
        this.d = new b[fVar.e()];
        for (int i4 = 0; i4 < this.d.length; i4++) {
            this.d[i4] = new b(c, list.get(fVar.b(i4)), z, z2, b2.b);
        }
    }

    @Override // com.google.android.exoplayer2.source.dash.a
    public void a(com.google.android.exoplayer2.source.dash.manifest.b bVar, int i) {
        try {
            this.h = bVar;
            this.i = i;
            long c = this.h.c(this.i);
            List<com.google.android.exoplayer2.source.dash.manifest.f> list = b().c;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < this.d.length) {
                    this.d[i3].a(c, list.get(this.c.b(i3)));
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        } catch (BehindLiveWindowException e) {
            this.j = e;
        }
    }

    @Override // com.google.android.exoplayer2.source.a.g
    public void a() throws IOException {
        if (this.j != null) {
            throw this.j;
        }
        this.f3388a.d();
    }

    @Override // com.google.android.exoplayer2.source.a.g
    public final void a(l lVar, long j, com.google.android.exoplayer2.source.a.e eVar) {
        int i;
        int i2;
        int f;
        if (this.j == null) {
            this.c.a(lVar != null ? lVar.g - j : 0L);
            b bVar = this.d[this.c.a()];
            if (bVar.b != null) {
                com.google.android.exoplayer2.source.dash.manifest.f fVar = bVar.c;
                com.google.android.exoplayer2.source.dash.manifest.e eVar2 = null;
                com.google.android.exoplayer2.source.dash.manifest.e eVar3 = null;
                if (bVar.b.c() == null) {
                    eVar2 = fVar.c();
                }
                if (bVar.d == null) {
                    eVar3 = fVar.d();
                }
                if (eVar2 != null || eVar3 != null) {
                    eVar.f3347a = a(bVar, this.e, this.c.f(), this.c.b(), this.c.c(), eVar2, eVar3);
                    return;
                }
            }
            long c = c();
            int b2 = bVar.b();
            if (b2 == 0) {
                eVar.b = !this.h.d || this.i < this.h.a() + (-1);
                return;
            }
            int a2 = bVar.a();
            if (b2 == -1) {
                long j2 = (c - (this.h.f3393a * 1000)) - (this.h.a(this.i).b * 1000);
                if (this.h.f != -9223372036854775807L) {
                    a2 = Math.max(a2, bVar.a(j2 - (this.h.f * 1000)));
                }
                int a3 = bVar.a(j2) - 1;
                i = a2;
                i2 = a3;
            } else {
                i = a2;
                i2 = (a2 + b2) - 1;
            }
            if (lVar == null) {
                f = v.a(bVar.a(j), i, i2);
            } else {
                f = lVar.f();
                if (f < i) {
                    this.j = new BehindLiveWindowException();
                    return;
                }
            }
            if (f > i2 || (this.k && f >= i2)) {
                eVar.b = !this.h.d || this.i < this.h.a() + (-1);
            } else {
                eVar.f3347a = a(bVar, this.e, this.c.f(), this.c.b(), this.c.c(), f, Math.min(this.g, (i2 - f) + 1));
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.a.g
    public void a(com.google.android.exoplayer2.source.a.c cVar) {
        m b2;
        if (cVar instanceof k) {
            b bVar = this.d[this.c.a(((k) cVar).c)];
            if (bVar.d == null && (b2 = bVar.b.b()) != null) {
                bVar.d = new e((com.google.android.exoplayer2.extractor.a) b2);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.a.g
    public boolean a(com.google.android.exoplayer2.source.a.c cVar, boolean z, Exception exc) {
        b bVar;
        int b2;
        if (!z) {
            return false;
        }
        if (!this.h.d && (cVar instanceof l) && (exc instanceof HttpDataSource.InvalidResponseCodeException) && ((HttpDataSource.InvalidResponseCodeException) exc).responseCode == 404 && (b2 = (bVar = this.d[this.c.a(cVar.c)]).b()) != -1 && b2 != 0) {
            if (((l) cVar).f() > (bVar.a() + b2) - 1) {
                this.k = true;
                return true;
            }
        }
        return h.a(this.c, this.c.a(cVar.c), exc);
    }

    private com.google.android.exoplayer2.source.dash.manifest.a b() {
        return this.h.a(this.i).c.get(this.b);
    }

    private long c() {
        return this.f != 0 ? (SystemClock.elapsedRealtime() + this.f) * 1000 : System.currentTimeMillis() * 1000;
    }

    private static com.google.android.exoplayer2.source.a.c a(b bVar, com.google.android.exoplayer2.upstream.e eVar, Format format, int i, Object obj, com.google.android.exoplayer2.source.dash.manifest.e eVar2, com.google.android.exoplayer2.source.dash.manifest.e eVar3) {
        String str = bVar.c.d;
        if (eVar2 != null) {
            com.google.android.exoplayer2.source.dash.manifest.e a2 = eVar2.a(eVar3, str);
            if (a2 != null) {
                eVar2 = a2;
            }
        } else {
            eVar2 = eVar3;
        }
        return new k(eVar, new g(eVar2.a(str), eVar2.f3397a, eVar2.b, bVar.c.f()), format, i, obj, bVar.b);
    }

    private static com.google.android.exoplayer2.source.a.c a(b bVar, com.google.android.exoplayer2.upstream.e eVar, Format format, int i, Object obj, int i2, int i3) {
        com.google.android.exoplayer2.source.dash.manifest.e a2;
        com.google.android.exoplayer2.source.dash.manifest.f fVar = bVar.c;
        long a3 = bVar.a(i2);
        com.google.android.exoplayer2.source.dash.manifest.e c = bVar.c(i2);
        String str = fVar.d;
        if (bVar.b == null) {
            return new com.google.android.exoplayer2.source.a.m(eVar, new g(c.a(str), c.f3397a, c.b, fVar.f()), format, i, obj, a3, bVar.b(i2), i2, bVar.f3390a, format);
        }
        int i4 = 1;
        int i5 = 1;
        while (i5 < i3 && (a2 = c.a(bVar.c(i2 + i5), str)) != null) {
            i4++;
            i5++;
            c = a2;
        }
        return new i(eVar, new g(c.a(str), c.f3397a, c.b, fVar.f()), format, i, obj, a3, bVar.b((i2 + i4) - 1), i2, i4, -fVar.e, bVar.b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: DefaultDashChunkSource.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3390a;
        public final com.google.android.exoplayer2.source.a.d b;
        public com.google.android.exoplayer2.source.dash.manifest.f c;
        public d d;
        private long e;
        private int f;

        public b(long j, com.google.android.exoplayer2.source.dash.manifest.f fVar, boolean z, boolean z2, int i) {
            com.google.android.exoplayer2.extractor.f eVar;
            this.e = j;
            this.c = fVar;
            this.f3390a = i;
            String str = fVar.c.e;
            if (b(str)) {
                this.b = null;
            } else {
                if ("application/x-rawcc".equals(str)) {
                    eVar = new com.google.android.exoplayer2.extractor.e.a(fVar.c);
                } else if (a(str)) {
                    eVar = new com.google.android.exoplayer2.extractor.a.d();
                } else {
                    int i2 = z ? 4 : 0;
                    eVar = new com.google.android.exoplayer2.extractor.c.e(z2 ? i2 | 8 : i2);
                }
                this.b = new com.google.android.exoplayer2.source.a.d(eVar, fVar.c);
            }
            this.d = fVar.e();
        }

        public void a(long j, com.google.android.exoplayer2.source.dash.manifest.f fVar) throws BehindLiveWindowException {
            int a2;
            d e = this.c.e();
            d e2 = fVar.e();
            this.e = j;
            this.c = fVar;
            if (e != null) {
                this.d = e2;
                if (e.b() && (a2 = e.a(this.e)) != 0) {
                    int a3 = (a2 + e.a()) - 1;
                    long a4 = e.a(a3) + e.a(a3, this.e);
                    int a5 = e2.a();
                    long a6 = e2.a(a5);
                    if (a4 == a6) {
                        this.f += (a3 + 1) - a5;
                    } else if (a4 < a6) {
                        throw new BehindLiveWindowException();
                    } else {
                        this.f = (e.a(a6, this.e) - a5) + this.f;
                    }
                }
            }
        }

        public int a() {
            return this.d.a() + this.f;
        }

        public int b() {
            return this.d.a(this.e);
        }

        public long a(int i) {
            return this.d.a(i - this.f);
        }

        public long b(int i) {
            return a(i) + this.d.a(i - this.f, this.e);
        }

        public int a(long j) {
            return this.d.a(j, this.e) + this.f;
        }

        public com.google.android.exoplayer2.source.dash.manifest.e c(int i) {
            return this.d.b(i - this.f);
        }

        private static boolean a(String str) {
            return str.startsWith("video/webm") || str.startsWith("audio/webm") || str.startsWith("application/webm");
        }

        private static boolean b(String str) {
            return com.google.android.exoplayer2.util.i.c(str) || "application/ttml+xml".equals(str);
        }
    }
}
