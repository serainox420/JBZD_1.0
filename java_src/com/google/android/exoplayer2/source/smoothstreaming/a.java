package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.b.f;
import com.google.android.exoplayer2.extractor.c.j;
import com.google.android.exoplayer2.extractor.c.k;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.a.h;
import com.google.android.exoplayer2.source.a.i;
import com.google.android.exoplayer2.source.a.l;
import com.google.android.exoplayer2.source.smoothstreaming.b;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.a;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.upstream.g;
import com.google.android.exoplayer2.upstream.o;
import java.io.IOException;
/* compiled from: DefaultSsChunkSource.java */
/* loaded from: classes2.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final o f3409a;
    private final int b;
    private final f c;
    private final com.google.android.exoplayer2.source.a.d[] d;
    private final e e;
    private com.google.android.exoplayer2.source.smoothstreaming.manifest.a f;
    private int g;
    private IOException h;

    /* compiled from: DefaultSsChunkSource.java */
    /* renamed from: com.google.android.exoplayer2.source.smoothstreaming.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0143a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        private final e.a f3410a;

        public C0143a(e.a aVar) {
            this.f3410a = aVar;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.b.a
        public b a(o oVar, com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, int i, f fVar, k[] kVarArr) {
            return new a(oVar, aVar, i, fVar, this.f3410a.a(), kVarArr);
        }
    }

    public a(o oVar, com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, int i, f fVar, e eVar, k[] kVarArr) {
        this.f3409a = oVar;
        this.f = aVar;
        this.b = i;
        this.c = fVar;
        this.e = eVar;
        a.b bVar = aVar.f[i];
        this.d = new com.google.android.exoplayer2.source.a.d[fVar.e()];
        for (int i2 = 0; i2 < this.d.length; i2++) {
            int b = fVar.b(i2);
            Format format = bVar.j[b];
            this.d[i2] = new com.google.android.exoplayer2.source.a.d(new com.google.android.exoplayer2.extractor.c.e(3, null, new j(b, bVar.f3422a, bVar.c, -9223372036854775807L, aVar.g, format, 0, kVarArr, bVar.f3422a == 2 ? 4 : 0, null, null)), format);
        }
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.b
    public void a(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar) {
        a.b bVar = this.f.f[this.b];
        int i = bVar.k;
        a.b bVar2 = aVar.f[this.b];
        if (i == 0 || bVar2.k == 0) {
            this.g += i;
        } else {
            long a2 = bVar2.a(0);
            if (bVar.a(i - 1) + bVar.b(i - 1) <= a2) {
                this.g += i;
            } else {
                this.g = bVar.a(a2) + this.g;
            }
        }
        this.f = aVar;
    }

    @Override // com.google.android.exoplayer2.source.a.g
    public void a() throws IOException {
        if (this.h != null) {
            throw this.h;
        }
        this.f3409a.d();
    }

    @Override // com.google.android.exoplayer2.source.a.g
    public final void a(l lVar, long j, com.google.android.exoplayer2.source.a.e eVar) {
        int f;
        if (this.h == null) {
            this.c.a(lVar != null ? lVar.g - j : 0L);
            a.b bVar = this.f.f[this.b];
            if (bVar.k == 0) {
                eVar.b = !this.f.d;
                return;
            }
            if (lVar == null) {
                f = bVar.a(j);
            } else {
                f = lVar.f() - this.g;
                if (f < 0) {
                    this.h = new BehindLiveWindowException();
                    return;
                }
            }
            if (f >= bVar.k) {
                eVar.b = !this.f.d;
                return;
            }
            long a2 = bVar.a(f);
            long b = a2 + bVar.b(f);
            int i = f + this.g;
            int a3 = this.c.a();
            eVar.f3347a = a(this.c.f(), this.e, bVar.a(this.c.b(a3), f), null, i, a2, b, this.c.b(), this.c.c(), this.d[a3]);
        }
    }

    @Override // com.google.android.exoplayer2.source.a.g
    public void a(com.google.android.exoplayer2.source.a.c cVar) {
    }

    @Override // com.google.android.exoplayer2.source.a.g
    public boolean a(com.google.android.exoplayer2.source.a.c cVar, boolean z, Exception exc) {
        return z && h.a(this.c, this.c.a(cVar.c), exc);
    }

    private static l a(Format format, e eVar, Uri uri, String str, int i, long j, long j2, int i2, Object obj, com.google.android.exoplayer2.source.a.d dVar) {
        return new i(eVar, new g(uri, 0L, -1L, str), format, i2, obj, j, j2, i, 1, j, dVar);
    }
}
