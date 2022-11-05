package com.google.android.exoplayer2.source.b;

import android.os.Handler;
import android.text.TextUtils;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.a;
import com.google.android.exoplayer2.source.b.a.a;
import com.google.android.exoplayer2.source.b.a.e;
import com.google.android.exoplayer2.source.b.j;
import com.google.android.exoplayer2.source.f;
import com.google.android.exoplayer2.source.m;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
/* compiled from: HlsMediaPeriod.java */
/* loaded from: classes2.dex */
public final class g implements e.b, j.a, com.google.android.exoplayer2.source.f {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.source.b.a.e f3364a;
    private final d b;
    private final int c;
    private final a.C0138a d;
    private final com.google.android.exoplayer2.upstream.b e;
    private final IdentityHashMap<com.google.android.exoplayer2.source.i, Integer> f = new IdentityHashMap<>();
    private final k g = new k();
    private final Handler h = new Handler();
    private final long i;
    private f.a j;
    private int k;
    private boolean l;
    private m m;
    private j[] n;
    private j[] o;
    private com.google.android.exoplayer2.source.b p;

    public g(com.google.android.exoplayer2.source.b.a.e eVar, d dVar, int i, a.C0138a c0138a, com.google.android.exoplayer2.upstream.b bVar, long j) {
        this.f3364a = eVar;
        this.b = dVar;
        this.c = i;
        this.d = c0138a;
        this.e = bVar;
        this.i = j;
    }

    public void b() {
        this.f3364a.b(this);
        this.h.removeCallbacksAndMessages(null);
        if (this.n != null) {
            for (j jVar : this.n) {
                jVar.f();
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.f
    public void a(f.a aVar) {
        this.f3364a.a(this);
        this.j = aVar;
        i();
    }

    @Override // com.google.android.exoplayer2.source.f
    public void c() throws IOException {
        if (this.n != null) {
            for (j jVar : this.n) {
                jVar.c();
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.f
    public m d() {
        return this.m;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long a(com.google.android.exoplayer2.b.f[] fVarArr, boolean[] zArr, com.google.android.exoplayer2.source.i[] iVarArr, boolean[] zArr2, long j) {
        boolean z;
        int[] iArr = new int[fVarArr.length];
        int[] iArr2 = new int[fVarArr.length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= fVarArr.length) {
                break;
            }
            iArr[i2] = iVarArr[i2] == null ? -1 : this.f.get(iVarArr[i2]).intValue();
            iArr2[i2] = -1;
            if (fVarArr[i2] != null) {
                com.google.android.exoplayer2.source.l d = fVarArr[i2].d();
                int i3 = 0;
                while (true) {
                    if (i3 < this.n.length) {
                        if (this.n[i3].d().a(d) == -1) {
                            i3++;
                        } else {
                            iArr2[i2] = i3;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            i = i2 + 1;
        }
        boolean z2 = false;
        this.f.clear();
        com.google.android.exoplayer2.source.i[] iVarArr2 = new com.google.android.exoplayer2.source.i[fVarArr.length];
        com.google.android.exoplayer2.source.i[] iVarArr3 = new com.google.android.exoplayer2.source.i[fVarArr.length];
        com.google.android.exoplayer2.b.f[] fVarArr2 = new com.google.android.exoplayer2.b.f[fVarArr.length];
        ArrayList arrayList = new ArrayList(this.n.length);
        int i4 = 0;
        while (true) {
            int i5 = i4;
            z = z2;
            if (i5 >= this.n.length) {
                break;
            }
            for (int i6 = 0; i6 < fVarArr.length; i6++) {
                iVarArr3[i6] = iArr[i6] == i5 ? iVarArr[i6] : null;
                fVarArr2[i6] = iArr2[i6] == i5 ? fVarArr[i6] : null;
            }
            z2 = z | this.n[i5].a(fVarArr2, zArr, iVarArr3, zArr2, !this.l);
            boolean z3 = false;
            for (int i7 = 0; i7 < fVarArr.length; i7++) {
                if (iArr2[i7] == i5) {
                    com.google.android.exoplayer2.util.a.b(iVarArr3[i7] != null);
                    iVarArr2[i7] = iVarArr3[i7];
                    z3 = true;
                    this.f.put(iVarArr3[i7], Integer.valueOf(i5));
                } else if (iArr[i7] == i5) {
                    com.google.android.exoplayer2.util.a.b(iVarArr3[i7] == null);
                }
            }
            if (z3) {
                arrayList.add(this.n[i5]);
            }
            i4 = i5 + 1;
        }
        System.arraycopy(iVarArr2, 0, iVarArr, 0, iVarArr2.length);
        this.o = new j[arrayList.size()];
        arrayList.toArray(this.o);
        if (this.o.length > 0) {
            this.o[0].a(true);
            for (int i8 = 1; i8 < this.o.length; i8++) {
                this.o[i8].a(false);
            }
        }
        this.p = new com.google.android.exoplayer2.source.b(this.o);
        if (this.l && z) {
            c(j);
            for (int i9 = 0; i9 < fVarArr.length; i9++) {
                if (iVarArr[i9] != null) {
                    zArr2[i9] = true;
                }
            }
        }
        this.l = true;
        return j;
    }

    @Override // com.google.android.exoplayer2.source.f
    public void b(long j) {
    }

    @Override // com.google.android.exoplayer2.source.f, com.google.android.exoplayer2.source.j
    public boolean a(long j) {
        return this.p.a(j);
    }

    @Override // com.google.android.exoplayer2.source.f, com.google.android.exoplayer2.source.j
    public long b_() {
        return this.p.b_();
    }

    @Override // com.google.android.exoplayer2.source.f
    public long e() {
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long f() {
        long j = Long.MAX_VALUE;
        for (j jVar : this.o) {
            long e = jVar.e();
            if (e != Long.MIN_VALUE) {
                j = Math.min(j, e);
            }
        }
        if (j == Clock.MAX_TIME) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long c(long j) {
        this.g.a();
        for (j jVar : this.o) {
            jVar.b(j);
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.b.j.a
    public void g() {
        int i = this.k - 1;
        this.k = i;
        if (i <= 0) {
            int i2 = 0;
            for (j jVar : this.n) {
                i2 += jVar.d().b;
            }
            com.google.android.exoplayer2.source.l[] lVarArr = new com.google.android.exoplayer2.source.l[i2];
            j[] jVarArr = this.n;
            int length = jVarArr.length;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                j jVar2 = jVarArr[i3];
                int i5 = jVar2.d().b;
                int i6 = i4;
                int i7 = 0;
                while (i7 < i5) {
                    lVarArr[i6] = jVar2.d().a(i7);
                    i7++;
                    i6++;
                }
                i3++;
                i4 = i6;
            }
            this.m = new m(lVarArr);
            this.j.a((com.google.android.exoplayer2.source.f) this);
        }
    }

    @Override // com.google.android.exoplayer2.source.b.j.a
    public void a(a.C0139a c0139a) {
        this.f3364a.c(c0139a);
    }

    @Override // com.google.android.exoplayer2.source.j.a
    public void a(j jVar) {
        if (this.m != null) {
            this.j.a((f.a) this);
        }
    }

    @Override // com.google.android.exoplayer2.source.b.a.e.b
    public void h() {
        j();
    }

    @Override // com.google.android.exoplayer2.source.b.a.e.b
    public void a(a.C0139a c0139a, long j) {
        for (j jVar : this.n) {
            jVar.a(c0139a, j);
        }
        j();
    }

    private void i() {
        ArrayList arrayList;
        com.google.android.exoplayer2.source.b.a.a b = this.f3364a.b();
        ArrayList arrayList2 = new ArrayList(b.f3352a);
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < arrayList2.size(); i++) {
            a.C0139a c0139a = (a.C0139a) arrayList2.get(i);
            if (c0139a.b.k > 0 || a(c0139a, "avc")) {
                arrayList3.add(c0139a);
            } else if (a(c0139a, "mp4a")) {
                arrayList4.add(c0139a);
            }
        }
        if (!arrayList3.isEmpty()) {
            arrayList = arrayList3;
        } else {
            if (arrayList4.size() < arrayList2.size()) {
                arrayList2.removeAll(arrayList4);
            }
            arrayList = arrayList2;
        }
        List<a.C0139a> list = b.b;
        List<a.C0139a> list2 = b.c;
        this.n = new j[list.size() + 1 + list2.size()];
        this.k = this.n.length;
        com.google.android.exoplayer2.util.a.a(!arrayList.isEmpty());
        a.C0139a[] c0139aArr = new a.C0139a[arrayList.size()];
        arrayList.toArray(c0139aArr);
        j a2 = a(0, c0139aArr, b.d, b.e);
        this.n[0] = a2;
        a2.a(true);
        a2.b();
        int i2 = 0;
        int i3 = 1;
        while (i2 < list.size()) {
            j a3 = a(1, new a.C0139a[]{list.get(i2)}, null, Collections.emptyList());
            this.n[i3] = a3;
            a3.b();
            i2++;
            i3++;
        }
        int i4 = 0;
        while (i4 < list2.size()) {
            a.C0139a c0139a2 = list2.get(i4);
            j a4 = a(3, new a.C0139a[]{c0139a2}, null, Collections.emptyList());
            a4.b(c0139a2.b);
            this.n[i3] = a4;
            i4++;
            i3++;
        }
    }

    private j a(int i, a.C0139a[] c0139aArr, Format format, List<Format> list) {
        return new j(i, this, new c(this.f3364a, c0139aArr, this.b, this.g, list), this.e, this.i, format, this.c, this.d);
    }

    private void j() {
        if (this.m != null) {
            this.j.a((f.a) this);
            return;
        }
        for (j jVar : this.n) {
            jVar.b();
        }
    }

    private static boolean a(a.C0139a c0139a, String str) {
        String str2 = c0139a.b.c;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        String[] split = str2.split("(\\s*,\\s*)|(\\s*$)");
        for (String str3 : split) {
            if (str3.startsWith(str)) {
                return true;
            }
        }
        return false;
    }
}
