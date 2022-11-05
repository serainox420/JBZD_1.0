package com.google.android.exoplayer2.extractor.b;

import com.google.android.exoplayer2.extractor.b.b;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
/* compiled from: VbriSeeker.java */
/* loaded from: classes2.dex */
final class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f3212a;
    private final long[] b;
    private final long c;

    public static c a(k kVar, l lVar, long j, long j2) {
        int s;
        lVar.d(10);
        int m = lVar.m();
        if (m <= 0) {
            return null;
        }
        int i = kVar.d;
        long a2 = v.a(m, (i >= 32000 ? 1152 : 576) * 1000000, i);
        int g = lVar.g();
        int g2 = lVar.g();
        int g3 = lVar.g();
        lVar.d(2);
        long j3 = j + kVar.c;
        long[] jArr = new long[g + 1];
        long[] jArr2 = new long[g + 1];
        jArr[0] = 0;
        jArr2[0] = j3;
        for (int i2 = 1; i2 < jArr.length; i2++) {
            switch (g3) {
                case 1:
                    s = lVar.f();
                    break;
                case 2:
                    s = lVar.g();
                    break;
                case 3:
                    s = lVar.j();
                    break;
                case 4:
                    s = lVar.s();
                    break;
                default:
                    return null;
            }
            j3 += s * g2;
            jArr[i2] = (i2 * a2) / g;
            jArr2[i2] = j2 == -1 ? j3 : Math.min(j2, j3);
        }
        return new c(jArr, jArr2, a2);
    }

    private c(long[] jArr, long[] jArr2, long j) {
        this.f3212a = jArr;
        this.b = jArr2;
        this.c = j;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b(long j) {
        return this.b[v.a(this.f3212a, j, true, true)];
    }

    @Override // com.google.android.exoplayer2.extractor.b.b.a
    public long a(long j) {
        return this.f3212a[v.a(this.b, j, true, true)];
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b() {
        return this.c;
    }
}
