package com.google.android.exoplayer2.b;

import com.google.android.exoplayer2.source.l;
/* compiled from: FixedTrackSelection.java */
/* loaded from: classes2.dex */
public final class d extends b {
    private final int d;
    private final Object e;

    public d(l lVar, int i) {
        this(lVar, i, 0, null);
    }

    public d(l lVar, int i, int i2, Object obj) {
        super(lVar, i);
        this.d = i2;
        this.e = obj;
    }

    @Override // com.google.android.exoplayer2.b.f
    public void a(long j) {
    }

    @Override // com.google.android.exoplayer2.b.f
    public int a() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.b.f
    public int b() {
        return this.d;
    }

    @Override // com.google.android.exoplayer2.b.f
    public Object c() {
        return this.e;
    }
}
