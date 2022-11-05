package com.google.android.exoplayer2.extractor.b;

import com.google.android.exoplayer2.extractor.b.b;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: XingSeeker.java */
/* loaded from: classes2.dex */
final class d implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final long f3213a;
    private final long b;
    private final long c;
    private final long[] d;
    private final long e;
    private final int f;

    public static d a(k kVar, l lVar, long j, long j2) {
        int s;
        int i = kVar.g;
        int i2 = kVar.d;
        long j3 = j + kVar.c;
        int m = lVar.m();
        if ((m & 1) != 1 || (s = lVar.s()) == 0) {
            return null;
        }
        long a2 = v.a(s, i * 1000000, i2);
        if ((m & 6) != 6) {
            return new d(j3, a2, j2);
        }
        long s2 = lVar.s();
        lVar.d(1);
        long[] jArr = new long[99];
        for (int i3 = 0; i3 < 99; i3++) {
            jArr[i3] = lVar.f();
        }
        return new d(j3, a2, j2, jArr, s2, kVar.c);
    }

    private d(long j, long j2, long j3) {
        this(j, j2, j3, null, 0L, 0);
    }

    private d(long j, long j2, long j3, long[] jArr, long j4, int i) {
        this.f3213a = j;
        this.b = j2;
        this.c = j3;
        this.d = jArr;
        this.e = j4;
        this.f = i;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public boolean a() {
        return this.d != null;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b(long j) {
        float f = 256.0f;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (!a()) {
            return this.f3213a;
        }
        float f3 = (((float) j) * 100.0f) / ((float) this.b);
        if (f3 <= BitmapDescriptorFactory.HUE_RED) {
            f = 0.0f;
        } else if (f3 < 100.0f) {
            int i = (int) f3;
            if (i != 0) {
                f2 = (float) this.d[i - 1];
            }
            if (i < 99) {
                f = (float) this.d[i];
            }
            f = ((f - f2) * (f3 - i)) + f2;
        }
        return Math.min(this.f3213a + Math.round(f * 0.00390625d * this.e), this.c != -1 ? this.c - 1 : ((this.f3213a - this.f) + this.e) - 1);
    }

    @Override // com.google.android.exoplayer2.extractor.b.b.a
    public long a(long j) {
        if (!a() || j < this.f3213a) {
            return 0L;
        }
        double d = (256.0d * (j - this.f3213a)) / this.e;
        int a2 = v.a(this.d, (long) d, true, false) + 1;
        long a3 = a(a2);
        long j2 = a2 == 0 ? 0L : this.d[a2 - 1];
        long j3 = a2 == 99 ? 256L : this.d[a2];
        return a3 + (j3 == j2 ? 0L : (long) (((a(a2 + 1) - a3) * (d - j2)) / (j3 - j2)));
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b() {
        return this.b;
    }

    private long a(int i) {
        return (this.b * i) / 100;
    }
}
