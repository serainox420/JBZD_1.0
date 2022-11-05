package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.v;
/* compiled from: ChunkIndex.java */
/* loaded from: classes2.dex */
public final class a implements m {

    /* renamed from: a  reason: collision with root package name */
    public final int f3201a;
    public final int[] b;
    public final long[] c;
    public final long[] d;
    public final long[] e;
    private final long f;

    public a(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.b = iArr;
        this.c = jArr;
        this.d = jArr2;
        this.e = jArr3;
        this.f3201a = iArr.length;
        this.f = jArr2[this.f3201a - 1] + jArr3[this.f3201a - 1];
    }

    public int a(long j) {
        return v.a(this.e, j, true, true);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b() {
        return this.f;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public long b(long j) {
        return this.c[a(j)];
    }
}
