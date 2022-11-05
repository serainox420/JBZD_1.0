package com.google.android.exoplayer2.extractor.b;

import com.google.android.exoplayer2.extractor.b.b;
/* compiled from: ConstantBitrateSeeker.java */
/* loaded from: classes2.dex */
final class a implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final long f3210a;
    private final int b;
    private final long c;

    public a(long j, int i, long j2) {
        this.f3210a = j;
        this.b = i;
        this.c = j2 == -1 ? -9223372036854775807L : a(j2);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public boolean a() {
        return this.c != -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b(long j) {
        if (this.c == -9223372036854775807L) {
            return 0L;
        }
        return this.f3210a + ((this.b * j) / 8000000);
    }

    @Override // com.google.android.exoplayer2.extractor.b.b.a
    public long a(long j) {
        return ((Math.max(0L, j - this.f3210a) * 1000000) * 8) / this.b;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b() {
        return this.c;
    }
}
