package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.n;
/* compiled from: SinglePeriodTimeline.java */
/* loaded from: classes2.dex */
public final class k extends n {
    private static final Object b = new Object();
    private final long c;
    private final long d;
    private final long e;
    private final long f;
    private final boolean g;
    private final boolean h;

    public k(long j, boolean z) {
        this(j, j, 0L, 0L, z, false);
    }

    public k(long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = j4;
        this.g = z;
        this.h = z2;
    }

    @Override // com.google.android.exoplayer2.n
    public int b() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.n
    public n.b a(int i, n.b bVar, boolean z, long j) {
        com.google.android.exoplayer2.util.a.a(i, 0, 1);
        Object obj = z ? b : null;
        long j2 = this.f;
        if (this.h) {
            j2 += j;
            if (j2 > this.d) {
                j2 = -9223372036854775807L;
            }
        }
        return bVar.a(obj, -9223372036854775807L, -9223372036854775807L, this.g, this.h, j2, this.d, 0, 0, this.e);
    }

    @Override // com.google.android.exoplayer2.n
    public int c() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.n
    public n.a a(int i, n.a aVar, boolean z) {
        com.google.android.exoplayer2.util.a.a(i, 0, 1);
        Object obj = z ? b : null;
        return aVar.a(obj, obj, 0, this.c, -this.e);
    }

    @Override // com.google.android.exoplayer2.n
    public int a(Object obj) {
        return b.equals(obj) ? 0 : -1;
    }
}
