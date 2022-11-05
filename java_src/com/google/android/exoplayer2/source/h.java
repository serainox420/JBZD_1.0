package com.google.android.exoplayer2.source;

import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.source.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
/* compiled from: MergingMediaPeriod.java */
/* loaded from: classes2.dex */
final class h implements f, f.a {

    /* renamed from: a  reason: collision with root package name */
    public final f[] f3406a;
    private final IdentityHashMap<i, Integer> b = new IdentityHashMap<>();
    private f.a c;
    private int d;
    private m e;
    private f[] f;
    private j g;

    public h(f... fVarArr) {
        this.f3406a = fVarArr;
    }

    @Override // com.google.android.exoplayer2.source.f
    public void a(f.a aVar) {
        this.c = aVar;
        this.d = this.f3406a.length;
        for (f fVar : this.f3406a) {
            fVar.a(this);
        }
    }

    @Override // com.google.android.exoplayer2.source.f
    public void c() throws IOException {
        for (f fVar : this.f3406a) {
            fVar.c();
        }
    }

    @Override // com.google.android.exoplayer2.source.f
    public m d() {
        return this.e;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long a(com.google.android.exoplayer2.b.f[] fVarArr, boolean[] zArr, i[] iVarArr, boolean[] zArr2, long j) {
        int[] iArr = new int[fVarArr.length];
        int[] iArr2 = new int[fVarArr.length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= fVarArr.length) {
                break;
            }
            iArr[i2] = iVarArr[i2] == null ? -1 : this.b.get(iVarArr[i2]).intValue();
            iArr2[i2] = -1;
            if (fVarArr[i2] != null) {
                l d = fVarArr[i2].d();
                int i3 = 0;
                while (true) {
                    if (i3 < this.f3406a.length) {
                        if (this.f3406a[i3].d().a(d) == -1) {
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
        this.b.clear();
        i[] iVarArr2 = new i[fVarArr.length];
        i[] iVarArr3 = new i[fVarArr.length];
        com.google.android.exoplayer2.b.f[] fVarArr2 = new com.google.android.exoplayer2.b.f[fVarArr.length];
        ArrayList arrayList = new ArrayList(this.f3406a.length);
        int i4 = 0;
        long j2 = j;
        while (i4 < this.f3406a.length) {
            for (int i5 = 0; i5 < fVarArr.length; i5++) {
                iVarArr3[i5] = iArr[i5] == i4 ? iVarArr[i5] : null;
                fVarArr2[i5] = iArr2[i5] == i4 ? fVarArr[i5] : null;
            }
            long a2 = this.f3406a[i4].a(fVarArr2, zArr, iVarArr3, zArr2, j2);
            if (i4 == 0) {
                j2 = a2;
            } else if (a2 != j2) {
                throw new IllegalStateException("Children enabled at different positions");
            }
            boolean z = false;
            for (int i6 = 0; i6 < fVarArr.length; i6++) {
                if (iArr2[i6] == i4) {
                    com.google.android.exoplayer2.util.a.b(iVarArr3[i6] != null);
                    iVarArr2[i6] = iVarArr3[i6];
                    z = true;
                    this.b.put(iVarArr3[i6], Integer.valueOf(i4));
                } else if (iArr[i6] == i4) {
                    com.google.android.exoplayer2.util.a.b(iVarArr3[i6] == null);
                }
            }
            if (z) {
                arrayList.add(this.f3406a[i4]);
            }
            i4++;
        }
        System.arraycopy(iVarArr2, 0, iVarArr, 0, iVarArr2.length);
        this.f = new f[arrayList.size()];
        arrayList.toArray(this.f);
        this.g = new b(this.f);
        return j2;
    }

    @Override // com.google.android.exoplayer2.source.f
    public void b(long j) {
        for (f fVar : this.f) {
            fVar.b(j);
        }
    }

    @Override // com.google.android.exoplayer2.source.f, com.google.android.exoplayer2.source.j
    public boolean a(long j) {
        return this.g.a(j);
    }

    @Override // com.google.android.exoplayer2.source.f, com.google.android.exoplayer2.source.j
    public long b_() {
        return this.g.b_();
    }

    @Override // com.google.android.exoplayer2.source.f
    public long e() {
        f[] fVarArr;
        long e = this.f3406a[0].e();
        for (int i = 1; i < this.f3406a.length; i++) {
            if (this.f3406a[i].e() != -9223372036854775807L) {
                throw new IllegalStateException("Child reported discontinuity");
            }
        }
        if (e != -9223372036854775807L) {
            for (f fVar : this.f) {
                if (fVar != this.f3406a[0] && fVar.c(e) != e) {
                    throw new IllegalStateException("Children seeked to different positions");
                }
            }
        }
        return e;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long f() {
        long j = Long.MAX_VALUE;
        for (f fVar : this.f) {
            long f = fVar.f();
            if (f != Long.MIN_VALUE) {
                j = Math.min(j, f);
            }
        }
        if (j == Clock.MAX_TIME) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.f
    public long c(long j) {
        long c = this.f[0].c(j);
        for (int i = 1; i < this.f.length; i++) {
            if (this.f[i].c(c) != c) {
                throw new IllegalStateException("Children seeked to different positions");
            }
        }
        return c;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.source.f.a
    public void a(f fVar) {
        int i = this.d - 1;
        this.d = i;
        if (i <= 0) {
            int i2 = 0;
            for (f fVar2 : this.f3406a) {
                i2 += fVar2.d().b;
            }
            l[] lVarArr = new l[i2];
            f[] fVarArr = this.f3406a;
            int length = fVarArr.length;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                m d = fVarArr[i3].d();
                int i5 = d.b;
                int i6 = i4;
                int i7 = 0;
                while (i7 < i5) {
                    lVarArr[i6] = d.a(i7);
                    i7++;
                    i6++;
                }
                i3++;
                i4 = i6;
            }
            this.e = new m(lVarArr);
            this.c.a((f) this);
        }
    }

    @Override // com.google.android.exoplayer2.source.j.a
    /* renamed from: b */
    public void a(f fVar) {
        if (this.e != null) {
            this.c.a((f.a) this);
        }
    }
}
