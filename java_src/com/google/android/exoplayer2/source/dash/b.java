package com.google.android.exoplayer2.source.dash;

import android.util.Pair;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.source.a;
import com.google.android.exoplayer2.source.a.f;
import com.google.android.exoplayer2.source.dash.a;
import com.google.android.exoplayer2.source.dash.manifest.g;
import com.google.android.exoplayer2.source.f;
import com.google.android.exoplayer2.source.i;
import com.google.android.exoplayer2.source.j;
import com.google.android.exoplayer2.source.l;
import com.google.android.exoplayer2.source.m;
import com.google.android.exoplayer2.upstream.o;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
/* compiled from: DashMediaPeriod.java */
/* loaded from: classes2.dex */
final class b implements com.google.android.exoplayer2.source.f, j.a<com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a>> {

    /* renamed from: a  reason: collision with root package name */
    final int f3379a;
    private final a.InterfaceC0141a b;
    private final int c;
    private final a.C0138a d;
    private final long e;
    private final o f;
    private final com.google.android.exoplayer2.upstream.b g;
    private final m h;
    private final a[] i;
    private f.a j;
    private com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a>[] k = a(0);
    private com.google.android.exoplayer2.source.b l = new com.google.android.exoplayer2.source.b(this.k);
    private com.google.android.exoplayer2.source.dash.manifest.b m;
    private int n;
    private List<com.google.android.exoplayer2.source.dash.manifest.a> o;

    public b(int i, com.google.android.exoplayer2.source.dash.manifest.b bVar, int i2, a.InterfaceC0141a interfaceC0141a, int i3, a.C0138a c0138a, long j, o oVar, com.google.android.exoplayer2.upstream.b bVar2) {
        this.f3379a = i;
        this.m = bVar;
        this.n = i2;
        this.b = interfaceC0141a;
        this.c = i3;
        this.d = c0138a;
        this.e = j;
        this.f = oVar;
        this.g = bVar2;
        this.o = bVar.a(i2).c;
        Pair<m, a[]> a2 = a(this.o);
        this.h = (m) a2.first;
        this.i = (a[]) a2.second;
    }

    public void a(com.google.android.exoplayer2.source.dash.manifest.b bVar, int i) {
        this.m = bVar;
        this.n = i;
        this.o = bVar.a(i).c;
        if (this.k != null) {
            for (com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a> fVar : this.k) {
                fVar.c().a(bVar, i);
            }
            this.j.a((f.a) this);
        }
    }

    public void b() {
        for (com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a> fVar : this.k) {
            fVar.e();
        }
    }

    @Override // com.google.android.exoplayer2.source.f
    public void a(f.a aVar) {
        this.j = aVar;
        aVar.a((com.google.android.exoplayer2.source.f) this);
    }

    @Override // com.google.android.exoplayer2.source.f
    public void c() throws IOException {
        this.f.d();
    }

    @Override // com.google.android.exoplayer2.source.f
    public m d() {
        return this.h;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long a(com.google.android.exoplayer2.b.f[] fVarArr, boolean[] zArr, i[] iVarArr, boolean[] zArr2, long j) {
        int a2;
        boolean z;
        int a3;
        int size = this.o.size();
        HashMap hashMap = new HashMap();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= fVarArr.length) {
                break;
            }
            if (iVarArr[i2] instanceof com.google.android.exoplayer2.source.a.f) {
                com.google.android.exoplayer2.source.a.f fVar = (com.google.android.exoplayer2.source.a.f) iVarArr[i2];
                if (fVarArr[i2] == null || !zArr[i2]) {
                    fVar.e();
                    iVarArr[i2] = null;
                } else {
                    hashMap.put(Integer.valueOf(this.h.a(fVarArr[i2].d())), fVar);
                }
            }
            if (iVarArr[i2] == null && fVarArr[i2] != null && (a3 = this.h.a(fVarArr[i2].d())) < size) {
                com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a> a4 = a(a3, fVarArr[i2], j);
                hashMap.put(Integer.valueOf(a3), a4);
                iVarArr[i2] = a4;
                zArr2[i2] = true;
            }
            i = i2 + 1;
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < fVarArr.length) {
                if (((iVarArr[i4] instanceof f.a) || (iVarArr[i4] instanceof com.google.android.exoplayer2.source.c)) && (fVarArr[i4] == null || !zArr[i4])) {
                    a(iVarArr[i4]);
                    iVarArr[i4] = null;
                }
                if (fVarArr[i4] != null && (a2 = this.h.a(fVarArr[i4].d())) >= size) {
                    a aVar = this.i[a2 - size];
                    com.google.android.exoplayer2.source.a.f fVar2 = (com.google.android.exoplayer2.source.a.f) hashMap.get(Integer.valueOf(aVar.f3380a));
                    i iVar = iVarArr[i4];
                    if (fVar2 == null) {
                        z = iVar instanceof com.google.android.exoplayer2.source.c;
                    } else {
                        z = (iVar instanceof f.a) && ((f.a) iVar).f3349a == fVar2;
                    }
                    if (!z) {
                        a(iVar);
                        iVarArr[i4] = fVar2 == null ? new com.google.android.exoplayer2.source.c() : fVar2.a(j, aVar.b);
                        zArr2[i4] = true;
                    }
                }
                i3 = i4 + 1;
            } else {
                this.k = a(hashMap.size());
                hashMap.values().toArray(this.k);
                this.l = new com.google.android.exoplayer2.source.b(this.k);
                return j;
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.f
    public void b(long j) {
        for (com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a> fVar : this.k) {
            fVar.b(j);
        }
    }

    @Override // com.google.android.exoplayer2.source.f, com.google.android.exoplayer2.source.j
    public boolean a(long j) {
        return this.l.a(j);
    }

    @Override // com.google.android.exoplayer2.source.f, com.google.android.exoplayer2.source.j
    public long b_() {
        return this.l.b_();
    }

    @Override // com.google.android.exoplayer2.source.f
    public long e() {
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long f() {
        long j = Long.MAX_VALUE;
        for (com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a> fVar : this.k) {
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
        for (com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a> fVar : this.k) {
            fVar.c(j);
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.j.a
    public void a(com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a> fVar) {
        this.j.a((f.a) this);
    }

    private static Pair<m, a[]> a(List<com.google.android.exoplayer2.source.dash.manifest.a> list) {
        int i;
        int size = list.size();
        int b = b(list);
        l[] lVarArr = new l[size + b];
        a[] aVarArr = new a[b];
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            com.google.android.exoplayer2.source.dash.manifest.a aVar = list.get(i2);
            List<com.google.android.exoplayer2.source.dash.manifest.f> list2 = aVar.c;
            Format[] formatArr = new Format[list2.size()];
            for (int i4 = 0; i4 < formatArr.length; i4++) {
                formatArr[i4] = list2.get(i4).c;
            }
            lVarArr[i2] = new l(formatArr);
            if (a(aVar)) {
                lVarArr[size + i3] = new l(Format.a(aVar.f3392a + ":emsg", "application/x-emsg", null, -1, null));
                aVarArr[i3] = new a(i2, 4);
                i = i3 + 1;
            } else {
                i = i3;
            }
            if (b(aVar)) {
                lVarArr[size + i] = new l(Format.a(aVar.f3392a + ":cea608", "application/cea-608", (String) null, -1, 0, (String) null, (DrmInitData) null));
                aVarArr[i] = new a(i2, 3);
                i++;
            }
            i2++;
            i3 = i;
        }
        return Pair.create(new m(lVarArr), aVarArr);
    }

    private com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a> a(int i, com.google.android.exoplayer2.b.f fVar, long j) {
        int i2;
        com.google.android.exoplayer2.source.dash.manifest.a aVar = this.o.get(i);
        int[] iArr = new int[2];
        boolean a2 = a(aVar);
        if (!a2) {
            i2 = 0;
        } else {
            i2 = 1;
            iArr[0] = 4;
        }
        boolean b = b(aVar);
        if (b) {
            iArr[i2] = 3;
            i2++;
        }
        return new com.google.android.exoplayer2.source.a.f<>(aVar.b, i2 < iArr.length ? Arrays.copyOf(iArr, i2) : iArr, this.b.a(this.f, this.m, this.n, i, fVar, this.e, a2, b), this, this.g, j, this.c, this.d);
    }

    private static int b(List<com.google.android.exoplayer2.source.dash.manifest.a> list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            com.google.android.exoplayer2.source.dash.manifest.a aVar = list.get(i2);
            if (a(aVar)) {
                i++;
            }
            if (b(aVar)) {
                i++;
            }
        }
        return i;
    }

    private static boolean a(com.google.android.exoplayer2.source.dash.manifest.a aVar) {
        List<com.google.android.exoplayer2.source.dash.manifest.f> list = aVar.c;
        for (int i = 0; i < list.size(); i++) {
            if (!list.get(i).f.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    private static boolean b(com.google.android.exoplayer2.source.dash.manifest.a aVar) {
        List<g> list = aVar.d;
        for (int i = 0; i < list.size(); i++) {
            if ("urn:scte:dash:cc:cea-608:2015".equals(list.get(i).f3399a)) {
                return true;
            }
        }
        return false;
    }

    private static com.google.android.exoplayer2.source.a.f<com.google.android.exoplayer2.source.dash.a>[] a(int i) {
        return new com.google.android.exoplayer2.source.a.f[i];
    }

    private static void a(i iVar) {
        if (iVar instanceof f.a) {
            ((f.a) iVar).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DashMediaPeriod.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3380a;
        public final int b;

        public a(int i, int i2) {
            this.f3380a = i;
            this.b = i2;
        }
    }
}
