package com.google.android.exoplayer2.source.b;

import java.io.IOException;
/* compiled from: HlsSampleStream.java */
/* loaded from: classes2.dex */
final class i implements com.google.android.exoplayer2.source.i {

    /* renamed from: a  reason: collision with root package name */
    public final int f3366a;
    private final j b;

    public i(j jVar, int i) {
        this.b = jVar;
        this.f3366a = i;
    }

    @Override // com.google.android.exoplayer2.source.i
    public boolean a() {
        return this.b.a(this.f3366a);
    }

    @Override // com.google.android.exoplayer2.source.i
    public void b() throws IOException {
        this.b.g();
    }

    @Override // com.google.android.exoplayer2.source.i
    public int a(com.google.android.exoplayer2.h hVar, com.google.android.exoplayer2.a.e eVar, boolean z) {
        return this.b.a(this.f3366a, hVar, eVar, z);
    }

    @Override // com.google.android.exoplayer2.source.i
    public void a_(long j) {
        this.b.a(this.f3366a, j);
    }
}
