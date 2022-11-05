package com.google.android.exoplayer2.source.smoothstreaming;

import android.util.Base64;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.extractor.c.k;
import com.google.android.exoplayer2.source.a;
import com.google.android.exoplayer2.source.f;
import com.google.android.exoplayer2.source.i;
import com.google.android.exoplayer2.source.j;
import com.google.android.exoplayer2.source.l;
import com.google.android.exoplayer2.source.m;
import com.google.android.exoplayer2.source.smoothstreaming.b;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.a;
import com.google.android.exoplayer2.upstream.o;
import java.io.IOException;
import java.util.ArrayList;
/* compiled from: SsMediaPeriod.java */
/* loaded from: classes2.dex */
final class c implements f, j.a<com.google.android.exoplayer2.source.a.f<b>> {

    /* renamed from: a  reason: collision with root package name */
    private final b.a f3411a;
    private final o b;
    private final int c;
    private final a.C0138a d;
    private final com.google.android.exoplayer2.upstream.b e;
    private final m f;
    private final k[] g;
    private f.a h;
    private com.google.android.exoplayer2.source.smoothstreaming.manifest.a i;
    private com.google.android.exoplayer2.source.a.f<b>[] j;
    private com.google.android.exoplayer2.source.b k;

    public c(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, b.a aVar2, int i, a.C0138a c0138a, o oVar, com.google.android.exoplayer2.upstream.b bVar) {
        this.f3411a = aVar2;
        this.b = oVar;
        this.c = i;
        this.d = c0138a;
        this.e = bVar;
        this.f = b(aVar);
        a.C0144a c0144a = aVar.e;
        if (c0144a != null) {
            this.g = new k[]{new k(true, 8, a(c0144a.b))};
        } else {
            this.g = null;
        }
        this.i = aVar;
        this.j = a(0);
        this.k = new com.google.android.exoplayer2.source.b(this.j);
    }

    public void a(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar) {
        this.i = aVar;
        for (com.google.android.exoplayer2.source.a.f<b> fVar : this.j) {
            fVar.c().a(aVar);
        }
        this.h.a((f.a) this);
    }

    public void b() {
        for (com.google.android.exoplayer2.source.a.f<b> fVar : this.j) {
            fVar.e();
        }
    }

    @Override // com.google.android.exoplayer2.source.f
    public void a(f.a aVar) {
        this.h = aVar;
        aVar.a((f) this);
    }

    @Override // com.google.android.exoplayer2.source.f
    public void c() throws IOException {
        this.b.d();
    }

    @Override // com.google.android.exoplayer2.source.f
    public m d() {
        return this.f;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long a(com.google.android.exoplayer2.b.f[] fVarArr, boolean[] zArr, i[] iVarArr, boolean[] zArr2, long j) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < fVarArr.length) {
                if (iVarArr[i2] != null) {
                    com.google.android.exoplayer2.source.a.f fVar = (com.google.android.exoplayer2.source.a.f) iVarArr[i2];
                    if (fVarArr[i2] == null || !zArr[i2]) {
                        fVar.e();
                        iVarArr[i2] = null;
                    } else {
                        arrayList.add(fVar);
                    }
                }
                if (iVarArr[i2] == null && fVarArr[i2] != null) {
                    com.google.android.exoplayer2.source.a.f<b> a2 = a(fVarArr[i2], j);
                    arrayList.add(a2);
                    iVarArr[i2] = a2;
                    zArr2[i2] = true;
                }
                i = i2 + 1;
            } else {
                this.j = a(arrayList.size());
                arrayList.toArray(this.j);
                this.k = new com.google.android.exoplayer2.source.b(this.j);
                return j;
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.f
    public void b(long j) {
    }

    @Override // com.google.android.exoplayer2.source.f, com.google.android.exoplayer2.source.j
    public boolean a(long j) {
        return this.k.a(j);
    }

    @Override // com.google.android.exoplayer2.source.f, com.google.android.exoplayer2.source.j
    public long b_() {
        return this.k.b_();
    }

    @Override // com.google.android.exoplayer2.source.f
    public long e() {
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long f() {
        long j = Long.MAX_VALUE;
        for (com.google.android.exoplayer2.source.a.f<b> fVar : this.j) {
            long d = fVar.d();
            if (d != Long.MIN_VALUE) {
                j = Math.min(j, d);
            }
        }
        if (j == Clock.MAX_TIME) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long c(long j) {
        for (com.google.android.exoplayer2.source.a.f<b> fVar : this.j) {
            fVar.c(j);
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.j.a
    public void a(com.google.android.exoplayer2.source.a.f<b> fVar) {
        this.h.a((f.a) this);
    }

    private com.google.android.exoplayer2.source.a.f<b> a(com.google.android.exoplayer2.b.f fVar, long j) {
        int a2 = this.f.a(fVar.d());
        return new com.google.android.exoplayer2.source.a.f<>(this.i.f[a2].f3422a, null, this.f3411a.a(this.b, this.i, a2, fVar, this.g), this, this.e, j, this.c, this.d);
    }

    private static m b(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar) {
        l[] lVarArr = new l[aVar.f.length];
        for (int i = 0; i < aVar.f.length; i++) {
            lVarArr[i] = new l(aVar.f[i].j);
        }
        return new m(lVarArr);
    }

    private static com.google.android.exoplayer2.source.a.f<b>[] a(int i) {
        return new com.google.android.exoplayer2.source.a.f[i];
    }

    private static byte[] a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i += 2) {
            sb.append((char) bArr[i]);
        }
        String sb2 = sb.toString();
        byte[] decode = Base64.decode(sb2.substring(sb2.indexOf("<KID>") + 5, sb2.indexOf("</KID>")), 0);
        a(decode, 0, 3);
        a(decode, 1, 2);
        a(decode, 4, 5);
        a(decode, 6, 7);
        return decode;
    }

    private static void a(byte[] bArr, int i, int i2) {
        byte b = bArr[i];
        bArr[i] = bArr[i2];
        bArr[i2] = b;
    }
}
